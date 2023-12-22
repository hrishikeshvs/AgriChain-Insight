// ignore_for_file: must_be_immutable

part of 'android_large_nine_bloc.dart';

/// Represents the state of AndroidLargeNine in the application.
class AndroidLargeNineState extends Equatable {
  AndroidLargeNineState({this.androidLargeNineModelObj});

  AndroidLargeNineModel? androidLargeNineModelObj;

  @override
  List<Object?> get props => [
        androidLargeNineModelObj,
      ];
  AndroidLargeNineState copyWith(
      {AndroidLargeNineModel? androidLargeNineModelObj}) {
    return AndroidLargeNineState(
      androidLargeNineModelObj:
          androidLargeNineModelObj ?? this.androidLargeNineModelObj,
    );
  }
}
