import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/imageslidingfor_item_model.dart';
import '../models/userprofile_item_model.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_eight_page/models/android_large_eight_model.dart';
part 'android_large_eight_event.dart';
part 'android_large_eight_state.dart';

/// A bloc that manages the state of a AndroidLargeEight according to the event that is dispatched to it.
class AndroidLargeEightBloc
    extends Bloc<AndroidLargeEightEvent, AndroidLargeEightState> {
  AndroidLargeEightBloc(AndroidLargeEightState initialState)
      : super(initialState) {
    on<AndroidLargeEightInitialEvent>(_onInitialize);
  }

  List<ImageslidingforItemModel> fillImageslidingforItemList() {
    return List.generate(1, (index) => ImageslidingforItemModel());
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          userImage: ImageConstant.imgImage7, userName: "Farmer"),
      UserprofileItemModel(
          userImage: ImageConstant.imgImage9, userName: "     Crop"),
      UserprofileItemModel(
          userImage: ImageConstant.imgImage10, userName: "    Soil"),
      UserprofileItemModel(
          userImage: ImageConstant.imgImage11, userName: "Market Price"),
      UserprofileItemModel(userName: "weather"),
      UserprofileItemModel(userName: "       Drone")
    ];
  }

  _onInitialize(
    AndroidLargeEightInitialEvent event,
    Emitter<AndroidLargeEightState> emit,
  ) async {
    emit(state.copyWith(
        searchController: TextEditingController(), sliderIndex: 0));
    emit(state.copyWith(
        androidLargeEightModelObj: state.androidLargeEightModelObj?.copyWith(
            imageslidingforItemList: fillImageslidingforItemList(),
            userprofileItemList: fillUserprofileItemList())));
  }
}
