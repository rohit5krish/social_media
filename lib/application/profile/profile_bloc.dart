import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_media/domain/user_model/user_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<ToggleSelected>((event, emit) {
      List<bool> selectedButton = [true, false];
      if (event.index == 0) {
        selectedButton[0] = true;
        selectedButton[1] = false;
      } else {
        selectedButton[0] = false;
        selectedButton[1] = true;
      }
      emit(state.copyWith(selectedToggle: selectedButton));
    });

    on<GetUserDetails>((event, emit) async {
      DocumentSnapshot snap = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      var snapshot = snap.data() as Map<String, dynamic>;
      UserModel _userDetails = UserModel(
        username: snapshot['username'],
        email: snapshot['email'],
        uid: snapshot['uid'],
        following: snapshot['following'],
        followers: snapshot['followers'],
        photoUrl: snapshot['photoUrl'],
      );
      emit(state.copyWith(userInfos: _userDetails));
    });
  }
}
