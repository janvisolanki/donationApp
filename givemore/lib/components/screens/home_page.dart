import 'package:givemore/components/screens/clothes.dart';
import 'package:givemore/components/screens/ehelp.dart';
import 'package:givemore/components/screens/exportsScreens.dart';
import 'package:givemore/components/screens/health.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givemore/services/auth.dart';
import 'package:google_fonts/google_fonts.dart';
import '../reusable_card.dart';
import 'package:givemore/components/screens/education.dart';
import 'health.dart';
class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Authservice _auth = Authservice();
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Color(0xffb2ebf2),
        elevation: 0,
       
        centerTitle: true,
        leading: Container(),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.power_settings_new,color: Colors.white,size: 30.0,),onPressed: (){
            _auth.signOut();
          },),
        ],
        
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                "Where you want to Give More?",
                style: GoogleFonts.acme(
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ReusableCard(
                    time: 1,
                    image: 'images/education.gif',
                    nextChild: Education(),
                  ),
                  ReusableCard(
                    time: 2,
                    image: 'images/blood.gif',
                    nextChild: Health(),
                  ),
                  ReusableCard(
                    time: 3,
                    image: 'images/food1.gif',
                    nextChild: Ehelp(),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ReusableCard(
                    time: 4,
                    image: 'images/clothes.gif',
                    nextChild: Clothes(),
                  ),
                  ReusableCard(
                    time: 5,
                    image: 'images/sanitizer.gif',
                    nextChild: Article(),
                  ),
                  ReusableCard(
                      time: 6,
                      image: 'images/senior.gif',
                      nextChild: SeniorPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
