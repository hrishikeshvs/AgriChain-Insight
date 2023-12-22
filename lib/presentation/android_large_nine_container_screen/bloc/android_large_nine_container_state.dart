// ignore_for_file: must_be_immutable

part of 'android_large_nine_container_bloc.dart';

/// Represents the state of AndroidLargeNineContainer in the application.
class AndroidLargeNineContainerState extends Equatable {
  AndroidLargeNineContainerState({this.androidLargeNineContainerModelObj});

  AndroidLargeNineContainerModel? androidLargeNineContainerModelObj;

  @override
  List<Object?> get props => [
        androidLargeNineContainerModelObj,
      ];
  AndroidLargeNineContainerState copyWith(
      {AndroidLargeNineContainerModel? androidLargeNineContainerModelObj}) {
    return AndroidLargeNineContainerState(
      androidLargeNineContainerModelObj: androidLargeNineContainerModelObj ??
          this.androidLargeNineContainerModelObj,
    );
  }
}
