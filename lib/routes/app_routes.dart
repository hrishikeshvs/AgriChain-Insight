import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_three_screen/android_large_three_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_four_screen/android_large_four_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_six_screen/android_large_six_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_seven_screen/android_large_seven_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_nine_container_screen/android_large_nine_container_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_ten_screen/android_large_ten_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_twelve_screen/android_large_twelve_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_fourteen_screen/android_large_fourteen_screen.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_fifteen_screen/android_large_fifteen_screen.dart';
import 'package:hrishikesh_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String androidLargeSevenScreen = '/android_large_seven_screen';

  static const String androidLargeEightPage = '/android_large_eight_page';

  static const String androidLargeNinePage = '/android_large_nine_page';

  static const String androidLargeNineContainerScreen =
      '/android_large_nine_container_screen';

  static const String androidLargeTenScreen = '/android_large_ten_screen';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeTwelveScreen = '/android_large_twelve_screen';

  static const String androidLargeFourteenScreen =
      '/android_large_fourteen_screen';

  static const String androidLargeFifteenScreen =
      '/android_large_fifteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        androidLargeOneScreen: AndroidLargeOneScreen.builder,
        androidLargeThreeScreen: AndroidLargeThreeScreen.builder,
        androidLargeFourScreen: AndroidLargeFourScreen.builder,
        androidLargeFiveScreen: AndroidLargeFiveScreen.builder,
        androidLargeSixScreen: AndroidLargeSixScreen.builder,
        androidLargeSevenScreen: AndroidLargeSevenScreen.builder,
        androidLargeNineContainerScreen:
            AndroidLargeNineContainerScreen.builder,
        androidLargeTenScreen: AndroidLargeTenScreen.builder,
        androidLargeTwoScreen: AndroidLargeTwoScreen.builder,
        androidLargeTwelveScreen: AndroidLargeTwelveScreen.builder,
        androidLargeFourteenScreen: AndroidLargeFourteenScreen.builder,
        androidLargeFifteenScreen: AndroidLargeFifteenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AndroidLargeOneScreen.builder
      };
}
