// ignore_for_file: must_be_immutable

part of 'android_large_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSevenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeSeven widget is first created.
class AndroidLargeSevenInitialEvent extends AndroidLargeSevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends AndroidLargeSevenEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
