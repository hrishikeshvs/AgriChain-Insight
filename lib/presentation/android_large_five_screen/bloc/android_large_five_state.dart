// ignore_for_file: must_be_immutable

part of 'android_large_five_bloc.dart';

/// Represents the state of AndroidLargeFive in the application.
class AndroidLargeFiveState extends Equatable {
  AndroidLargeFiveState({this.androidLargeFiveModelObj});

  AndroidLargeFiveModel? androidLargeFiveModelObj;

  @override
  List<Object?> get props => [
        androidLargeFiveModelObj,
      ];
  AndroidLargeFiveState copyWith(
      {AndroidLargeFiveModel? androidLargeFiveModelObj}) {
    return AndroidLargeFiveState(
      androidLargeFiveModelObj:
          androidLargeFiveModelObj ?? this.androidLargeFiveModelObj,
    );
  }
}
