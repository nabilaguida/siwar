import 'package:flutter/material.dart';
import 'package:siwar/UI/Home_materials.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:siwar/UI/constants.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'dart:typed_data';
import 'globals.dart' as globals;

class set_budgets extends StatefulWidget {
  const set_budgets({Key? key}) : super(key: key);

  @override
  _set_budgetsState createState() => _set_budgetsState();
}

class _set_budgetsState extends State<set_budgets> {


  Color prime = Color(0xFF27BBD7);
  String text = "";
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
    print(text);
  }
  bool isselected = false ;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: width * 0.1,
          ),
          Center(
            child: Container(
              width: width * 0.95,
              child: Row(
                children: [
                  IconButton(
                    icon:
                        Icon(Icons.arrow_back, color: Colors.black87, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Spacer(),
                  Text(
                    "Set Budgets",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SpaceGrotesk',
                        letterSpacing: 1.5,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            builder: (context) {
                              return Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                height: width * 0.5,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Text(
                                          "Select a way to scan th chip",
                                          style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: [
                                          Spacer(),
                                          Container(
                                            width: width * 0.35,
                                            height: width * 0.25,
                                            child: TextButton.icon(
                                                onPressed:
                                                    ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>scan())),
                                                icon: Icon(Icons.nfc,color: Colors.blue[800]),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: prime.withOpacity(0.2),
                                                ) ,
                                                label: Text("nfc",style: TextStyle(fontSize: 18,color: Colors.blue[800]),)),
                                          ),
                                          Spacer(),
                                          Container(
                                            width: width * 0.35,
                                            height: width * 0.25,
                                            child: TextButton.icon(
                                                onPressed: () {},
                                                icon: Icon(Icons.qr_code_scanner, color: Colors.blue[800]),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: prime.withOpacity(0.2),
                                                ) ,
                                                label: Text("Qr Code",style: TextStyle(fontSize: 18, color: Colors.blue[800]),)),
                                          ),
                                          Spacer()
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      icon: Icon(Icons.payment))
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            color: prime,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(height: width*0.06,),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                            fontWeight: FontWeight.w800,letterSpacing: 1.5,
                          fontFamily: 'SpaceGrotesk'
                        ),
                        children: <TextSpan>[
                          TextSpan(text: text == "" ? '00' : '$text'),
                          TextSpan(text: '.00', style:  TextStyle(fontSize:40)),
                        ],
                      ),
                    )
                  ),
                  SizedBox(height: width*0.06,),
                  Center(child: Text("DZD"),),
                  Spacer(),
                  Container(
                    alignment: Alignment.bottomLeft,
                  height: width*0.35,
                    width: width*0.95,
                  
                    child:  ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                         InkWell(
                           onTap: (){
                             setState(() {
                               isselected = !isselected ;
                             });
                             print(isselected) ;
                           },
                           child: Center(
                             child: AnimatedContainer(
                               duration: Duration(microseconds: 500),
                              width: width*0.3,
                              height: width*0.3,
                              decoration: BoxDecoration(
                                color: isselected == false ? prime :prime.withOpacity(0.2),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))
                              ),
                               child: isselected == false ? Center(child: Text("N"),): Column(
                                 children: [
                                   Expanded(
                                     flex: 3,
                                     child: CircleAvatar(
                                       maxRadius: width * 0.08,
                                       backgroundImage: NetworkImage(
                                           "https://lh3.googleusercontent.com/ogw/AOh-ky2mGzBYqHOzQ3GtkvJwX3j63FQLzbWKD_yUXiYoTA=s32-c-mo"),
                                     ),
                                   ),
                                   Expanded(
                                       flex: 1,
                                       child: Text(
                                         "Nabil",
                                         style: TextStyle(fontSize: 15),
                                       ))
                                 ],
                               ),
                        ),
                           ),
                         ),
                      ],
                    ),
                  ),
                  Spacer()
                ],
              ),
            ),
          )),
          Container(
            height: height * 0.51,
            decoration: BoxDecoration(
                color: prime,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
            child: Column(
              children: [
                Expanded(
                    child: Center(
                      child: Container(
                        width: width * 0.9,
                        height: width * 0.15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Center(
                          child: Text(
                            'Confirm Transaction',
                            style: TextStyle(
                                color: prime,
                                fontFamily: 'SpaceGrotesk',
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )),
                Center(
                  child: NumericKeyboard(
                    onKeyboardTap: _onKeyboardTap,
                    textColor: Colors.white,
                    rightButtonFn: () {
                      setState(() {
                        text = text.substring(0, text.length - 1);
                      });
                      print("=========================");
                      print(text);
                    },
                    rightIcon: Icon(
                      Icons.backspace,
                      color: Colors.white,
                    ),
                    leftButtonFn: () {
                      print('left button clicked');
                    },
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


class scan extends StatefulWidget {
  const scan({Key? key}) : super(key: key);

  @override
  _scanState createState() => _scanState();
}

class _scanState extends State<scan> {
  String text = "" ;
  @override
  void initState() {
    super.initState();
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
   //   final ndefTag = Ndef.from(tag);
     // text = await tag.data['ndef']['payload'].toString();
      Map tagData = tag.data;
      Map tagNdef = tagData['ndef'];
      Map cachedMessage = tagNdef['cachedMessage'];
      Map records = cachedMessage['records'][0];
      Uint8List payload = records['payload'];
      String payloadAsString = String.fromCharCodes(payload);
      text = payloadAsString.toString() ;
      print(text);

    });
    print("/////");
if (text != ""){
  NfcManager.instance.stopSession();
}    print(text);
  }
  @override
  void dispose() {
    NfcManager.instance.stopSession();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: text == "" ?Text("Scanning ...") : Center(child: Container(width : 300 ,child: Text(text))),
      ),
    );
  }
}



