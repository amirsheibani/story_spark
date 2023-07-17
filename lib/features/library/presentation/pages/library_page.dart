import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:story_spark/common/util/assets_png_helper.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/uikit/spacing.dart';
import 'package:story_spark/features/library/presentation/manager/library_manager/library_cubit.dart';
import 'package:story_spark/features/library/presentation/manager/library_manager/library_state.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<LibraryCubit>().getPreviewLibrary();
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
        body: Column(
          children: [
            Space.h16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Container(
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Theme.of(context).colorWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 80,
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Theme.of(context).colorOne.withOpacity(0.1),
                                radius: 48,
                                child: Image.asset(
                                  AssetsPngHelper.avatarTwo,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Arian',
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorBlack, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '5 years old',
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorBlack, fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                    'English . Cat',
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorBlack, fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Theme.of(context).colorSeven),
                            color: Theme.of(context).colorSeven.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Buy a Subcription for more features.',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorSeven),
                            ),
                          ),
                        ),
                        Space.h8,
                        Container(
                          height: 40,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Theme.of(context).colorFive),
                            color: Theme.of(context).colorFive,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Create story',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Text(
                                  '2/3',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
            )
          ],
        ),
      ),
    );
  }
}
