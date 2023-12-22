import 'package:flutter/material.dart';
import 'package:hrishikesh_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeBlack900,
      activeIcon: ImageConstant.imgHomeBlack900,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTractor,
      activeIcon: ImageConstant.imgTractor,
      title: "lbl_soil3".tr,
      type: BottomBarEnum.Soil3,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCloud,
      activeIcon: ImageConstant.imgCloud,
      title: "lbl_weather2".tr,
      type: BottomBarEnum.Weather2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.v,
      decoration: BoxDecoration(
        color: appTheme.deepPurple20001,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 46.v,
              width: 30.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(bottom: 16.v),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 27.v,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: SizedBox(
              height: 47.v,
              width: 42.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    color: appTheme.black900,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      right: 6.h,
                      bottom: 17.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 28.v),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Soil3,
  Weather2,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
