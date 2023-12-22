// ignore_for_file: must_be_immutable

part of 'android_large_eight_bloc.dart';

/// Represents the state of AndroidLargeEight in the application.
class AndroidLargeEightState extends Equatable {
  AndroidLargeEightState({
    this.searchController,
    this.sliderIndex = 0,
    this.androidLargeEightModelObj,
  });

  TextEditingController? searchController;

  AndroidLargeEightModel? androidLargeEightModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        androidLargeEightModelObj,
      ];
  AndroidLargeEightState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    AndroidLargeEightModel? androidLargeEightModelObj,
  }) {
    return AndroidLargeEightState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      androidLargeEightModelObj:
          androidLargeEightModelObj ?? this.androidLargeEightModelObj,
    );
  }
}
