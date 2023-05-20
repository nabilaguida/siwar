import 'package:flutter/material.dart';
import 'package:siwar/UI/Home_materials.dart';
import 'package:siwar/UI/Set_Budgets.dart';
import 'package:siwar/UI/constants.dart';

class fam_bal extends StatefulWidget {
  const fam_bal({Key? key}) : super(key: key);

  @override
  _fam_balState createState() => _fam_balState();
}

class _fam_balState extends State<fam_bal> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: ListView(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      children: [
        SizedBox(height: width * 0.03),
         Appbar_custom(context, 'Account', width,Colors.black87),
        Container(
          height: height * 0.07,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          alignment: Alignment.bottomLeft,
          child: Text(
            "Family Balance",
            style: title(),
          ),
        ),
        Container(
            height: height * 0.1,
            color: Colors.white,
            // padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            alignment: Alignment.centerLeft,
            child: ListTile(
              title: Text(
                "4000 Da",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                    fontFamily: 'SpaceGrotesk'),
              ),
              trailing: InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>set_budgets())),
                child: Container(
                  width: width * 0.4,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                      color: Color(0xFF27BBD7),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: Text(
                      "Set Budgets",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SpaceGrotesk',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )),
        Container(
          height: height * 0.05,
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          alignment: Alignment.topLeft,
          child: Text(
            "Transactions",
            style: title(),
          ),
        ),
        transactions(context),
        separation_dates(context),
        purchaces(context)
      ],
    ));
  }
}
