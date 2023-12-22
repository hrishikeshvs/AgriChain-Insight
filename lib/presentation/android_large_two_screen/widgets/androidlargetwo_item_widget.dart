import '../models/androidlargetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class AndroidlargetwoItemWidget extends StatelessWidget {
  AndroidlargetwoItemWidget(
    this.androidlargetwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AndroidlargetwoItemModel androidlargetwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      height: 71.v,
      width: 308.h,
      text: "lbl_english".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL18,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }
}
