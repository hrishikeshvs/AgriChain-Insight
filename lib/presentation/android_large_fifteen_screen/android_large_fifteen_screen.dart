import 'bloc/android_large_fifteen_bloc.dart';
import 'models/android_large_fifteen_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';

class AndroidLargeFifteenScreen extends StatelessWidget {
  const AndroidLargeFifteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFifteenBloc>(
      create: (context) => AndroidLargeFifteenBloc(AndroidLargeFifteenState(
        androidLargeFifteenModelObj: AndroidLargeFifteenModel(),
      ))
        ..add(AndroidLargeFifteenInitialEvent()),
      child: AndroidLargeFifteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeFifteenBloc, AndroidLargeFifteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023715x360,
                height: 715.v,
                width: 360.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
