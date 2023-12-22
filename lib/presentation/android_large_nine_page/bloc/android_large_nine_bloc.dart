import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilesection_item_model.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_nine_page/models/android_large_nine_model.dart';
part 'android_large_nine_event.dart';
part 'android_large_nine_state.dart';

/// A bloc that manages the state of a AndroidLargeNine according to the event that is dispatched to it.
class AndroidLargeNineBloc
    extends Bloc<AndroidLargeNineEvent, AndroidLargeNineState> {
  AndroidLargeNineBloc(AndroidLargeNineState initialState)
      : super(initialState) {
    on<AndroidLargeNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeNineInitialEvent event,
    Emitter<AndroidLargeNineState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeNineModelObj: state.androidLargeNineModelObj?.copyWith(
      userprofilesectionItemList: fillUserprofilesectionItemList(),
    )));
  }

  List<UserprofilesectionItemModel> fillUserprofilesectionItemList() {
    return [
      UserprofilesectionItemModel(
          soilDetailsImage: ImageConstant.imgImage2,
          soilDetailsText: "Soil Details")
    ];
  }
}
