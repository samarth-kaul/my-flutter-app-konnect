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
          title: Text(
            "Konnect",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              AuthMethods().signInWithGoogle(context);
            },
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.green,
              ),
              padding: EdgeInsets.all(18),
              child: Center(
                child: Text("Sign-In with Google",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
