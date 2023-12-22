// ignore_for_file: must_be_immutable

part of 'android_large_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwelveEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwelve widget is first created.
class AndroidLargeTwelveInitialEvent extends AndroidLargeTwelveEvent {
  @override
  List<Object?> get props => [];
}
