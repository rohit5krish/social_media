import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupState.initial()) {
    on<UpdateImage>((event, emit) {
      emit(SignupState(selectedImage: event.image));
    });
  }
}
