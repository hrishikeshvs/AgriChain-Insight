import 'bloc/android_large_three_bloc.dart';
import 'models/android_large_three_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  const AndroidLargeThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
      create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
        androidLargeThreeModelObj: AndroidLargeThreeModel(),
      ))
        ..add(AndroidLargeThreeInitialEvent()),
      child: AndroidLargeThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeThreeBloc, AndroidLargeThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 75.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 46,
                  ),
                  Container(
                    width: 273.h,
                    margin: EdgeInsets.only(right: 34.h),
                    child: Text(
                      "msg_real_time_weather".tr,
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Spacer(
                    flex: 53,
                  ),
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
