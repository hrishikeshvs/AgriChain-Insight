import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_nine_container_screen/models/android_large_nine_container_model.dart';
part 'android_large_nine_container_event.dart';
part 'android_large_nine_container_state.dart';

/// A bloc that manages the state of a AndroidLargeNineContainer according to the event that is dispatched to it.
class AndroidLargeNineContainerBloc extends Bloc<AndroidLargeNineContainerEvent,
    AndroidLargeNineContainerState> {
  AndroidLargeNineContainerBloc(AndroidLargeNineContainerState initialState)
      : super(initialState) {
    on<AndroidLargeNineContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeNineContainerInitialEvent event,
    Emitter<AndroidLargeNineContainerState> emit,
  ) async {}
}
