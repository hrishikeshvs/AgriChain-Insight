import 'bloc/android_large_ten_bloc.dart';
import 'models/android_large_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_eight_page/android_large_eight_page.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_nine_page/android_large_nine_page.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hrishikesh_s_application1/widgets/custom_bottom_bar.dart';
import 'package:hrishikesh_s_application1/widgets/custom_outlined_button.dart';

class AndroidLargeTenScreen extends StatelessWidget {
  AndroidLargeTenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTenBloc>(
      create: (context) => AndroidLargeTenBloc(AndroidLargeTenState(
        androidLargeTenModelObj: AndroidLargeTenModel(),
      ))
        ..add(AndroidLargeTenInitialEvent()),
      child: AndroidLargeTenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeTenBloc, AndroidLargeTenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 12.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage14,
                    height: 213.v,
                    width: 222.h,
                  ),
                  SizedBox(height: 31.v),
                  Text(
                    "lbl_haze".tr,
                    style: CustomTextStyles.bodyLargeBluegray400,
                  ),
                  SizedBox(height: 19.v),
                  _buildSixtyTwo(context),
                  SizedBox(height: 31.v),
                  _buildSixtyFive(context),
                  SizedBox(height: 13.v),
                  CustomOutlinedButton(
                    width: 113.h,
                    text: "lbl_reload".tr,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLocationOn,
        margin: EdgeInsets.only(
          left: 9.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarTitle(
        text: "msg_gandhinagar_india".tr,
        margin: EdgeInsets.only(left: 7.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFiftyTwo(
            context,
            userName: "lbl_min".tr,
            counterText: "lbl_28_99_c".tr,
          ),
          _buildFiftyTwo(
            context,
            userName: "lbl_max".tr,
            counterText: "lbl_28_99_c".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 35.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 7.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_humidity".tr,
                    style: CustomTextStyles.bodyLargeBluegray400,
                  ),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_84".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Column(
                children: [
                  Text(
                    "lbl_wind".tr,
                    style: CustomTextStyles.bodyLargeBluegray400,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_1_54_m_s".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildFiftyTwo(
    BuildContext context, {
    required String userName,
    required String counterText,
  }) {
    return Column(
      children: [
        Text(
          userName,
          style: CustomTextStyles.bodyLargeBluegray400.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          counterText,
          style: theme.textTheme.headlineLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.androidLargeNinePage;
      case BottomBarEnum.Soil3:
        return "/";
      case BottomBarEnum.Weather2:
        return AppRoutes.androidLargeEightPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.androidLargeNinePage:
        return AndroidLargeNinePage();
      case AppRoutes.androidLargeEightPage:
        return AndroidLargeEightPage();
      default:
        return DefaultWidget();
    }
  }
}
