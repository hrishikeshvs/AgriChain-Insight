import 'bloc/android_large_seven_bloc.dart';
import 'models/android_large_seven_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hrishikesh_s_application1/widgets/custom_outlined_button.dart';
import 'package:hrishikesh_s_application1/widgets/custom_phone_number.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  AndroidLargeSevenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSevenBloc>(
      create: (context) => AndroidLargeSevenBloc(AndroidLargeSevenState(
        androidLargeSevenModelObj: AndroidLargeSevenModel(),
      ))
        ..add(AndroidLargeSevenInitialEvent()),
      child: AndroidLargeSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 47.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage6,
                  height: 223.v,
                  width: 227.h,
                ),
                SizedBox(height: 39.v),
                Text(
                  "msg_mobile_verification".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 16.v),
                Container(
                  width: 257.h,
                  margin: EdgeInsets.only(
                    left: 25.h,
                    right: 24.h,
                  ),
                  child: Text(
                    "msg_enter_your_country".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeSecondaryContainer,
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.h),
                  child: BlocBuilder<AndroidLargeSevenBloc,
                      AndroidLargeSevenState>(
                    builder: (context, state) {
                      return CustomPhoneNumber(
                        country: state.selectedCountry ??
                            CountryPickerUtils.getCountryByPhoneCode('1'),
                        controller: state.phoneNumberController,
                        onTap: (Country value) {
                          context
                              .read<AndroidLargeSevenBloc>()
                              .add(ChangeCountryEvent(value: value));
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 37.v),
                CustomOutlinedButton(
                  text: "lbl_get_started2".tr,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
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
