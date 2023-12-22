// ignore_for_file: must_be_immutable

part of 'android_large_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeEightEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeEight widget is first created.
class AndroidLargeEightInitialEvent extends AndroidLargeEightEvent {
  @override
  List<Object?> get props => [];
}
