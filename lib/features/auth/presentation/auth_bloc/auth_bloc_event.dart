import 'dart:async';
import 'dart:developer' as developer;

import 'package:cars/features/auth/presentation/auth_bloc/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthBlocEvent {
  Stream<AuthBlocState> applyAsync(
      {AuthBlocState currentState, AuthBlocBloc bloc});
}

class UnAuthBlocEvent extends AuthBlocEvent {
  @override
  Stream<AuthBlocState> applyAsync({AuthBlocState? currentState, AuthBlocBloc? bloc}) async* {
    yield UnAuthBlocState();
  }
}

class LoadAuthBlocEvent extends AuthBlocEvent {
   
  @override
  Stream<AuthBlocState> applyAsync(
      {AuthBlocState? currentState, AuthBlocBloc? bloc}) async* {
    try {
      yield UnAuthBlocState();
      await Future.delayed(const Duration(seconds: 1));
      yield InAuthBlocState('Hello world');
    } catch (_, stackTrace) {
      developer.log('$_', name: 'LoadAuthBlocEvent', error: _, stackTrace: stackTrace);
      yield ErrorAuthBlocState( _.toString());
    }
  }
}
