import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bookswa/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'books_view.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _email = '';
  var _password = '';
  var _isLoading = false;

  final _formKey = GlobalKey<FormState>();

  Future<void> _submit() async {
    final _isValid = _formKey.currentState!.validate();
    if (!_isValid) {
      return;
    }
    _formKey.currentState!.save();

    setState(() {
      _isLoading = true;
    });

    UserCredential userCredential;

    userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: _email, password: _password);
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user!.uid)
        .set({
      // 'id': userCredential.user!.uid,
      'username': _email,
      'password': _password,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          key: _formKey,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                // onChanged: (value) {
                //   setState(() {
                //     _email = value.trim();
                //   });
                // },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    label: Text("şifre"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                // onChanged: (value) {
                //   setState(() {
                //     _password = value.trim();
                //   });
                // },
              ),
            ),
            _isLoading
                ? CircularProgressIndicator()
                : Container(
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      onPressed: _submit,
                      //() async {
                      // final FirebaseAuth _auth = FirebaseAuth.instance;
                      // UserCredential result =
                      //     await _auth.signInWithEmailAndPassword(
                      //         email: _email, password: _password);
                      // User? firebaseUser = result.user;

                      // print(firebaseUser!.uid);

                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(builder: (context) => BooksView()));
                      // }

                      child: Text("Log In"),
                    ),
                  ),
            _isLoading
                ? CircularProgressIndicator()
                : Container(
                    child: TextButton(
                        onPressed: _submit,
                        // () async {
                        //   final FirebaseAuth _auth = FirebaseAuth.instance;
                        //   UserCredential result = await FirebaseAuth.instance
                        //       .createUserWithEmailAndPassword(
                        //           email: _email, password: _password);
                        //   User? firebaseUser = result.user;
                        //   print(firebaseUser!.uid);
                        //   print("KAYIT BAŞARILI");
                        // }

                        child: Text("Sign Up")),
                  )
          ],
        ),
      ),
    );
  }
}

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("İkinci Sayfa")),
    );
  }
}
