import 'bloc/android_large_six_bloc.dart';
import 'models/android_large_six_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hrishikesh_s_application1/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AndroidLargeSixScreen extends StatelessWidget {
  const AndroidLargeSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixBloc>(
        create: (context) => AndroidLargeSixBloc(AndroidLargeSixState(
            androidLargeSixModelObj: AndroidLargeSixModel()))
          ..add(AndroidLargeSixInitialEvent()),
        child: AndroidLargeSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeSixBloc, AndroidLargeSixState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage4,
                        height: 224.v,
                        width: 285.h),
                    SizedBox(height: 18.v),
                    Container(
                        width: 275.h,
                        margin: EdgeInsets.only(left: 14.h, right: 23.h),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_drone_surveillance".tr,
                                  style: CustomTextStyles.headlineSmallBold),
                              TextSpan(
                                  text: "msg_leveraging_advanced".tr,
                                  style: theme.textTheme.titleLarge)
                            ]),
                            textAlign: TextAlign.left)),
                    SizedBox(height: 81.v),
                    CustomOutlinedButton(
                        text: "lbl_get_started2".tr,
                        onPressed: () {
                          onTapGetStarted(context);
                        }),
                    SizedBox(height: 33.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 22.v,
                            child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 4,
                                effect: ScrollingDotsEffect(
                                    dotHeight: 22.v, dotWidth: 22.h)))),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarSubtitleTwo(
          text: "lbl_skip".tr,
          margin: EdgeInsets.only(top: 19.v, right: 14.h, bottom: 2.v)),
      AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup1,
          margin: EdgeInsets.only(left: 2.h, top: 14.v, right: 14.h))
    ]);
  }

  /// Navigates to the androidLargeSevenScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSevenScreen,
    );
  }
}
