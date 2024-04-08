import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:preet_erp/erp_model.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Box<ErpModel> box1 = Hive.box<ErpModel>('isloggedin');
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Color(0xff6776F9),
                    child: Image.asset("assets/images/Student_avatar.png")),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Edit Profile Picture",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff6776F9)),
                      ),
                      Icon(Icons.edit, color: Color(0xff6776F9)),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 50),
                child: Text("Full Name",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff6776F9))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.face, color: Color(0xff6776F9)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6776F9),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6776F9),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20),
                child: Text("Email",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff6776F9))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail, color: Color(0xff6776F9)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6776F9),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6776F9),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 20),
                child: Text("Password",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff6776F9))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 60,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Color(0xff6776F9)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6776F9),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff6776F9),
                          ),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width / 1.05,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff6776F9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () async{
                        await box1.put(
                          "isloggedin",
                           ErpModel(true, nameController.text.toString(), emailController.text.toString(), passwordController.text.toString()),
                        ).then((value){
                          Navigator.pop(context);
                        });


                      },
                      child: Text(
                        "Save",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
