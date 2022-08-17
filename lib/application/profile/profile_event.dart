part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.toggleSelected({
    required int index,
  }) = ToggleSelected;
  const factory ProfileEvent.getUserDetails() = GetUserDetails;
}
