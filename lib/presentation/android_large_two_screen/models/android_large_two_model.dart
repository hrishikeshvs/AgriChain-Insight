// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'androidlargetwo_item_model.dart';

/// This class defines the variables used in the [android_large_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeTwoModel extends Equatable {
  AndroidLargeTwoModel({this.androidlargetwoItemList = const []}) {}

  List<AndroidlargetwoItemModel> androidlargetwoItemList;

  AndroidLargeTwoModel copyWith(
      {List<AndroidlargetwoItemModel>? androidlargetwoItemList}) {
    return AndroidLargeTwoModel(
      androidlargetwoItemList:
          androidlargetwoItemList ?? this.androidlargetwoItemList,
    );
  }

  @override
  List<Object?> get props => [androidlargetwoItemList];
}
