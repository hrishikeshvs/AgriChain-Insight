// ignore_for_file: must_be_immutable

part of 'android_large_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeFourteenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeFourteen widget is first created.
class AndroidLargeFourteenInitialEvent extends AndroidLargeFourteenEvent {
  @override
  List<Object?> get props => [];
}
