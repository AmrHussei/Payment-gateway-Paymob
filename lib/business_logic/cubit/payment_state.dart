part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

class PaymentInitial extends PaymentState {}

class OrderSuccess extends PaymentState {}

class OrderLoading extends PaymentState {}

class OrderError extends PaymentState {}

class GetRefCodeSucces extends PaymentState {}

class GetRefCode extends PaymentState {}
