import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/signup/signup_bloc.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';
import 'package:social_media/domain/signup_model/signup_model.dart';
import 'package:social_media/presentation/signup/functionalities/signup_button.dart';
import 'package:social_media/presentation/signup/widgets/profile_pic_choice.dart';
import 'package:social_media/presentation/signup/widgets/signup_inherited_widget.dart';
import 'package:social_media/presentation/widgets/custom_blue_button.dart';
import 'package:social_media/presentation/widgets/custom_text_field.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final _usernameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isDefaultDp = true;
  var tempImage;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<SignupBloc>(context).add(UpdateImage(image: null));
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: blackColor,
      body: InkWell(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        onTap: () {
          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'English',
                    style: TextStyle(color: whiteClr60),
                  ),
                  Spacer(),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Text(
                          'Create an account',
                          style: whiteTxt25,
                        ),
                        sbHeight20,
                        Stack(
                          children: [
                            BlocBuilder<SignupBloc, SignupState>(
                              builder: (context, state) {
                                if (state.selectedImage != null) {
                                  tempImage = state.selectedImage;
                                }
                                return isDefaultDp &&
                                        state.selectedImage == null
                                    ? CircleAvatar(
                                        radius: 60,
                                        backgroundImage: NetworkImage(
                                            'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg'),
                                      )
                                    : CircleAvatar(
                                        radius: 60,
                                        backgroundImage: MemoryImage(tempImage),
                                      );
                              },
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: blueClr800,
                                  child: IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {
                                        isDefaultDp = addProfileChoice(context);
                                      },
                                      icon: Icon(
                                        Icons.camera_alt_outlined,
                                        size: 28,
                                        color: whiteColor,
                                      )),
                                ))
                          ],
                        ),
                        sbHeight20,
                        CustomTextField(
                          labelText: 'Enter a Username',
                          textCtrl: _usernameCtrl,
                          formKey: formKey,
                        ),
                        sbHeight10,
                        CustomTextField(
                          labelText: 'Email',
                          textCtrl: _emailCtrl,
                          formKey: formKey,
                        ),
                        sbHeight10,
                        TextFormField(
                          controller: _passCtrl,
                          style: whiteTxt16,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter password';
                            } else if (value.length < 6) {
                              return 'Minimum 6 characters required';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: whiteClr24,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              label: Text(
                                'Password',
                                style: txtFormStyle,
                              )),
                        ),
                        sbHeight10,
                        BlocBuilder<SignupBloc, SignupState>(
                          builder: (context, state) {
                            return CustomBlueButton(
                              buttonText: 'Sign Up',
                              formKey: formKey,
                              onButtonClick: () async {
                                return await SignupButtonClicked(
                                  context: context,
                                  formKey: formKey,
                                  signupDetails: SignupModel(
                                    username: _usernameCtrl.text.trim(),
                                    email: _emailCtrl.text.trim(),
                                    password: _passCtrl.text.trim(),
                                    profImage: tempImage,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
