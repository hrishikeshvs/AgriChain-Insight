import '../android_large_nine_page/widgets/userprofilesection_item_widget.dart';
import 'bloc/android_large_nine_bloc.dart';
import 'models/android_large_nine_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeNinePage extends StatelessWidget {
  const AndroidLargeNinePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeNineBloc>(
      create: (context) => AndroidLargeNineBloc(AndroidLargeNineState(
        androidLargeNineModelObj: AndroidLargeNineModel(),
      ))
        ..add(AndroidLargeNineInitialEvent()),
      child: AndroidLargeNinePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              _buildUserProfileSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: BlocSelector<AndroidLargeNineBloc, AndroidLargeNineState,
            AndroidLargeNineModel?>(
          selector: (state) => state.androidLargeNineModelObj,
          builder: (context, androidLargeNineModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 23.v,
                );
              },
              itemCount:
                  androidLargeNineModelObj?.userprofilesectionItemList.length ??
                      0,
              itemBuilder: (context, index) {
                UserprofilesectionItemModel model = androidLargeNineModelObj
                        ?.userprofilesectionItemList[index] ??
                    UserprofilesectionItemModel();
                return UserprofilesectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
