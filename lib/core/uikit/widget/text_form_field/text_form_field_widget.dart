import 'package:flutter/material.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/uikit/keybord/input_done_view.dart';
import 'package:story_spark/core/uikit/spacing.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget(
      {super.key, this.controller, this.hintText, this.prefixIcon, this.prefixIconSvgPath, this.textInputType = TextInputType.text, this.readOnly = false, this.suffixIcon, this.suffixIconSvgPath, this.onTap, this.label, this.obscureText = false});

  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final Widget? prefixIcon;
  final String? prefixIconSvgPath;
  final Widget? suffixIcon;
  final String? suffixIconSvgPath;
  final TextInputType? textInputType;
  final bool readOnly;
  final VoidCallback? onTap;
  final bool obscureText;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  FocusNode? focusNode;

  @override
  void initState() {
    if (!widget.readOnly) {
      focusNode = FocusNode();
      focusNode!.addListener(() {
        bool hasFocus = focusNode!.hasFocus;
        if (hasFocus) {
          KeyboardOverlay.showOverlay(context);
        } else {
          KeyboardOverlay.removeOverlay();
        }
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label ?? '',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorBlack, fontWeight: FontWeight.w300),
        ),
        Space.h8,
        TextFormField(
          obscureText: widget.obscureText,
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          keyboardType: widget.textInputType,
          controller: widget.controller,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorFive),
          focusNode: focusNode,
          autofocus: false,
          decoration: InputDecoration(
            hintText: widget.hintText,
            filled: true,
            fillColor: Theme.of(context).colorSix,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            suffixIcon: widget.suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Theme.of(context).colorThree,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Theme.of(context).colorFive,
                width: 2.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
