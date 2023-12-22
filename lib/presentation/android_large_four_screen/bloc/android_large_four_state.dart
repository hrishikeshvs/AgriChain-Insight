// ignore_for_file: must_be_immutable

part of 'android_large_four_bloc.dart';

/// Represents the state of AndroidLargeFour in the application.
class AndroidLargeFourState extends Equatable {
  AndroidLargeFourState({this.androidLargeFourModelObj});

  AndroidLargeFourModel? androidLargeFourModelObj;

  @override
  List<Object?> get props => [
        androidLargeFourModelObj,
      ];
  AndroidLargeFourState copyWith(
      {AndroidLargeFourModel? androidLargeFourModelObj}) {
    return AndroidLargeFourState(
      androidLargeFourModelObj:
          androidLargeFourModelObj ?? this.androidLargeFourModelObj,
    );
  }
}
