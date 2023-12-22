// ignore_for_file: must_be_immutable

part of 'android_large_nine_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeNineContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeNineContainerEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeNineContainer widget is first created.
class AndroidLargeNineContainerInitialEvent
    extends AndroidLargeNineContainerEvent {
  @override
  List<Object?> get props => [];
}
