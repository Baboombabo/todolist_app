import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_app/components/my_icon_btn.dart';
import 'package:todolist_app/components/my_textformfield.dart';
import 'package:todolist_app/constant/constant.dart';
import 'package:todolist_app/screens/home_screen.dart';
import 'package:todolist_app/screens/sign_up_screen.dart';

import '../components/my_button.dart';

import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final String txtMsg = '';

  void _showDialog(String txtMsg) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
            child: AlertDialog(
          backgroundColor: Colors.amber,
          title: const Text('Sign In'),
          content: Text(txtMsg),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context, 'Cancel'), child: const Text('OK')),
          ],
        ));
      },
    );
  }
  //Functions signInUser()

  void signInUser() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      _showDialog('Login successfully!');
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
    } on FirebaseAuthException catch (e) {
      _showDialog('Failed to login!');
    }  // Add username and password to Firebase this Friday 11, Oct 2024.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // const Spacer(),
                Text(
                  'Hello, ready to get started!',
                  style: textTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Please sign-in to your account.',
                  style: textSubTitle,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextFormField(
                    controller: emailController,
                    obscureText: false,
                    labelText: 'Email',
                    hintText: 'Enter your email'),
                const SizedBox(
                  height: 20,
                ),
                MyTextFormField(
                    controller: passwordController,
                    obscureText: true,
                    labelText: 'Password',
                    hintText: 'Enter your password'),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password?',
                      style: GoogleFonts.lato(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                  onTap: signInUser,
                  hinText: 'Sign In',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyIconBtn(
                      imagePath: 'assets/images/google_icon.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyIconBtn(
                      imagePath: 'assets/images/ios_icon.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          // Navigate to RegisterScreen
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.blue),
                        )),
                    const Text(
                      'now',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
