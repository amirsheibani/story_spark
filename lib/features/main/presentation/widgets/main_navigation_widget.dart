import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:story_spark/common/util/assets_icon_helper.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/uikit/spacing.dart';
import 'package:story_spark/features/main/presentation/widgets/main_navigation_body.dart';
import 'package:story_spark/generated/l10n.dart';

class MinNavigationWidget extends StatelessWidget {
  const MinNavigationWidget({super.key, required this.mainNavigationItem, required this.onChange});

  final MainNavigationItem mainNavigationItem;
  final ValueChanged<MainNavigationItem> onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorWhite, borderRadius: const BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                onChange.call(MainNavigationItem.profile);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AssetsIconHelper.userCircle,
                    colorFilter: ColorFilter.mode(mainNavigationItem == MainNavigationItem.profile ? Theme.of(context).colorFive : Theme.of(context).colorThree, BlendMode.srcIn),
                  ),
                  Space.w8,
                  Text(
                    S.of(context).profile,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: mainNavigationItem == MainNavigationItem.profile ? Theme.of(context).colorFive : Theme.of(context).colorThree, fontWeight: mainNavigationItem == MainNavigationItem.profile ? FontWeight.w400 : FontWeight.w400),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                onChange.call(MainNavigationItem.create);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AssetsIconHelper.add,
                    colorFilter: ColorFilter.mode(mainNavigationItem == MainNavigationItem.create ? Theme.of(context).colorFive : Theme.of(context).colorThree, BlendMode.srcIn),
                  ),
                  Space.w8,
                  Text(
                    S.of(context).create,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: mainNavigationItem == MainNavigationItem.create ? Theme.of(context).colorFive : Theme.of(context).colorThree, fontWeight: mainNavigationItem == MainNavigationItem.create ? FontWeight.w400 : FontWeight.w400),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                onChange.call(MainNavigationItem.library);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AssetsIconHelper.library,
                    colorFilter: ColorFilter.mode(mainNavigationItem == MainNavigationItem.library ? Theme.of(context).colorFive : Theme.of(context).colorThree, BlendMode.srcIn),
                  ),
                  Space.w8,
                  Text(
                    S.of(context).library,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: mainNavigationItem == MainNavigationItem.library ? Theme.of(context).colorFive : Theme.of(context).colorThree, fontWeight: mainNavigationItem == MainNavigationItem.library ? FontWeight.w400 : FontWeight.w400),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                onChange.call(MainNavigationItem.home);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AssetsIconHelper.home,
                    colorFilter: ColorFilter.mode(mainNavigationItem == MainNavigationItem.home ? Theme.of(context).colorFive : Theme.of(context).colorThree, BlendMode.srcIn),
                  ),
                  Space.w8,
                  Text(
                    S.of(context).home,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: mainNavigationItem == MainNavigationItem.home ? Theme.of(context).colorFive : Theme.of(context).colorThree, fontWeight: mainNavigationItem == MainNavigationItem.home ? FontWeight.w400 : FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
