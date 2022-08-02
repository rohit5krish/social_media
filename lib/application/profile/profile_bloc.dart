import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ToggleSelected>((event, emit) {
      List<bool> selectedButton = [true,false];
      if (event.index == 0) {
        selectedButton[0] = true;
        selectedButton[1] = false;
      } else {
        selectedButton[0] = false;
        selectedButton[1] = true;
      }
      emit(state.copyWith(selectedToggle: selectedButton));
    });
  }
}
