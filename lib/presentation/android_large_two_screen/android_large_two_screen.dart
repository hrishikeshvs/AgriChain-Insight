import '../android_large_two_screen/widgets/androidlargetwo_item_widget.dart';
import 'bloc/android_large_two_bloc.dart';
import 'models/android_large_two_model.dart';
import 'models/androidlargetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/custom_app_bar.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwoBloc>(
      create: (context) => AndroidLargeTwoBloc(AndroidLargeTwoState(
        androidLargeTwoModelObj: AndroidLargeTwoModel(),
      ))
        ..add(AndroidLargeTwoInitialEvent()),
      child: AndroidLargeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 25.h,
            top: 61.v,
            right: 25.h,
          ),
          child: BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
              AndroidLargeTwoModel?>(
            selector: (state) => state.androidLargeTwoModelObj,
            builder: (context, androidLargeTwoModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 15.v,
                  );
                },
                itemCount:
                    androidLargeTwoModelObj?.androidlargetwoItemList.length ??
                        0,
                itemBuilder: (context, index) {
                  AndroidlargetwoItemModel model =
                      androidLargeTwoModelObj?.androidlargetwoItemList[index] ??
                          AndroidlargetwoItemModel();
                  return AndroidlargetwoItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_skip".tr,
          margin: EdgeInsets.only(
            top: 19.v,
            right: 14.h,
            bottom: 2.v,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup1,
          margin: EdgeInsets.only(
            left: 2.h,
            top: 14.v,
            right: 14.h,
          ),
        ),
      ],
    );
  }
}
