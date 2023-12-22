// ignore_for_file: must_be_immutable

part of 'android_large_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeNineEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeNine widget is first created.
class AndroidLargeNineInitialEvent extends AndroidLargeNineEvent {
  @override
  List<Object?> get props => [];
}
