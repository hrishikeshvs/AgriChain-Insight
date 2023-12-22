// ignore_for_file: must_be_immutable

part of 'android_large_twelve_bloc.dart';

/// Represents the state of AndroidLargeTwelve in the application.
class AndroidLargeTwelveState extends Equatable {
  AndroidLargeTwelveState({
    this.locationController,
    this.addressController,
    this.androidLargeTwelveModelObj,
  });

  TextEditingController? locationController;

  TextEditingController? addressController;

  AndroidLargeTwelveModel? androidLargeTwelveModelObj;

  @override
  List<Object?> get props => [
        locationController,
        addressController,
        androidLargeTwelveModelObj,
      ];
  AndroidLargeTwelveState copyWith({
    TextEditingController? locationController,
    TextEditingController? addressController,
    AndroidLargeTwelveModel? androidLargeTwelveModelObj,
  }) {
    return AndroidLargeTwelveState(
      locationController: locationController ?? this.locationController,
      addressController: addressController ?? this.addressController,
      androidLargeTwelveModelObj:
          androidLargeTwelveModelObj ?? this.androidLargeTwelveModelObj,
    );
  }
}
