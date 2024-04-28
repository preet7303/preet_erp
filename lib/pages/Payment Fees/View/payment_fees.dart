import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeesPayment extends StatefulWidget {
  const FeesPayment({super.key});

  @override
  State<FeesPayment> createState() => _FeesPaymentState();
}

List<String> payment = [
  'Credit/Debit Card',
  'GPay',
  'Paytm',
  'Challan',
  'Netbanking'
];

class _FeesPaymentState extends State<FeesPayment> {
  String MOP = payment[0];

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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Container(
                        width: MediaQuery.sizeOf(context).width / 1.1,
                        height: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RadioListTile(
                                activeColor: Color(0xff6776F9),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Credit/Debit Card"),
                                    Icon(Icons.credit_card)
                                  ],
                                ),
                                value: payment[0],
                                groupValue: MOP,
                                onChanged: (value) {
                                  setState(() {
                                    MOP = value.toString();
                                  });
                                }),
                            Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: 1,
                                color: Colors.black),
                            RadioListTile(
                                activeColor: Color(0xff6776F9),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("GPay"),
                                    Image.asset(
                                      "assets/images/gpay_logo.webp",
                                      width: 40,
                                      height: 40,
                                    )
                                  ],
                                ),
                                value: payment[1],
                                groupValue: MOP,
                                onChanged: (value) {
                                  setState(() {
                                    MOP = value.toString();
                                  });
                                }),
                            Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: 1,
                                color: Colors.black),
                            RadioListTile(
                                activeColor: Color(0xff6776F9),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Paytm"),
                                    Image.asset(
                                      "assets/images/paytm_logo.png",
                                      width: 40,
                                      height: 40,
                                    )
                                  ],
                                ),
                                value: payment[2],
                                groupValue: MOP,
                                onChanged: (value) {
                                  setState(() {
                                    MOP = value.toString();
                                  });
                                }),
                            Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: 1,
                                color: Colors.black),
                            RadioListTile(
                                activeColor: Color(0xff6776F9),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Netbanking"),
                                    Image.asset(
                                      "assets/images/netbanking_logo.jpg",
                                      width: 40,
                                      height: 40,
                                    )
                                  ],
                                ),
                                value: payment[4],
                                groupValue: MOP,
                                onChanged: (value) {
                                  setState(() {
                                    MOP = value.toString();
                                  });
                                }),
                            Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: 1,
                                color: Colors.black),
                            RadioListTile(
                                activeColor: Color(0xff6776F9),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Challan"),
                                  ],
                                ),
                                value: payment[3],
                                groupValue: MOP,
                                onChanged: (value) {
                                  setState(() {
                                    MOP = value.toString();
                                  });
                                })
                          ],
                        )),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.1,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff6776F9),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        onPressed: () {
                          //Navigator.push(context, MaterialPageRoute(builder: (_)=> FeesPayment()));
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
                  )
                ],
              ),
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
                  "Pay Fees",
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
    ;
  }
}
