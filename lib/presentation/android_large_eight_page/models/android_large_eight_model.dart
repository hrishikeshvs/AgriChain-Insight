// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'imageslidingfor_item_model.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [android_large_eight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeEightModel extends Equatable {
  AndroidLargeEightModel({
    this.imageslidingforItemList = const [],
    this.userprofileItemList = const [],
  }) {}

  List<ImageslidingforItemModel> imageslidingforItemList;

  List<UserprofileItemModel> userprofileItemList;

  AndroidLargeEightModel copyWith({
    List<ImageslidingforItemModel>? imageslidingforItemList,
    List<UserprofileItemModel>? userprofileItemList,
  }) {
    return AndroidLargeEightModel(
      imageslidingforItemList:
          imageslidingforItemList ?? this.imageslidingforItemList,
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [imageslidingforItemList, userprofileItemList];
}
