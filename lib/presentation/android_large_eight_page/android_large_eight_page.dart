import '../android_large_eight_page/widgets/imageslidingfor_item_widget.dart';
import '../android_large_eight_page/widgets/userprofile_item_widget.dart';
import 'bloc/android_large_eight_bloc.dart';
import 'models/android_large_eight_model.dart';
import 'models/imageslidingfor_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hrishikesh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:hrishikesh_s_application1/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AndroidLargeEightPage extends StatelessWidget {
  const AndroidLargeEightPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeEightBloc>(
        create: (context) => AndroidLargeEightBloc(AndroidLargeEightState(
            androidLargeEightModelObj: AndroidLargeEightModel()))
          ..add(AndroidLargeEightInitialEvent()),
        child: AndroidLargeEightPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  _buildTwentyNine(context),
                  Column(children: [
                    _buildEightyTwo(context),
                    SizedBox(height: 2.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 17.v),
                        decoration: AppDecoration
                            .gradientOnPrimaryContainerToDeepPurple,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_categories".tr,
                                  style: CustomTextStyles.titleLargeBold),
                              SizedBox(height: 27.v),
                              _buildUserProfile(context),
                              SizedBox(height: 51.v)
                            ]))
                  ])
                ]))));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.gradientDeepPurpleToPurple,
        child: Column(children: [
          CustomAppBar(
              height: 49.v,
              title: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Column(children: [
                    Row(children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Column(children: [
                            AppbarTitleImage(imagePath: ImageConstant.imgMenu),
                            SizedBox(height: 2.v),
                            AppbarTitleImage(
                                imagePath: ImageConstant.imgAddLocationAlt)
                          ])),
                      Container(
                          height: 49.179996.v,
                          width: 253.31.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            AppbarSubtitleOne(
                                text: "msg_agrichain_insight".tr,
                                margin:
                                    EdgeInsets.only(left: 88.h, bottom: 24.v)),
                            AppbarSubtitle(
                                text: "lbl_add_location".tr,
                                margin:
                                    EdgeInsets.only(top: 24.v, right: 130.h))
                          ]))
                    ])
                  ])),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgMaleUser,
                    margin:
                        EdgeInsets.only(left: 14.h, right: 15.h, bottom: 26.v))
              ]),
          SizedBox(height: 5.v),
          Padding(
              padding: EdgeInsets.only(left: 21.h, right: 26.h),
              child: BlocSelector<AndroidLargeEightBloc, AndroidLargeEightState,
                      TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search_for".tr);
                  })),
          SizedBox(height: 9.v)
        ]));
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return SizedBox(
        height: 211.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          BlocBuilder<AndroidLargeEightBloc, AndroidLargeEightState>(
              builder: (context, state) {
            return CarouselSlider.builder(
                options: CarouselOptions(
                    height: 211.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      state.sliderIndex = index;
                    }),
                itemCount: state.androidLargeEightModelObj
                        ?.imageslidingforItemList.length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  ImageslidingforItemModel model = state
                          .androidLargeEightModelObj
                          ?.imageslidingforItemList[index] ??
                      ImageslidingforItemModel();
                  return ImageslidingforItemWidget(model);
                });
          }),
          Align(
              alignment: Alignment.bottomCenter,
              child: BlocBuilder<AndroidLargeEightBloc, AndroidLargeEightState>(
                  builder: (context, state) {
                return Container(
                    height: 22.v,
                    margin: EdgeInsets.only(bottom: 7.v),
                    child: AnimatedSmoothIndicator(
                        activeIndex: state.sliderIndex,
                        count: state.androidLargeEightModelObj
                                ?.imageslidingforItemList.length ??
                            0,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                            dotHeight: 22.v, dotWidth: 22.h)));
              }))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: BlocSelector<AndroidLargeEightBloc, AndroidLargeEightState,
                AndroidLargeEightModel?>(
            selector: (state) => state.androidLargeEightModelObj,
            builder: (context, androidLargeEightModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 114.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 26.h,
                      crossAxisSpacing: 26.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                      androidLargeEightModelObj?.userprofileItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model =
                        androidLargeEightModelObj?.userprofileItemList[index] ??
                            UserprofileItemModel();
                    return UserprofileItemWidget(model, onTapTwentyFour: () {
                      onTapTwentyFour(context);
                    });
                  });
            }));
  }

  /// Navigates to the androidLargeTwelveScreen when the action is triggered.
  onTapTwentyFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwelveScreen,
    );
  }
}
