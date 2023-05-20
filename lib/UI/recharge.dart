import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:siwar/UI/Home_materials.dart';
import 'constants.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Recharge extends StatefulWidget {
  const Recharge({Key? key}) : super(key: key);

  @override
  _RechargeState createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF27BBD7),
      body: Column(
        children: [
          SizedBox(height: width * 0.1),
          Appbar_custom(context, 'Recharge', width,Colors.white),
          Expanded(
              child: Container(
            child: Center(
              child: Container(
                height: height * 0.7,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: [
                    Container(
                        height: width * 0.3,
                        child: Center(
                            child: Text("Scan Qr To Recharge My Account",style: TextStyle(fontFamily: 'SpaceGrotesk',fontSize: 15),))),
                    Center(
                      child: Container(
                        width: width * 0.8,
                        height: width * 0.9,
                        child: Column(
                          children: [
                            Container(
                              height: width * 0.14,
                              child: Row(
                                children: [
                                  Container(
                                    width: width * .12,
                                    height: width * .12,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01),
                                            left: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01))),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: width * .12,
                                    height: width * .12,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01),
                                            top: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01))),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                              child: Center(
                                child: QrImage(
                                  data: 'https://www.facebook.com/nabil.aguida/',
                                  version: QrVersions.auto,
                                  gapless: false,
                                ),
                              ),
                            )),
                            Container(
                              height: width * 0.14,
                              child: Row(
                                children: [
                                  Container(
                                    width: width * .12,
                                    height: width * .12,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01),
                                            left: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01))),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: width * .12,
                                    height: width * .12,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01),
                                            bottom: BorderSide(
                                                color: Color(0xFF27BBD7),
                                                width: width * 0.01))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
