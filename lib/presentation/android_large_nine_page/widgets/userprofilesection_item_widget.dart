import '../models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: userprofilesectionItemModelObj?.soilDetailsImage,
            height: 102.v,
            width: 121.h,
            margin: EdgeInsets.only(top: 9.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 30.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    userprofilesectionItemModelObj.soilDetailsText!,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 11.v),
                CustomTextFormField(
                  width: 166.h,
                  controller:
                      userprofilesectionItemModelObj.group9EditTextController,
                  hintText: "lbl_enter_location".tr,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 3.h,
                    vertical: 2.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL4,
                  filled: true,
                  fillColor: theme.colorScheme.onPrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
