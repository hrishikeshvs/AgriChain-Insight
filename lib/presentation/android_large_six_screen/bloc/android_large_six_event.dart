// ignore_for_file: must_be_immutable

part of 'android_large_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSixEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeSix widget is first created.
class AndroidLargeSixInitialEvent extends AndroidLargeSixEvent {
  @override
  List<Object?> get props => [];
}
