// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i10;

import '../../../features/account/data/data_sources/services/user_service.dart'
    as _i18;
import '../../../features/account/data/data_sources/user_data_source.dart'
    as _i31;
import '../../../features/account/data/data_sources/user_data_source_impl.dart'
    as _i32;
import '../../../features/account/data/repositories/user_repository_impl.dart'
    as _i34;
import '../../../features/account/domain/repositories/user_repository.dart'
    as _i33;
import '../../../features/account/domain/use_cases/get_user_usecase.dart'
    as _i36;
import '../../../features/account/domain/use_cases/update_user_usecase.dart'
    as _i39;
import '../../../features/account/presentation/manager/user_info_manager/user_info_cubit.dart'
    as _i41;
import '../../../features/auth/data/data_sources/services/sign_in_up_service.dart'
    as _i11;
import '../../../features/auth/data/data_sources/sign_in_up_data_source.dart'
    as _i25;
import '../../../features/auth/data/data_sources/sign_in_up_data_source_impl.dart'
    as _i26;
import '../../../features/auth/data/repositories/sign_in_up_repository_impl.dart'
    as _i28;
import '../../../features/auth/domain/repositories/sign_in_up_repository.dart'
    as _i27;
import '../../../features/auth/domain/use_cases/sign_in_usecase.dart' as _i29;
import '../../../features/auth/domain/use_cases/sign_up_usecase.dart' as _i30;
import '../../../features/auth/presentation/manager/sign_manager/sign_cubit.dart'
    as _i38;
import '../../../features/auth/presentation/manager/sign_up_manager/sign_up_cubit.dart'
    as _i12;
import '../../../features/library/data/data_sources/library_data_source.dart'
    as _i20;
import '../../../features/library/data/data_sources/library_data_source_impl.dart'
    as _i21;
import '../../../features/library/data/data_sources/services/ibrary_service.dart'
    as _i9;
import '../../../features/library/data/repositories/library_repository_impl.dart'
    as _i23;
import '../../../features/library/domain/repositories/library_repository.dart'
    as _i22;
import '../../../features/library/domain/use_cases/get_preview_libraray_usecase.dart'
    as _i35;
import '../../../features/library/presentation/manager/library_filter_manager/library_filter_cubit.dart'
    as _i8;
import '../../../features/library/presentation/manager/library_manager/library_cubit.dart'
    as _i37;
import '../../../features/main/presentation/manager/navigion_body_manager/button_navigation_cubit.dart'
    as _i4;
import '../../../features/splash/presentation/manager/user_data_cubit.dart'
    as _i40;
import '../../base/data/local/data_sources/token/token_local_data_source.dart'
    as _i14;
import '../../base/data/local/data_sources/token/token_local_data_source_impl.dart'
    as _i15;
import '../../base/data/repositories/token/token_repository_impl.dart' as _i17;
import '../../base/domain/repositories/token/token_repository.dart' as _i16;
import '../../base/domain/usecase/token/has_token_use_case.dart' as _i19;
import '../../base/domain/usecase/token/reset_token_use_case.dart' as _i24;
import '../../service/internet_connection_checker/internet_connection_checker_cubit.dart'
    as _i7;
import '../../service/language_theme/language_theme_cubit.dart' as _i13;
import '../local/di/local_module.dart' as _i43;
import '../network/di/network_module.dart' as _i42;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final localModule = _$LocalModule();
  final networkModule = _$NetworkModule();
  gh.singletonAsync<_i3.Box<dynamic>>(() => localModule.box);
  gh.factory<_i4.ButtonNavigationCubit>(() => _i4.ButtonNavigationCubit());
  gh.singleton<_i5.Dio>(networkModule.dio);
  gh.lazySingleton<_i6.InternetConnectionChecker>(
      () => networkModule.internetConnectionChecker);
  gh.factory<_i7.InternetConnectionCheckerCubit>(() =>
      _i7.InternetConnectionCheckerCubit(gh<_i6.InternetConnectionChecker>()));
  gh.factory<_i8.LibraryFilterCubit>(() => _i8.LibraryFilterCubit());
  gh.lazySingleton<_i9.LibraryService>(() => _i9.LibraryService(gh<_i5.Dio>()));
  gh.singleton<_i10.PrettyDioLogger>(networkModule.prettyDioLogger);
  gh.lazySingleton<_i11.SignInUpService>(
      () => _i11.SignInUpService(gh<_i5.Dio>()));
  gh.factory<_i12.SignUpOrInCubit>(() => _i12.SignUpOrInCubit());
  gh.factory<_i13.ThemeAndLanguageCubit>(() => _i13.ThemeAndLanguageCubit());
  gh.lazySingleton<_i14.TokenLocalDataSource>(
      () => _i15.TokenLocalDataSourceImpl());
  gh.lazySingleton<_i16.TokenRepository>(
      () => _i17.TokenRepositoryImpl(gh<_i14.TokenLocalDataSource>()));
  gh.lazySingleton<_i18.UserService>(() => _i18.UserService(gh<_i5.Dio>()));
  gh.lazySingleton<_i19.HasTokenUseCase>(
      () => _i19.HasTokenUseCase(gh<_i16.TokenRepository>()));
  gh.lazySingleton<_i20.LibraryDataSource>(
      () => _i21.LibraryDataSourceImpl(gh<_i9.LibraryService>()));
  gh.lazySingleton<_i22.LibraryRepository>(() => _i23.LibraryRepositoryImpl(
        gh<_i20.LibraryDataSource>(),
        gh<_i14.TokenLocalDataSource>(),
      ));
  gh.lazySingleton<_i24.ResetTokenUseCase>(
      () => _i24.ResetTokenUseCase(gh<_i16.TokenRepository>()));
  gh.lazySingleton<_i25.SignInUPDataSource>(
      () => _i26.SignInUPDataSourceImpl(gh<_i11.SignInUpService>()));
  gh.lazySingleton<_i27.SignInUpRepository>(() => _i28.SignInUpRepositoryImpl(
        gh<_i25.SignInUPDataSource>(),
        gh<_i14.TokenLocalDataSource>(),
      ));
  gh.lazySingleton<_i29.SignInUseCase>(
      () => _i29.SignInUseCase(gh<_i27.SignInUpRepository>()));
  gh.lazySingleton<_i30.SignUpUseCase>(
      () => _i30.SignUpUseCase(gh<_i27.SignInUpRepository>()));
  gh.lazySingleton<_i31.UserDataSource>(
      () => _i32.UserDataSourceImpl(gh<_i18.UserService>()));
  gh.lazySingleton<_i33.UserRepository>(
      () => _i34.UserRepositoryImpl(gh<_i31.UserDataSource>()));
  gh.lazySingleton<_i35.GetPreviewLibraryUseCase>(
      () => _i35.GetPreviewLibraryUseCase(gh<_i22.LibraryRepository>()));
  gh.lazySingleton<_i36.GetUserUseCase>(
      () => _i36.GetUserUseCase(gh<_i33.UserRepository>()));
  gh.factory<_i37.LibraryCubit>(
      () => _i37.LibraryCubit(gh<_i35.GetPreviewLibraryUseCase>()));
  gh.factory<_i38.SignCubit>(() => _i38.SignCubit(
        gh<_i29.SignInUseCase>(),
        gh<_i30.SignUpUseCase>(),
      ));
  gh.lazySingleton<_i39.UpdateUserUseCase>(
      () => _i39.UpdateUserUseCase(gh<_i33.UserRepository>()));
  gh.factory<_i40.UserDataCubit>(
      () => _i40.UserDataCubit(gh<_i36.GetUserUseCase>()));
  gh.factory<_i41.UserInfoCubit>(
      () => _i41.UserInfoCubit(gh<_i39.UpdateUserUseCase>()));
  return getIt;
}

class _$NetworkModule extends _i42.NetworkModule {}

class _$LocalModule extends _i43.LocalModule {}
