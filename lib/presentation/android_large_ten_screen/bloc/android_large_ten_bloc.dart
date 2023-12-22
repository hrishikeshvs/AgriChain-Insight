import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_ten_screen/models/android_large_ten_model.dart';
part 'android_large_ten_event.dart';
part 'android_large_ten_state.dart';

/// A bloc that manages the state of a AndroidLargeTen according to the event that is dispatched to it.
class AndroidLargeTenBloc
    extends Bloc<AndroidLargeTenEvent, AndroidLargeTenState> {
  AndroidLargeTenBloc(AndroidLargeTenState initialState) : super(initialState) {
    on<AndroidLargeTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeTenInitialEvent event,
    Emitter<AndroidLargeTenState> emit,
  ) async {}
}
