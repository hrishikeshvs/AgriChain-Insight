// ignore_for_file: must_be_immutable

part of 'android_large_fifteen_bloc.dart';

/// Represents the state of AndroidLargeFifteen in the application.
class AndroidLargeFifteenState extends Equatable {
  AndroidLargeFifteenState({this.androidLargeFifteenModelObj});

  AndroidLargeFifteenModel? androidLargeFifteenModelObj;

  @override
  List<Object?> get props => [
        androidLargeFifteenModelObj,
      ];
  AndroidLargeFifteenState copyWith(
      {AndroidLargeFifteenModel? androidLargeFifteenModelObj}) {
    return AndroidLargeFifteenState(
      androidLargeFifteenModelObj:
          androidLargeFifteenModelObj ?? this.androidLargeFifteenModelObj,
    );
  }
}
