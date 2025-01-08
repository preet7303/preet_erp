import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../description/View/decription.dart';

// Future<void>GetEvent(){
//   CollectionReference Event = FirebaseFirestore.instance.collection("events");
//   return Event.get().then((QuerySnapshot snapshot){
//     snapshot.docs.forEach((doc){
//       print('${doc.id} =>  ${doc.data()}');
//     }
//     );  }).catchError((onError) => print("Failed to get data $onError"));
//
// }

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  
  List<EventCard> eventList = [
    EventCard(
        title: "Ambriti", description: "Ambriti is chutiya event", Image: ""),
    EventCard(title: "Spandan", description: "Techno Fest", Image: "Image")
  ];

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
                width: MediaQuery
                    .sizeOf(context)
                    .width,
                height: MediaQuery
                    .sizeOf(context)
                    .height / 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance.collection("events")
                        .snapshots(),
                    builder: (context, snapshot) {
                      return snapshot.hasData ?
                      ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print("link: ${snapshot.data!.docs[index]["image"]}");
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (_) => EventDescription(AboutEvent: '${snapshot.data!.docs[index]["description"]}', img: '${snapshot.data!.docs[index]["image"]}' ,)));

                              },
                              child: Container(
                                  width: MediaQuery
                                      .sizeOf(context)
                                      .width,
                                  height: 150,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 7.5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black.withOpacity(0.4),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      // Padding(
                                      //   padding: const EdgeInsets.only(
                                      //       left: 15.0),
                                      //   child: Text(snapshot.data!.docs[index]["title"],
                                      //       style: GoogleFonts.poppins(
                                      //           fontSize: 18,
                                      //           fontWeight: FontWeight.w500,
                                      //           color: Colors.black)),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,

                                          children: [
                                            Container(
                                              width: 140,
                                              height: 140,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(20),
                                                  ),
                                                child: Image.network(snapshot.data!.docs[index]["image"])
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Flexible(
                                              fit: FlexFit.loose,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,

                                                mainAxisSize: MainAxisSize.max,
                                                verticalDirection: VerticalDirection.down,


                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 15.0),
                                                    child: Text(snapshot.data!.docs[index]["title"],
                                                        style: GoogleFonts.poppins(
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.black)),
                                                  ),
                                                  ClipRRect(
                                                    child: Text(
                                                      snapshot.data!.docs[index]["description"],
                                                      style: GoogleFonts.poppins(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w400),

                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            );
                          }):
                      Center(
                        child: SizedBox(
                          width: 60,
                            height: 60,
                            child: CircularProgressIndicator(

                            )),
                      );
                    }
                )),
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
                  "Events",
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
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 30,
              right: 100,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 150,
              right: 50,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 200,
              right: 70,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 90,
              right: 300,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 80,
              right: 200,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 80,
              left: 200,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 20,
              left: 60,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
          Positioned(
              top: 10,
              left: 300,
              child: Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.5),
                size: 15,
              )),
        ]),
      ),
    );
  }
}

class EventCard {
  final String title;
  final String description;
  final String Image;

  EventCard(
      {required this.title, required this.description, required this.Image});
}
