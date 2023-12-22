import 'bloc/android_large_twelve_bloc.dart';
import 'models/android_large_twelve_model.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/custom_text_form_field.dart';

class AndroidLargeTwelveScreen extends StatelessWidget {
  const AndroidLargeTwelveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwelveBloc>(
      create: (context) => AndroidLargeTwelveBloc(AndroidLargeTwelveState(
        androidLargeTwelveModelObj: AndroidLargeTwelveModel(),
      ))
        ..add(AndroidLargeTwelveInitialEvent()),
      child: AndroidLargeTwelveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.fillBluegray10001,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(
                        flex: 55,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 122.v,
                          width: 120.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMapPin,
                                height: 65.adaptSize,
                                width: 65.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 122.v,
                                  width: 120.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      61.h,
                                    ),
                                    border: Border.all(
                                      color: appTheme.blueGray400,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 44,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGoogleMapsOld,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              _buildSelectLandOrWork(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectLandOrWork(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_select_land_or_work".tr,
            style: CustomTextStyles.titleLargePrimary_1,
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 25.h,
            ),
            child: BlocSelector<AndroidLargeTwelveBloc, AndroidLargeTwelveState,
                TextEditingController?>(
              selector: (state) => state.locationController,
              builder: (context, locationController) {
                return CustomTextFormField(
                  controller: locationController,
                  hintText: "lbl_location".tr,
                  hintStyle: CustomTextStyles.headlineSmallBluegray400,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
                );
              },
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              right: 25.h,
            ),
            child: BlocSelector<AndroidLargeTwelveBloc, AndroidLargeTwelveState,
                TextEditingController?>(
              selector: (state) => state.addressController,
              builder: (context, addressController) {
                return CustomTextFormField(
                  controller: addressController,
                  hintText: "lbl_address".tr,
                  hintStyle: CustomTextStyles.titleLargePrimary,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4.h),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
