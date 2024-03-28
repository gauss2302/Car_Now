import 'package:equatable/equatable.dart';

abstract class AuthBlocState extends Equatable {
  AuthBlocState();

  @override
  List<Object> get props => [];
}

/// UnInitialized
class UnAuthBlocState extends AuthBlocState {

  UnAuthBlocState();

  @override
  String toString() => 'UnAuthBlocState';
}

/// Initialized
class InAuthBlocState extends AuthBlocState {
  InAuthBlocState(this.hello);
  
  final String hello;

  @override
  String toString() => 'InAuthBlocState $hello';

  @override
  List<Object> get props => [hello];
}

class ErrorAuthBlocState extends AuthBlocState {
  ErrorAuthBlocState(this.errorMessage);
 
  final String errorMessage;
  
  @override
  String toString() => 'ErrorAuthBlocState';

  @override
  List<Object> get props => [errorMessage];
}
