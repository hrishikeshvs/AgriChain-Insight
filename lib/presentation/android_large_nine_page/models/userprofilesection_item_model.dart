import '../../../core/app_export.dart';
import 'package:flutter/material.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.soilDetailsImage,
    this.soilDetailsText,
    this.group9EditTextController,
    this.id,
  }) {
    soilDetailsImage = soilDetailsImage ?? ImageConstant.imgImage2;
    soilDetailsText = soilDetailsText ?? "Soil Details";
    group9EditTextController =
        group9EditTextController ?? TextEditingController();
    id = id ?? "";
  }

  String? soilDetailsImage;

  String? soilDetailsText;

  TextEditingController? group9EditTextController;

  String? id;
}
