import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';
import 'package:social_media/core/constants/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'English(India)',
                  style: TextStyle(color: whiteClr60),
                ),
                // Spacer(),
                Column(
                  children: [
                    const Text(
                      'Login to your account',
                      style: whiteTxt22,
                    ),
                    sbHeight30,
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: whiteClr24,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label: const Text(
                            'Username or Phone number',
                            style: txtFormStyle,
                          )),
                    ),
                    sbHeight10,
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: whiteClr24,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label: const Text(
                            'Password',
                            style: txtFormStyle,
                          )),
                    ),
                    sbHeight10,
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: blueClr800,
                            minimumSize: const Size(double.infinity, 45),
                            shape: const StadiumBorder()),
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: whiteTxt16,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?')),
                    sbHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: whiteClr60,
                          ),
                        ),
                        Text(
                          'OR',
                          style: TextStyle(color: whiteClr60),
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10,
                            endIndent: 10,
                            color: whiteClr60,
                          ),
                        ),
                      ],
                    ),
                    sbHeight30,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          color: blueClr800,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/googleLogo1.png',
                            height: 20,
                            width: 20,
                          ),
                          const Spacer(),
                          const Text(
                            'Sign in Google account',
                            style: whiteTxt16,
                          ),
                          const Spacer()
                        ],
                      ),
                    )
                  ],
                ),
                // Spacer(),
                Column(
                  children: [
                    Divider(
                      color: whiteClr60,
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: whiteTxt16,
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              'Signup',
                              style: blueTxt16,
                            ))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
