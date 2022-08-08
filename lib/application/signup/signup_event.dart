part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.updateImage({
    required Uint8List image,
  }) = UpdateImage;
}
