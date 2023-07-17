import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:story_spark/common/util/assets_icon_helper.dart';
import 'package:story_spark/common/util/assets_png_helper.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/di/base/di_setup.dart';
import 'package:story_spark/core/uikit/spacing.dart';
import 'package:story_spark/core/uikit/widget/button/button_widget.dart';
import 'package:story_spark/core/uikit/widget/text_form_field/text_form_field_widget.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_manager/sign_cubit.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_manager/sign_state.dart';
import 'package:story_spark/features/library/presentation/manager/library_filter_manager/library_filter_cubit.dart';
import 'package:story_spark/features/library/presentation/manager/library_filter_manager/library_filter_state.dart';
import 'package:story_spark/features/library/presentation/manager/library_manager/library_cubit.dart';
import 'package:story_spark/features/library/presentation/manager/library_manager/library_state.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<LibraryCubit>().getPreviewLibrary();
    return BlocProvider(
      create: (context) => getIt<LibraryFilterCubit>(),
      child: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(40.0), //
              child: AppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Text(
                      "Story Spark",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite),
                    ),
                    const Spacer()
                  ],
                ),
                actions: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Theme.of(context).colorFive.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add_circle_outline,
                          color: Theme.of(context).colorFive,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Theme.of(context).colorWhite.withOpacity(0.1),
                      ),
                      child: Center(
                        child: Image.asset(
                          AssetsPngHelper.avatarOne,
                          fit: BoxFit.contain,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        'Library',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.w200),
                      ),
                      subtitle: BlocBuilder<SignCubit, SignState>(
                        buildWhen: (previous, current) {
                          return current.whenOrNull(signInSuccess: (_) => true) ?? false;
                        },
                        builder: (context, state) {
                          return state.whenOrNull(signInSuccess: (data) {
                                return Text(
                                  "Welcome ${data?.name ?? data?.email ?? ''}",
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.w200),
                                );
                              }) ??
                              Text(
                                "You don't have account",
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.w200),
                              );
                        },
                      ),
                    ),
                    Space.h16,
                    // BlocBuilder<SignCubit, SignState>(
                    //   buildWhen: (previous, current) {
                    //     return current.whenOrNull(signInSuccess: (_) => true) ?? false;
                    //   },
                    //   builder: (context, state) {
                    //     return state.whenOrNull(signInSuccess: (data) {
                    //           return Padding(
                    //             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    //             child: Container(
                    //               width: double.maxFinite,
                    //               height: 200,
                    //               decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(16.0),
                    //                 color: Theme.of(context).colorWhite,
                    //               ),
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(8.0),
                    //                 child: Center(
                    //                   child: Column(
                    //                     crossAxisAlignment: CrossAxisAlignment.start,
                    //                     mainAxisSize: MainAxisSize.min,
                    //                     children: [
                    //                       SizedBox(
                    //                         height: 80,
                    //                         child: Row(
                    //                           children: [
                    //                             CircleAvatar(
                    //                               backgroundColor: Theme.of(context).colorOne.withOpacity(0.1),
                    //                               radius: 48,
                    //                               child: Image.asset(
                    //                                 AssetsPngHelper.avatarTwo,
                    //                                 fit: BoxFit.contain,
                    //                               ),
                    //                             ),
                    //                             Column(
                    //                               mainAxisSize: MainAxisSize.min,
                    //                               crossAxisAlignment: CrossAxisAlignment.start,
                    //                               children: [
                    //                                 Text(
                    //                                   data?.name ?? data?.email ?? '',
                    //                                   style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorBlack, fontWeight: FontWeight.bold),
                    //                                 ),
                    //                                 Text(
                    //                                   '5 years old',
                    //                                   style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorBlack, fontWeight: FontWeight.w300),
                    //                                 ),
                    //                                 Text(
                    //                                   'English . Cat',
                    //                                   style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorBlack, fontWeight: FontWeight.w300),
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       ),
                    //                       Container(
                    //                         height: 40,
                    //                         width: double.maxFinite,
                    //                         decoration: BoxDecoration(
                    //                           borderRadius: BorderRadius.circular(8.0),
                    //                           border: Border.all(color: Theme.of(context).colorSeven),
                    //                           color: Theme.of(context).colorSeven.withOpacity(0.2),
                    //                         ),
                    //                         child: Padding(
                    //                           padding: const EdgeInsets.all(8.0),
                    //                           child: Text(
                    //                             'Buy a Subcription for more features.',
                    //                             style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorSeven),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       Space.h8,
                    //                       Container(
                    //                         height: 40,
                    //                         width: double.maxFinite,
                    //                         decoration: BoxDecoration(
                    //                           borderRadius: BorderRadius.circular(8.0),
                    //                           border: Border.all(color: Theme.of(context).colorFive),
                    //                           color: Theme.of(context).colorFive,
                    //                         ),
                    //                         child: Padding(
                    //                           padding: const EdgeInsets.all(8.0),
                    //                           child: Row(
                    //                             children: [
                    //                               Text(
                    //                                 'Create story',
                    //                                 style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.bold),
                    //                               ),
                    //                               const Spacer(),
                    //                               Text(
                    //                                 '2/3',
                    //                                 style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.bold),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           );
                    //         }) ??
                    //         const SizedBox();
                    //   },
                    // ),
                    TextFormFieldWidget(
                      hintText: "Search",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Theme.of(context).colorEight,
                              ),
                              child: Icon(
                                Icons.search_rounded,
                                size: 36,
                                color: Theme.of(context).colorBlack,
                              ),
                            ),
                            Space.w16,
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Theme.of(context).colorFive,
                              ),
                              child: SvgPicture.asset(
                                AssetsIconHelper.voiceRec,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Space.h16,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          context.read<LibraryFilterCubit>().tapToggle();
                        },
                        child: Container(
                          height: 60,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Theme.of(context).colorWhite.withOpacity(0.3),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Filter",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                BlocBuilder<LibraryFilterCubit, LibraryFilterState>(
                                  builder: (context, state) {
                                    return state.whenOrNull(
                                          idle: () => Icon(
                                            Icons.arrow_drop_down,
                                            color: Theme.of(context).colorWhite,
                                          ),
                                          close: () => Icon(
                                            Icons.arrow_drop_down,
                                            color: Theme.of(context).colorWhite,
                                          ),
                                        ) ??
                                        Icon(
                                          Icons.arrow_drop_up,
                                          color: Theme.of(context).colorWhite,
                                        );
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Space.h8,
                    BlocBuilder<LibraryFilterCubit, LibraryFilterState>(
                      builder: (context, state) {
                        return state.whenOrNull(
                              open: () => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Theme.of(context).colorWhite.withOpacity(0.3),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text("Age", style: Theme.of(context).textTheme.titleSmall),
                                            const Spacer(),
                                            Text("4-6 years", style: Theme.of(context).textTheme.titleSmall),
                                            Icon(Icons.arrow_drop_down, color: Theme.of(context).colorWhite),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Space.h8,
                                    Container(
                                      height: 40,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Theme.of(context).colorWhite.withOpacity(0.3),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text("Special Needs", style: Theme.of(context).textTheme.titleSmall),
                                            const Spacer(),
                                            Text("Dyslexia", style: Theme.of(context).textTheme.titleSmall),
                                            Icon(Icons.arrow_drop_down, color: Theme.of(context).colorWhite),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Space.h8,
                                    Container(
                                      height: 40,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Theme.of(context).colorWhite.withOpacity(0.3),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text("Language", style: Theme.of(context).textTheme.titleSmall),
                                            const Spacer(),
                                            Text("English", style: Theme.of(context).textTheme.titleSmall),
                                            Icon(Icons.arrow_drop_down, color: Theme.of(context).colorWhite),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Space.h8,
                                    Container(
                                      height: 170,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Theme.of(context).colorWhite.withOpacity(0.3),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                            child: Text("Type", style: Theme.of(context).textTheme.titleSmall),
                                          ),
                                          Image.asset(
                                            AssetsPngHelper.type,
                                            width: double.maxFinite,
                                            height: 88,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: Row(
                                              children: [
                                                Text("Bedtime Story", style: Theme.of(context).textTheme.titleSmall),
                                                const Spacer(),
                                                Icon(Icons.arrow_drop_down, color: Theme.of(context).colorWhite),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Space.h8,
                                    Container(
                                      height: 170,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Theme.of(context).colorWhite.withOpacity(0.3),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                            child: Text("Category", style: Theme.of(context).textTheme.titleSmall),
                                          ),
                                          Image.asset(
                                            AssetsPngHelper.category,
                                            width: double.maxFinite,
                                            height: 88,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: Row(
                                              children: [
                                                Text("Jungle", style: Theme.of(context).textTheme.titleSmall),
                                                const Spacer(),
                                                Icon(Icons.arrow_drop_down, color: Theme.of(context).colorWhite),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Space.h8,
                                    Container(
                                      height: 170,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Theme.of(context).colorWhite.withOpacity(0.3),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                                            child: Text("Character", style: Theme.of(context).textTheme.titleSmall),
                                          ),
                                          Image.asset(
                                            AssetsPngHelper.character,
                                            width: double.maxFinite,
                                            height: 88,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                            child: Row(
                                              children: [
                                                Text("Boy", style: Theme.of(context).textTheme.titleSmall),
                                                const Spacer(),
                                                Icon(Icons.arrow_drop_down, color: Theme.of(context).colorWhite),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Space.h8,
                                    ButtonWidget(
                                      fit: ButtonFit.fitWidth,
                                      title: "Filter Store",
                                      background: Theme.of(context).colorFive,
                                      onTap: () {},
                                    )
                                  ],
                                ),
                              ),
                            ) ??
                            const SizedBox();
                      },
                    ),
                    Space.h16,
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        height: 390,
                        width: double.maxFinite,
                        child: BlocConsumer<LibraryCubit, LibraryState>(
                          listener: (context, state) {
                            state.whenOrNull(error: (message) {
                              Fluttertoast.showToast(
                                msg: message ?? '',
                                toastLength: Toast.LENGTH_LONG,
                                timeInSecForIosWeb: 3,
                                backgroundColor: Theme.of(context).softRed,
                                textColor: Theme.of(context).colorBlack,
                                fontSize: 16.0,
                              );
                            });
                          },
                          builder: (context, state) {
                            return state.whenOrNull(
                                    loading: () => const Center(
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
                                        ),
                                    success: (items) {
                                      return ListView.separated(
                                        itemCount: items?.length ?? 0,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            width: 256,
                                            height: 390,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(16.0),
                                              color: Theme.of(context).colorWhite.withOpacity(0.1),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(16.0),
                                                  child: CachedNetworkImage(
                                                    width: 256,
                                                    height: 256,
                                                    fit: BoxFit.contain,
                                                    imageUrl: items?[index]?.thumbnail ?? '',
                                                    placeholder: (context, url) => const Center(
                                                        child: CircularProgressIndicator(
                                                      strokeWidth: 2,
                                                    )),
                                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                                  ),
                                                ),
                                                Space.h16,
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                  child: Text(
                                                    items?[index]?.title ?? '-',
                                                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.bold),
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Space.h16,
                                                Expanded(
                                                    child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                  child: Text(
                                                    items?[index]?.thumbnail ?? '-',
                                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.bold),
                                                    maxLines: 3,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),
                                                ))
                                              ],
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return Space.w16;
                                        },
                                      );
                                    }) ??
                                const SizedBox();
                          },
                        ),
                      ),
                    ),
                    Space.h16,
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
