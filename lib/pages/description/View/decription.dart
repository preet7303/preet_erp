
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class EventDescription extends StatefulWidget {
  final String AboutEvent;
  final String img;
  const EventDescription({super.key, required this.AboutEvent, required this.img});

 

  @override
  State<EventDescription> createState() => _EventDescriptionState();

}




class _EventDescriptionState extends State<EventDescription> {




  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30,
                        )),
                    Text("About Event",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500))
                  ],
                ),

                Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height / 2.5,
                  child: Image.network(widget.img)
                        ),

                Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 2,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.lock_clock, color: Color(0xff6776F9)),
                              Text("13 April, 2024, Venue: Textile Block ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Color(0xff6776F9),
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            widget.AboutEvent,

                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
