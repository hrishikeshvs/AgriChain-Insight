import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:hrishikesh_s_application1/presentation/android_large_seven_screen/models/android_large_seven_model.dart';
part 'android_large_seven_event.dart';
part 'android_large_seven_state.dart';

/// A bloc that manages the state of a AndroidLargeSeven according to the event that is dispatched to it.
class AndroidLargeSevenBloc
    extends Bloc<AndroidLargeSevenEvent, AndroidLargeSevenState> {
  AndroidLargeSevenBloc(AndroidLargeSevenState initialState)
      : super(initialState) {
    on<AndroidLargeSevenInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<AndroidLargeSevenState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    AndroidLargeSevenInitialEvent event,
    Emitter<AndroidLargeSevenState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
