// ignore_for_file: must_be_immutable

part of 'android_large_three_bloc.dart';

/// Represents the state of AndroidLargeThree in the application.
class AndroidLargeThreeState extends Equatable {
  AndroidLargeThreeState({this.androidLargeThreeModelObj});

  AndroidLargeThreeModel? androidLargeThreeModelObj;

  @override
  List<Object?> get props => [
        androidLargeThreeModelObj,
      ];
  AndroidLargeThreeState copyWith(
      {AndroidLargeThreeModel? androidLargeThreeModelObj}) {
    return AndroidLargeThreeState(
      androidLargeThreeModelObj:
          androidLargeThreeModelObj ?? this.androidLargeThreeModelObj,
    );
  }
}
