// ignore_for_file: must_be_immutable

part of 'android_large_fourteen_bloc.dart';

/// Represents the state of AndroidLargeFourteen in the application.
class AndroidLargeFourteenState extends Equatable {
  AndroidLargeFourteenState({this.androidLargeFourteenModelObj});

  AndroidLargeFourteenModel? androidLargeFourteenModelObj;

  @override
  List<Object?> get props => [
        androidLargeFourteenModelObj,
      ];
  AndroidLargeFourteenState copyWith(
      {AndroidLargeFourteenModel? androidLargeFourteenModelObj}) {
    return AndroidLargeFourteenState(
      androidLargeFourteenModelObj:
          androidLargeFourteenModelObj ?? this.androidLargeFourteenModelObj,
    );
  }
}
