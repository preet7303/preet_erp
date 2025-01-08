import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preet_erp/pages/Attendance/view/attendance.dart';
import 'package:preet_erp/pages/Fees/View/fees.dart';
import 'package:preet_erp/pages/event_page/View/Event.dart';
import 'package:preet_erp/pages/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> Images = [
      "assets/images/college_photo.jpeg",
      "assets/images/college_photo2.jpeg",
      "assets/images/svvv_group.JPG",
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RichText(
                      text: TextSpan(
                          text: "Hello,",
                          style: GoogleFonts.libreBaskerville(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: "Preet",
                                style: GoogleFonts.libreBaskerville(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black))
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SettingsPage()));
                      },
                      child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff6776F9),
                          child:
                              Image.asset("assets/images/Student_avatar.png")),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff5f7fa),
                      borderRadius: BorderRadius.circular(40)),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Color(0xff6776F9)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff6776F9),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                ),
              ),
              // Container(
              //   width: MediaQuery.sizeOf(context).width,
              //   height: 400,
              // ),
              CarouselSlider.builder(
                  itemCount: 2,
                  itemBuilder:
                      (BuildContext context, int index, int itemIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          Images[index],
                            // width: 250,
                          // height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                      enableInfiniteScroll: true,
                      viewportFraction: 0.9,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2))),
              Container(
                width: MediaQuery.sizeOf(context).width / 1.05,
                height: MediaQuery.sizeOf(context).height / 2,
                decoration: BoxDecoration(
                    color: Color(0xfff5f7fa),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xff6776F9),
                                  borderRadius: BorderRadius.circular(30)),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Color(0xff6776F9)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => EventPage()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/partying_blue.png",
                                      width: 150,
                                    ),
                                    Text("Events",
                                        style: GoogleFonts.openSans(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black))
                                  ],
                                ),
                              )),
                        ),
                        Column(
                          children: [
                            Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff6776F9)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: Color(0xff6776F9)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  AttendancePage()));
                                    },
                                    child: Image.asset(
                                      "assets/images/attendance_blue.png",
                                      width: 60,
                                      height: 60,
                                    ))),
                            Text("Attendance",
                                style: GoogleFonts.openSans(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                            Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff6776F9)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: Color(0xff6776F9)),
                                    onPressed: () {},
                                    child: Image.asset(
                                      "assets/images/marks_blue.png",
                                      width: 80,
                                      height: 80,
                                    ))),
                            Text("Marks",
                                style: GoogleFonts.openSans(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black))
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff90aaea)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Color(0xff6776F9)),
                                onPressed: () {},
                                child: Image.asset(
                                  "assets/images/profile_blue.png",
                                  width: 80,
                                  height: 80,
                                ))),
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff6776F9)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Color(0xff6776F9)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => FeesDetail()));
                                },
                                child: Image.asset(
                                  "assets/images/fees_blue.png",
                                  width: 100,
                                  height: 100,
                                ))),
                        Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff6776F9)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Color(0xff6776F9)),
                                onPressed: () {},
                                child: Image.asset(
                                  "assets/images/placement_blue.png",
                                  height: 200,
                                ))),
                      ],
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("Student Profile",
                            style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text("Fees",
                            style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text("Placement",
                            style: GoogleFonts.openSans(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Colors.black)),
                      )
                    ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
