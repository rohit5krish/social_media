import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupState.initial()) {
    on<UpdateImage>((event, emit) {
      emit(state.copyWith(selectedImage: event.image));
    });

    on<UpdateLoading>((event, emit) {
      emit(state.copyWith(isLoading: event.isLoad));
    });

    on<GoogleLogin>((event, emit) async {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        emit(state.copyWith(
            usrCred:
                await FirebaseAuth.instance.signInWithCredential(credential)));
      }
    });
  }
}
