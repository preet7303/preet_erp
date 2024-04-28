import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class DetailedAttendance extends StatefulWidget {
  const DetailedAttendance({super.key});

  @override
  State<DetailedAttendance> createState() => _DetailedAttendanceState();
}

class _DetailedAttendanceState extends State<DetailedAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6776F9),
      body: SafeArea(
        child: Stack(children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xff6776F9)),
          Positioned(
            top: 130,
            child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height / 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
            child: Container(
              child: TableCalendar(focusedDay: DateTime.utc(2024, 04, 14), firstDay: DateTime.utc(2024, 01, 01), lastDay: DateTime.utc(2025,01,01),)
            )
            ),
          ),
          Positioned(
            top: 30,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white),
                Text(
                  "Attendance in Detail",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                         fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
              top: 90,
              right: 100,
              child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,))
          ,Positioned(
          top: 30,
          right: 100,
          child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,))
          ,Positioned(
          top: 150,
          right: 50,
          child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,))
          ,Positioned(
          top: 200,
          right: 70,
          child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,))
          ,Positioned(
          top: 90,
          right: 300,
          child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,))


          ,Positioned(
          top: 80,
          right: 80,
          child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,)),
          Positioned(
              top: 80,
              left: 200,
              child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,)),
          Positioned(
              top: 20,
              left: 60,
              child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,)),

          Positioned(
          top: 10,
          left: 100,
          child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,)),


    ]),
      ),
    );;
  }
}
