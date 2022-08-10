part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    Uint8List? selectedImage,
  }) = _SignupState;
  factory SignupState.initial() {
    return SignupState(isLoading: false);
  }
}
