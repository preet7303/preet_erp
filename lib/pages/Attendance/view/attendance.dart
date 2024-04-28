import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:preet_erp/pages/Attendance%20Details/View/detailed_attendance.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _Container = List.generate(7, (index) =>
        Container(
            width: MediaQuery.sizeOf(context).width,
            height: 150,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black.withOpacity(0.4), width: 1),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start
              ,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xff6776F9),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
                  ),

                  child: Center(
                    child: Text("Subject",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularPercentIndicator(radius: 25, percent: 0.5,progressColor: Color(0xff6776F9), animation: true, center: Text("50%"),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total classes:  ", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400), textAlign: TextAlign.justify,
                          ),
                          Text(
                            "Total present:  ", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400), textAlign: TextAlign.justify,
                          ),
                          Text(
                            "Total Absent:  ", style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400), textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailedAttendance()));
                      }, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                )
              ],
            ))
    );
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
                child: ListView.builder(
                    itemCount: _Container.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        title: _Container[index],
                      );
                    })),
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
                  "Attendance",
                  style: GoogleFonts.poppins(
                      fontSize: 25,
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
          right: 200,
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
          left: 300,
          child: Icon(Icons.star, color: Colors.white.withOpacity(0.5), size: 15,)),


    ]),
      ),
    );;
  }
}
