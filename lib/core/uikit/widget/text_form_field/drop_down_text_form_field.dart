import 'dart:math';

import 'package:flutter/material.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/uikit/widget/text_form_field/text_form_field_widget.dart';

class DropDownTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final VoidCallback? showBottomSheet;

  const DropDownTextFormField({
    Key? key,
    this.controller,
    this.showBottomSheet,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextFormFieldWidget(
        onTap: showBottomSheet,
        hintText: hintText,
        controller: controller,
        suffixIcon: Transform.rotate(
          angle: pi - (pi / 2),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Theme.of(context).colorOne,
          ),
        ),
        readOnly: true,
      ),
    );
  }
}
