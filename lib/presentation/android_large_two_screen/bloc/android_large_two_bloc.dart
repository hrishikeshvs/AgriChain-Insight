import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/androidlargetwo_item_model.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_two_screen/models/android_large_two_model.dart';
part 'android_large_two_event.dart';
part 'android_large_two_state.dart';

/// A bloc that manages the state of a AndroidLargeTwo according to the event that is dispatched to it.
class AndroidLargeTwoBloc
    extends Bloc<AndroidLargeTwoEvent, AndroidLargeTwoState> {
  AndroidLargeTwoBloc(AndroidLargeTwoState initialState) : super(initialState) {
    on<AndroidLargeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTwoInitialEvent event,
    Emitter<AndroidLargeTwoState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeTwoModelObj: state.androidLargeTwoModelObj?.copyWith(
      androidlargetwoItemList: fillAndroidlargetwoItemList(),
    )));
  }

  List<AndroidlargetwoItemModel> fillAndroidlargetwoItemList() {
    return List.generate(5, (index) => AndroidlargetwoItemModel());
  }
}
