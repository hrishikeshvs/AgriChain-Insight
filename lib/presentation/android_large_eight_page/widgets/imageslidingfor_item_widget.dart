import '../models/imageslidingfor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ImageslidingforItemWidget extends StatelessWidget {
  ImageslidingforItemWidget(
    this.imageslidingforItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImageslidingforItemModel imageslidingforItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 55.h,
          vertical: 62.v,
        ),
        decoration: AppDecoration.gradientDeepPurpleToGray,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 66.v),
            Text(
              "msg_image_sliding_for".tr,
              style: CustomTextStyles.bodyMediumBlack900_1,
            ),
          ],
        ),
      ),
    );
  }
}
