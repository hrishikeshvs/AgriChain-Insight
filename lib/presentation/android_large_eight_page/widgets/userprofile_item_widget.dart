import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapTwentyFour,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  VoidCallback? onTapTwentyFour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapTwentyFour!.call();
          },
          child: Container(
            height: 90.adaptSize,
            width: 90.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder45,
            ),
            child: CustomImageView(
              imagePath: userprofileItemModelObj?.userImage,
              height: 60.adaptSize,
              width: 60.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(height: 4.v),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Text(
              userprofileItemModelObj.userName!,
              style: CustomTextStyles.bodyMediumBlack900_1,
            ),
          ),
        ),
      ],
    );
  }
}
