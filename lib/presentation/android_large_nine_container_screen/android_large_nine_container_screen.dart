import 'bloc/android_large_nine_container_bloc.dart';
import 'models/android_large_nine_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_eight_page/android_large_eight_page.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_nine_page/android_large_nine_page.dart';
import 'package:hrishikesh_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeNineContainerScreen extends StatelessWidget {
  AndroidLargeNineContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeNineContainerBloc>(
        create: (context) => AndroidLargeNineContainerBloc(
            AndroidLargeNineContainerState(
                androidLargeNineContainerModelObj:
                    AndroidLargeNineContainerModel()))
          ..add(AndroidLargeNineContainerInitialEvent()),
        child: AndroidLargeNineContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeNineContainerBloc,
        AndroidLargeNineContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.blueGray100,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.androidLargeNinePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
