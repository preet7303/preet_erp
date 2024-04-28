import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:preet_erp/erp_model.dart';
import 'home_screen.dart';

Future<void> addUser(String enroll, String pass, BuildContext context) {
  CollectionReference User = FirebaseFirestore.instance.collection('User');

  return User.add({'enroll': enroll, 'pass': pass})
      .then((value) => Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomeScreen()))
          //debugPrint("Credentials added Successfully!")
          )
      .catchError((error) => debugPrint("Not Added: $error"));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginPage> {
  TextEditingController EnrollController = TextEditingController();
  TextEditingController PassController = TextEditingController();

  Box<ErpModel> box1 = Hive.box<ErpModel>('isloggedin');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff3a3f6c),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 10.0),
                child: Image.asset("assets/images/removed_white_logo.png",
                    width: 150, height: 150),
              ),
              Text(
                "Welcome Back",
                style: GoogleFonts.ptSerif(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Login to your ERP account",
                style: GoogleFonts.ptSerif(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    child: SizedBox(
                      height: 55,
                      child: TextField(
                        controller: EnrollController,
                        decoration: InputDecoration(
                          hintText: ("Enrollment Number"),
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    child: SizedBox(
                      height: 55,
                      child: TextField(
                        controller: PassController,
                        decoration: InputDecoration(
                            hintText: ("Password"),
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          minimumSize:
                              Size(MediaQuery.sizeOf(context).width / 1.1, 50),
                        ),
                        onPressed: () async {
                          await box1
                              .add(
                            const ErpModel(true, "", "", ""),
                          )
                              .then((value) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => HomeScreen()));
                          });
                        },
                        //{
                        // addUser(EnrollController.text.toString(),
                        //     PassController.text.toString(), context);
                        //},
                        child: Text("Login",
                            style: GoogleFonts.abyssinicaSil(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff3a3f6c)))),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
