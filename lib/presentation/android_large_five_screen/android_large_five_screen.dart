import 'bloc/android_large_five_bloc.dart';
import 'models/android_large_five_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  const AndroidLargeFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFiveBloc>(
      create: (context) => AndroidLargeFiveBloc(AndroidLargeFiveState(
        androidLargeFiveModelObj: AndroidLargeFiveModel(),
      ))
        ..add(AndroidLargeFiveInitialEvent()),
      child: AndroidLargeFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeFiveBloc, AndroidLargeFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage3,
                    height: 235.v,
                    width: 297.h,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    width: 289.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 18.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_market_insights".tr,
                            style: CustomTextStyles.headlineSmallBold,
                          ),
                          TextSpan(
                            text: "\n".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                          TextSpan(
                            text: "msg_by_delivering_market".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Spacer(),
                  SizedBox(height: 65.v),
                  SizedBox(
                    height: 22.v,
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
