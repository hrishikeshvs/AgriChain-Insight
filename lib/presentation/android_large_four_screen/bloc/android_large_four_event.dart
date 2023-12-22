// ignore_for_file: must_be_immutable

part of 'android_large_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeFourEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeFour widget is first created.
class AndroidLargeFourInitialEvent extends AndroidLargeFourEvent {
  @override
  List<Object?> get props => [];
}
