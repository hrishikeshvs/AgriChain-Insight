// ignore_for_file: must_be_immutable

part of 'android_large_ten_bloc.dart';

/// Represents the state of AndroidLargeTen in the application.
class AndroidLargeTenState extends Equatable {
  AndroidLargeTenState({this.androidLargeTenModelObj});

  AndroidLargeTenModel? androidLargeTenModelObj;

  @override
  List<Object?> get props => [
        androidLargeTenModelObj,
      ];
  AndroidLargeTenState copyWith(
      {AndroidLargeTenModel? androidLargeTenModelObj}) {
    return AndroidLargeTenState(
      androidLargeTenModelObj:
          androidLargeTenModelObj ?? this.androidLargeTenModelObj,
    );
  }
}
