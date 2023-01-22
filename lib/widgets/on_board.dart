import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth.dart';
import '../views/homepage.dart';
import '../views/sign_in_page.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    final _auth = Provider.of<Auth>(context, listen: false);
    return StreamBuilder<User?>(
      stream: _auth.authStatus(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return snapshot.data != null ? HomePage() : SignInPage();
        } else {
          return SizedBox(
              height: 300, width: 300, child: CircularProgressIndicator());
        }
      },
    );
  }
}
