// ignore_for_file: must_be_immutable

part of 'android_large_seven_bloc.dart';

/// Represents the state of AndroidLargeSeven in the application.
class AndroidLargeSevenState extends Equatable {
  AndroidLargeSevenState({
    this.phoneNumberController,
    this.selectedCountry,
    this.androidLargeSevenModelObj,
  });

  TextEditingController? phoneNumberController;

  AndroidLargeSevenModel? androidLargeSevenModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        androidLargeSevenModelObj,
      ];
  AndroidLargeSevenState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    AndroidLargeSevenModel? androidLargeSevenModelObj,
  }) {
    return AndroidLargeSevenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      androidLargeSevenModelObj:
          androidLargeSevenModelObj ?? this.androidLargeSevenModelObj,
    );
  }
}
