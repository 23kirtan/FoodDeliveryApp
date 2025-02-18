import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery_app/homescreen.dart';
import 'package:fooddelivery_app/ragister.dart';

class AuthGate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // While the state is loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          // If there's an error in stream
          if (snapshot.hasError) {
            return Center(
              child: Text('Something went wrong! Please try again later.'),
            );
          }

          // If the user is logged in
          if (snapshot.hasData) {
            return HomeScreen();
          }

          // If the user is not logged in
          return RagisterPage();
        },
      ),
    );
  }
}
