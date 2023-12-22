// ignore_for_file: must_be_immutable

part of 'android_large_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeFifteenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeFifteen widget is first created.
class AndroidLargeFifteenInitialEvent extends AndroidLargeFifteenEvent {
  @override
  List<Object?> get props => [];
}
