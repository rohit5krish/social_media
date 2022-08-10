part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.updateImage({
    Uint8List? image,
  }) = UpdateImage;
  const factory SignupEvent.updateLoading({
    required bool isLoad,
  }) = UpdateLoading;
}
