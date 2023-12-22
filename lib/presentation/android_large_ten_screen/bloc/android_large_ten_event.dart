// ignore_for_file: must_be_immutable

part of 'android_large_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTen widget is first created.
class AndroidLargeTenInitialEvent extends AndroidLargeTenEvent {
  @override
  List<Object?> get props => [];
}
