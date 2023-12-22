import 'bloc/android_large_four_bloc.dart';
import 'models/android_large_four_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  const AndroidLargeFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourBloc>(
      create: (context) => AndroidLargeFourBloc(AndroidLargeFourState(
        androidLargeFourModelObj: AndroidLargeFourModel(),
      ))
        ..add(AndroidLargeFourInitialEvent()),
      child: AndroidLargeFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeFourBloc, AndroidLargeFourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 17.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFortySixColumn(context),
                  SizedBox(height: 42.v),
                  Container(
                    width: 269.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      right: 61.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_soil_quality_analysis2".tr,
                            style: CustomTextStyles.headlineSmallBold,
                          ),
                          TextSpan(
                            text: " \n\n".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                          TextSpan(
                            text: "msg_through_sophisticated".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Spacer(),
                  SizedBox(height: 58.v),
                  Container(
                    height: 22.v,
                    margin: EdgeInsets.only(left: 24.h),
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 4,
                      effect: ScrollingDotsEffect(
                        dotHeight: 22.v,
                        dotWidth: 22.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFortySixColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_skip".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage2,
                    height: 258.v,
                    width: 308.h,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1,
            height: 28.v,
            width: 40.h,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 258.v,
            ),
          ),
        ],
      ),
    );
  }
}
