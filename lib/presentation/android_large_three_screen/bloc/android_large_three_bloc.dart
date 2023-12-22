import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_three_screen/models/android_large_three_model.dart';
part 'android_large_three_event.dart';
part 'android_large_three_state.dart';

/// A bloc that manages the state of a AndroidLargeThree according to the event that is dispatched to it.
class AndroidLargeThreeBloc
    extends Bloc<AndroidLargeThreeEvent, AndroidLargeThreeState> {
  AndroidLargeThreeBloc(AndroidLargeThreeState initialState)
      : super(initialState) {
    on<AndroidLargeThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeThreeInitialEvent event,
    Emitter<AndroidLargeThreeState> emit,
  ) async {}
}
