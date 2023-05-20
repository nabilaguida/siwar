import 'package:flutter/material.dart';

//*****************************************APP BAR **********************************************************
Widget Appbar_custom(BuildContext context,String title,double width,Color c){
  return  Center(
    child: Container(
      width: width * 0.9,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back,color: c, size: 30),
            onPressed: () => Navigator.pop(context),
          ),
          Spacer(),
          Text(
            "$title",
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'SpaceGrotesk',
                letterSpacing: 1.5,
                color: c,
                fontWeight: FontWeight.w600
            ),
          ),
          Spacer(),
          Spacer(),
        ],
      ),
    ),
  );
}


//************************************************************************************************************
//family members in the home page
Widget family_members (BuildContext c){
  final height = MediaQuery.of(c).size.height;
  final width = MediaQuery.of(c).size.width;
  return  Container(
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
  ) ;
}

// purchases
Widget purchaces (BuildContext c){
  final height = MediaQuery.of(c).size.height;
  final width = MediaQuery.of(c).size.width;
  return  Container(
    height: height,
    alignment: Alignment.topCenter,
    color: Colors.white,
    child: Column(
      children: [
        Container(
          height: width * 0.2,
          child: ListTile(
            leading: Container(
              width: width * 0.2,
              height: width * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.shopping_basket_outlined,color: Colors.grey[600],),
              ),
            ),
            title: Text("Chek In * Nabil"),
            subtitle: Text("11:30 am"),
            trailing: Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            ),
          ),
        ),
        Container(
          height: width * 0.2,
          child: ListTile(
            leading: Container(
              width: width * 0.2,
              height: width * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.coffee,color: Colors.grey[600],),
              ),
            ),
            title: Text("Pur*chase * Hiba"),
            subtitle: Text("11:30 am"),
            trailing:Text("-25 Da"),
          ),
        ),
        Container(
          height: width * 0.2,
          child: ListTile(
            leading: Container(
              width: width * 0.2,
              height: width * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.shopping_basket_outlined,color: Colors.grey[600],),
              ),
            ),
            title: Text("Chek Out * Nabil"),
            subtitle: Text("11:30 am"),
            trailing: Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            ),
          ),
        ),
        Container(
          height: width * 0.2,
          child: ListTile(
            leading: Container(
              width: width * 0.2,
              height: width * 0.2,
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.shopping_basket_outlined,color: Colors.grey[600],),
              ),
            ),
            title: Text("Chek In * Nabil"),
            subtitle: Text("11:30 am"),
            trailing: Icon(
              Icons.check_circle_outline,
              color: Colors.green,
            ),
          ),
        ),

      ],
    ),
  ) ;
}


//************************************** Family Balance **********************************************//
// Transactions
Widget transactions (BuildContext c){
  final height = MediaQuery.of(c).size.height;
  final width = MediaQuery.of(c).size.width;
  return  Container(
    height: width * 0.1,
    child: Center(
      child: Container(
        width: width * 0.95,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              height: width*0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xFF27BBD7),
              ),
              child: Center(
                child: Text("All",style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
            ),
            SizedBox(width: width*0.05,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              height: width*0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Color(0xFF27BBD7),
                  )
              ),
              child: Center(
                child: Text("In",style: TextStyle(fontSize: 18),),
              ),
            ),
            SizedBox(width: width*0.05,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              height: width*0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Color(0xFF27BBD7),
                  )
              ),
              child: Center(
                child: Text("Hiba",style: TextStyle(fontSize: 18),),
              ),
            )
          ],
        ),
      ),
    ),
  ) ;
}
// Separation dates
Widget separation_dates (BuildContext c){
  final height = MediaQuery.of(c).size.height;
  final width = MediaQuery.of(c).size.width;
  return  Center(
    child: Container(
      alignment: Alignment.centerLeft,
      width: width*0.95,
      height: width *0.2,
      child: Text("Oct 30",style: TextStyle(fontSize: 30,fontFamily:'SpaceGrotesk' ),),
    ),
  ) ;
}
//************************************* Set budgets *************************************************************

