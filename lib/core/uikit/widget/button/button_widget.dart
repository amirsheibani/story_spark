import 'package:flutter/material.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/uikit/spacing.dart';

enum ButtonType { filled, outlined, text, link }

enum ButtonFit { fitWidth, fitHeight }

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, this.onTap, this.title, this.loading, this.childRight, this.childLeft, this.buttonType, this.loadingColor, this.fit, this.widget, this.background, this.childColor, this.padding, this.titleStyle}) : super(key: key);

  final VoidCallback? onTap;
  final String? title;
  final TextStyle? titleStyle;
  final Widget? widget;
  final bool? loading;
  final Widget? childRight;
  final Widget? childLeft;
  final ButtonType? buttonType;
  final ButtonFit? fit;
  final Color? background;
  final Color? loadingColor;
  final Color? childColor;
  final EdgeInsetsGeometry? padding;

  ButtonStyle _buildButtonStyle(BuildContext context) {
    if (buttonType == null) {
      return ElevatedButton.styleFrom(
        elevation: 0,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0),
        backgroundColor: background ?? Theme.of(context).colorFive,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        side: BorderSide(
          width: 1.0,
          color: background ?? Theme.of(context).colorFive,
        ),
      );
    } else {
      if (buttonType == ButtonType.filled) {
        return ElevatedButton.styleFrom(
          elevation: 0,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          backgroundColor: background ?? Theme.of(context).colorFive,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(
            width: 1.0,
            color: background ?? Theme.of(context).colorFive,
          ),
        );
      } else if (buttonType == ButtonType.outlined) {
        return ElevatedButton.styleFrom(
          elevation: 0,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          backgroundColor: Theme.of(context).colorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(
            width: 1.0,
            color: background ?? Theme.of(context).colorFive,
          ),
        );
      } else if (buttonType == ButtonType.link) {
        return ElevatedButton.styleFrom(
          elevation: 0,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
          backgroundColor: Colors.transparent,
        );
      } else {
        return ElevatedButton.styleFrom(
          elevation: 0,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0),
          backgroundColor: Theme.of(context).colorFive,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: BorderSide(
            width: 1.0,
            color: Theme.of(context).colorFive,
          ),
        );
      }
    }
  }

  TextStyle? _buildTextStyle(BuildContext context) {
    if (buttonType == null) {
      return titleStyle ?? Theme.of(context).textTheme.titleMedium?.copyWith(color: childColor ?? Theme.of(context).colorWhite, fontWeight: FontWeight.w600);
    } else {
      if (buttonType == ButtonType.filled) {
        return titleStyle ?? Theme.of(context).textTheme.titleMedium?.copyWith(color: childColor ?? Theme.of(context).colorWhite, fontWeight: FontWeight.w600);
      } else if (buttonType == ButtonType.outlined) {
        return titleStyle ?? Theme.of(context).textTheme.titleMedium?.copyWith(color: childColor ?? Theme.of(context).colorFive, fontWeight: FontWeight.w600);
      } else if (buttonType == ButtonType.link) {
        return titleStyle ?? Theme.of(context).textTheme.titleMedium?.copyWith(color: childColor ?? Theme.of(context).colorFive, fontWeight: FontWeight.w400, decoration: TextDecoration.underline);
      } else {
        return titleStyle ?? Theme.of(context).textTheme.titleMedium?.copyWith(color: childColor ?? Theme.of(context).colorFive, fontWeight: FontWeight.w600);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap?.call,
      style: _buildButtonStyle(context),
      child: SizedBox(
        height: fit == ButtonFit.fitHeight ? double.maxFinite : 40,
        width: fit == ButtonFit.fitWidth ? double.maxFinite : null,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (childLeft != null) childLeft ?? const SizedBox(),
            if (childLeft != null) Space.w8,
            if (loading ?? false)
              Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: loadingColor ?? Theme.of(context).colorWhite,
                  ),
                ),
              ),
            if (loading ?? false) Space.w8,
            if (title != null)
              Text(
                title ?? '',
                style: _buildTextStyle(context),
              )
            else
              widget ?? const SizedBox(),
            if (childRight != null) Space.w8,
            if (childRight != null) childRight ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
