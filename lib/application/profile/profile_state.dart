part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required List<bool> selectedToggle,
  }) = _ProfileState;

  factory ProfileState.initial() {
    return ProfileState(selectedToggle: [true, false]);
  }
}
