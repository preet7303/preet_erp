import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:preet_erp/erp_model.dart';
import 'package:preet_erp/pages/home_screen.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Box<ErpModel> box1 = Hive.box<ErpModel>('isloggedin');

  @override
  void initState() {

    // TODO: implement initState
    Timer(const Duration(seconds  : 5), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => checkStudent()));
    });
    super.initState();
  }

  Widget checkStudent(){
    if(box1.values.isNotEmpty){
      return HomeScreen();
    }else{
      return LoginPage();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Color(0xff3a3f6c),
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/removed_svvv_logo.png", width: 70, height: 70,),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height/6,width: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/icons.png",
        
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
                    child: Text("SVVV-A road to Excellence!", style: GoogleFonts.abhayaLibre(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),),
                  ),
                  Text("Manage your whole college on one platfrom", style: GoogleFonts.notoSerif(fontSize: 16, color: Colors.white70, fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
