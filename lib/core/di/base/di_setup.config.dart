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
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i9;

import '../../../features/account/data/data_sources/services/user_service.dart'
    as _i17;
import '../../../features/account/data/data_sources/user_data_source.dart'
    as _i30;
import '../../../features/account/data/data_sources/user_data_source_impl.dart'
    as _i31;
import '../../../features/account/data/repositories/user_repository_impl.dart'
    as _i33;
import '../../../features/account/domain/repositories/user_repository.dart'
    as _i32;
import '../../../features/account/domain/use_cases/get_user_usecase.dart'
    as _i35;
import '../../../features/account/domain/use_cases/update_user_usecase.dart'
    as _i38;
import '../../../features/account/presentation/manager/user_info_manager/user_info_cubit.dart'
    as _i40;
import '../../../features/auth/data/data_sources/services/sign_in_up_service.dart'
    as _i10;
import '../../../features/auth/data/data_sources/sign_in_up_data_source.dart'
    as _i24;
import '../../../features/auth/data/data_sources/sign_in_up_data_source_impl.dart'
    as _i25;
import '../../../features/auth/data/repositories/sign_in_up_repository_impl.dart'
    as _i27;
import '../../../features/auth/domain/repositories/sign_in_up_repository.dart'
    as _i26;
import '../../../features/auth/domain/use_cases/sign_in_usecase.dart' as _i28;
import '../../../features/auth/domain/use_cases/sign_up_usecase.dart' as _i29;
import '../../../features/auth/presentation/manager/sign_manager/sign_cubit.dart'
    as _i37;
import '../../../features/auth/presentation/manager/sign_up_manager/sign_up_cubit.dart'
    as _i11;
import '../../../features/library/data/data_sources/library_data_source.dart'
    as _i19;
import '../../../features/library/data/data_sources/library_data_source_impl.dart'
    as _i20;
import '../../../features/library/data/data_sources/services/ibrary_service.dart'
    as _i8;
import '../../../features/library/data/repositories/library_repository_impl.dart'
    as _i22;
import '../../../features/library/domain/repositories/library_repository.dart'
    as _i21;
import '../../../features/library/domain/use_cases/get_preview_libraray_usecase.dart'
    as _i34;
import '../../../features/library/presentation/manager/library_manager/library_cubit.dart'
    as _i36;
import '../../../features/main/presentation/manager/navigion_body_manager/button_navigation_cubit.dart'
    as _i4;
import '../../../features/splash/presentation/manager/user_data_cubit.dart'
    as _i39;
import '../../base/data/local/data_sources/token/token_local_data_source.dart'
    as _i13;
import '../../base/data/local/data_sources/token/token_local_data_source_impl.dart'
    as _i14;
import '../../base/data/repositories/token/token_repository_impl.dart' as _i16;
import '../../base/domain/repositories/token/token_repository.dart' as _i15;
import '../../base/domain/usecase/token/has_token_use_case.dart' as _i18;
import '../../base/domain/usecase/token/reset_token_use_case.dart' as _i23;
import '../../service/internet_connection_checker/internet_connection_checker_cubit.dart'
    as _i7;
import '../../service/language_theme/language_theme_cubit.dart' as _i12;
import '../local/di/local_module.dart' as _i42;
import '../network/di/network_module.dart' as _i41;

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
  gh.lazySingleton<_i8.LibraryService>(() => _i8.LibraryService(gh<_i5.Dio>()));
  gh.singleton<_i9.PrettyDioLogger>(networkModule.prettyDioLogger);
  gh.lazySingleton<_i10.SignInUpService>(
      () => _i10.SignInUpService(gh<_i5.Dio>()));
  gh.factory<_i11.SignUpOrInCubit>(() => _i11.SignUpOrInCubit());
  gh.factory<_i12.ThemeAndLanguageCubit>(() => _i12.ThemeAndLanguageCubit());
  gh.lazySingleton<_i13.TokenLocalDataSource>(
      () => _i14.TokenLocalDataSourceImpl());
  gh.lazySingleton<_i15.TokenRepository>(
      () => _i16.TokenRepositoryImpl(gh<_i13.TokenLocalDataSource>()));
  gh.lazySingleton<_i17.UserService>(() => _i17.UserService(gh<_i5.Dio>()));
  gh.lazySingleton<_i18.HasTokenUseCase>(
      () => _i18.HasTokenUseCase(gh<_i15.TokenRepository>()));
  gh.lazySingleton<_i19.LibraryDataSource>(
      () => _i20.LibraryDataSourceImpl(gh<_i8.LibraryService>()));
  gh.lazySingleton<_i21.LibraryRepository>(() => _i22.LibraryRepositoryImpl(
        gh<_i19.LibraryDataSource>(),
        gh<_i13.TokenLocalDataSource>(),
      ));
  gh.lazySingleton<_i23.ResetTokenUseCase>(
      () => _i23.ResetTokenUseCase(gh<_i15.TokenRepository>()));
  gh.lazySingleton<_i24.SignInUPDataSource>(
      () => _i25.SignInUPDataSourceImpl(gh<_i10.SignInUpService>()));
  gh.lazySingleton<_i26.SignInUpRepository>(() => _i27.SignInUpRepositoryImpl(
        gh<_i24.SignInUPDataSource>(),
        gh<_i13.TokenLocalDataSource>(),
      ));
  gh.lazySingleton<_i28.SignInUseCase>(
      () => _i28.SignInUseCase(gh<_i26.SignInUpRepository>()));
  gh.lazySingleton<_i29.SignUpUseCase>(
      () => _i29.SignUpUseCase(gh<_i26.SignInUpRepository>()));
  gh.lazySingleton<_i30.UserDataSource>(
      () => _i31.UserDataSourceImpl(gh<_i17.UserService>()));
  gh.lazySingleton<_i32.UserRepository>(
      () => _i33.UserRepositoryImpl(gh<_i30.UserDataSource>()));
  gh.lazySingleton<_i34.GetPreviewLibraryUseCase>(
      () => _i34.GetPreviewLibraryUseCase(gh<_i21.LibraryRepository>()));
  gh.lazySingleton<_i35.GetUserUseCase>(
      () => _i35.GetUserUseCase(gh<_i32.UserRepository>()));
  gh.factory<_i36.LibraryCubit>(
      () => _i36.LibraryCubit(gh<_i34.GetPreviewLibraryUseCase>()));
  gh.factory<_i37.SignCubit>(() => _i37.SignCubit(
        gh<_i28.SignInUseCase>(),
        gh<_i29.SignUpUseCase>(),
      ));
  gh.lazySingleton<_i38.UpdateUserUseCase>(
      () => _i38.UpdateUserUseCase(gh<_i32.UserRepository>()));
  gh.factory<_i39.UserDataCubit>(
      () => _i39.UserDataCubit(gh<_i35.GetUserUseCase>()));
  gh.factory<_i40.UserInfoCubit>(
      () => _i40.UserInfoCubit(gh<_i38.UpdateUserUseCase>()));
  return getIt;
}

class _$NetworkModule extends _i41.NetworkModule {}

class _$LocalModule extends _i42.LocalModule {}
