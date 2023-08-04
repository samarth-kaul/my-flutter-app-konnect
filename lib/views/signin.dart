import 'package:flutter/material.dart';
import 'package:konnect_app/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Konnect"),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: ()
            {
              AuthMethods().signInWithGoogle(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xffDB4437),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text("Sign-In with Google"),
            ),
          ),
        ),
      ),
    );
  }
}
