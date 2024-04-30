part of 'order_bloc.dart';

abstract class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class OrderInitiated extends OrderEvent {}

class OrderCompleted extends OrderEvent {}

class OrderCancelled extends OrderEvent {}
