import 'package:flutter/material.dart';
import 'package:siwar/UI/Home_materials.dart';
import 'package:siwar/UI/recharge.dart';

import 'fam_bal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFF27BBD7),
        body: ListView(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              height: width * 0.45,
              color: Color(0xFF27BBD7),
              child: Column(
                children: [
                  SizedBox(
                    height: width * 0.06,
                  ),
                  Container(
                    width: width * 0.9,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_pin,
                          color: Colors.white,
                          size: 30,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Recharge())),
                          icon: Icon(
                            Icons.qr_code,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: width * 0.9,
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: width * 0.9,
                      child: Text(
                        'Khalil',
                        style: TextStyle(color: Colors.grey[200], fontSize: 20),
                      )),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => fam_bal())),
              child: Container(
                height: width * 0.3,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    width: width * 0.9,
                    height: width * 0.22,
                    decoration: BoxDecoration(
                        color: Color(0xFF27BBD7),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 20,
                            child: ListTile(
                              title: Text(
                                "Family",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              subtitle: Text(
                                "Balance",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              trailing: Text(
                                "20000 Da",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.05,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              alignment: Alignment.centerLeft,
              child: Text(
                "Family",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              height: width * 0.35,
              color: Colors.white,
              child: Center(
                child: Container(
                  width: width * 0.95,
                  child: Row(
                    children: [
                      Container(
                        height: width * 0.25,
                        width: width * 0.25,
                        child: Column(
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
                      Container(
                        height: width * 0.25,
                        width: width * 0.25,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: CircleAvatar(
                                maxRadius: width * 0.08,
                                backgroundImage: NetworkImage(
                                    "https://img.freepik.com/premium-vector/face-cute-girl-avatar-young-girl-portrait-vector-flat-illustration_192760-82.jpg?w=2000"),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "HIba",
                                  style: TextStyle(fontSize: 15),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: height * 0.1,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: ListTile(
                  title: Text(
                    "Activity",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text("All Family Members"),
                  trailing: Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF27BBD7),
                    ),
                  ),
                )),
            purchaces(context)
          ],
        ));
  }
}
