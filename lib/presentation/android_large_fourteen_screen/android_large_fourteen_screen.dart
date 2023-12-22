import 'bloc/android_large_fourteen_bloc.dart';
import 'models/android_large_fourteen_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';

class AndroidLargeFourteenScreen extends StatelessWidget {
  const AndroidLargeFourteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourteenBloc>(
      create: (context) => AndroidLargeFourteenBloc(AndroidLargeFourteenState(
        androidLargeFourteenModelObj: AndroidLargeFourteenModel(),
      ))
        ..add(AndroidLargeFourteenInitialEvent()),
      child: AndroidLargeFourteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeFourteenBloc, AndroidLargeFourteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023,
                height: 722.v,
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
