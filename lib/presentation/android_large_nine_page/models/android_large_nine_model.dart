// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

/// This class defines the variables used in the [android_large_nine_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeNineModel extends Equatable {
  AndroidLargeNineModel({this.userprofilesectionItemList = const []}) {}

  List<UserprofilesectionItemModel> userprofilesectionItemList;

  AndroidLargeNineModel copyWith(
      {List<UserprofilesectionItemModel>? userprofilesectionItemList}) {
    return AndroidLargeNineModel(
      userprofilesectionItemList:
          userprofilesectionItemList ?? this.userprofilesectionItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilesectionItemList];
}
