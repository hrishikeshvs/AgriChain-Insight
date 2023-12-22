import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_twelve_screen/models/android_large_twelve_model.dart';
part 'android_large_twelve_event.dart';
part 'android_large_twelve_state.dart';

/// A bloc that manages the state of a AndroidLargeTwelve according to the event that is dispatched to it.
class AndroidLargeTwelveBloc
    extends Bloc<AndroidLargeTwelveEvent, AndroidLargeTwelveState> {
  AndroidLargeTwelveBloc(AndroidLargeTwelveState initialState)
      : super(initialState) {
    on<AndroidLargeTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTwelveInitialEvent event,
    Emitter<AndroidLargeTwelveState> emit,
  ) async {
    emit(state.copyWith(
      locationController: TextEditingController(),
      addressController: TextEditingController(),
    ));
  }
}
