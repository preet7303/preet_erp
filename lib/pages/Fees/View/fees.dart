import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preet_erp/pages/Payment%20Fees/View/payment_fees.dart';

class FeesDetail extends StatefulWidget {
  const FeesDetail({super.key});

  @override
  State<FeesDetail> createState() => _FeesDetailState();
}

class _FeesDetailState extends State<FeesDetail> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _Container = List.generate(
        20,
        (index) => InkWell(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (_)=> EventDescription()));
              },
              child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black.withOpacity(0.4), width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text("Receipt No",
                                  style: GoogleFonts.abel(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(1))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text("#12345"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 1.2,
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Month",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.7)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text("October"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("Payment Date",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text("24 Oct 2024"),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width / 1.2,
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text("Total Pending Amount",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text("₹999"),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff6776F9),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => FeesPayment()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Pay Now",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                    )),
                                Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 20)
                              ],
                            )),
                      ),
                    ],
                  )),
            ));
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
                    itemBuilder: (context, index) {
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
                  "Fees Detail",
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
