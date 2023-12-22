import 'bloc/android_large_one_bloc.dart';
import 'models/android_large_one_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/custom_outlined_button.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
        create: (context) => AndroidLargeOneBloc(AndroidLargeOneState(
            androidLargeOneModelObj: AndroidLargeOneModel()))
          ..add(AndroidLargeOneInitialEvent()),
        child: AndroidLargeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeOneBloc, AndroidLargeOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgAndroidLarge),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 65.v),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(flex: 48),
                            _buildTractorImage(context),
                            SizedBox(height: 41.v),
                            Text("msg_empowering_agriculture".tr,
                                style: theme.textTheme.titleSmall),
                            Spacer(flex: 51),
                            CustomOutlinedButton(
                                text: "lbl_get_started".tr,
                                margin: EdgeInsets.only(right: 8.h),
                                onPressed: () {
                                  onTapGetStarted(context);
                                })
                          ])))));
    });
  }

  /// Section Widget
  Widget _buildTractorImage(BuildContext context) {
    return CustomImageView(
        imagePath: ImageConstant.imgTractor1972256,
        height: 194.v,
        width: 294.h,
        alignment: Alignment.centerLeft);
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwoScreen,
    );
  }
}
