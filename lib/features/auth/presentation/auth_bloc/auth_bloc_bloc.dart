import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:cars/features/auth/presentation/auth_bloc/index.dart';

class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {

  AuthBlocBloc(AuthBlocState initialState) : super(initialState){
   on<AuthBlocEvent>((event, emit) {
      return emit.forEach<AuthBlocState>(
        event.applyAsync(currentState: state, bloc: this),
        onData: (state) => state,
        onError: (error, stackTrace) {
          developer.log('$error', name: 'AuthBlocBloc', error: error, stackTrace: stackTrace);
          return ErrorAuthBlocState(error.toString());
        },
      );
    });
  }
}
