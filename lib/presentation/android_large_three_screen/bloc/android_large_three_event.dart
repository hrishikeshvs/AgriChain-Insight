// ignore_for_file: must_be_immutable

part of 'android_large_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeThreeEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeThree widget is first created.
class AndroidLargeThreeInitialEvent extends AndroidLargeThreeEvent {
  @override
  List<Object?> get props => [];
}
