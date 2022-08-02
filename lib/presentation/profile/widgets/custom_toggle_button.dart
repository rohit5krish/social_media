import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/profile/profile_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class CustomeToggleButtons extends StatelessWidget {
  const CustomeToggleButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return ToggleButtons(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text('Post', style: whiteTxt16),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Saved',
                style: whiteTxt16,
              ),
            )
          ],
          isSelected: state.selectedToggle,
          selectedColor: blueClr800,
          onPressed: (index) {
            BlocProvider.of<ProfileBloc>(context)
                .add(ToggleSelected(index: index));
          },
          fillColor: blueClr800,
          borderColor: blueClr800,
          borderRadius: BorderRadius.circular(40),
        );
      },
    );
  }
}
