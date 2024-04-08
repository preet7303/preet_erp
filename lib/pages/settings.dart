import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:preet_erp/erp_model.dart';
import 'package:preet_erp/pages/edit_profile.dart';
import 'package:preet_erp/pages/login.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  Box<ErpModel> box1 = Hive.box<ErpModel>('isloggedin');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Settings",
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.black))),
        ),
        body:  ValueListenableBuilder(
          valueListenable: Hive.box<ErpModel>('isloggedin').listenable(keys: ['isloggedin']),
          builder: (context,Box box, widget){
            return Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset("assets/images/avatar_student.jpg",
                              height: 80, width: 80),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(box1.get('isloggedin')?.FullName ?? "",
                                  style: GoogleFonts.openSans(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black))),
                          Text("21100BTCSBS09707",
                              style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black)),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.edit),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => EditProfile()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 160.0, left: 20.0),
                          child: Text(
                            "Edit Profile",
                            style: GoogleFonts.openSans(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Icon(Icons.group),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 180.0, left: 20.0),
                        child: Text(
                          "About Us",
                          style: GoogleFonts.openSans(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.call),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 160.0, left: 20.0),
                        child: Text(
                          "Contact Us",
                          style: GoogleFonts.openSans(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await box1.clear().then((value) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => LoginPage()),
                              (route) =>   false);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.logout_rounded, color: Colors.red),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 180.0, left: 20.0),
                          child: Text(
                            "Log Out",
                            style: GoogleFonts.openSans(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        // Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
