import 'package:flutter/material.dart';
import 'package:givemore/components/screens/wrappper.dart';
import 'package:givemore/user/user.dart';
import 'package:provider/provider.dart';
import 'package:givemore/services/auth.dart';
import 'package:splashscreen/splashscreen.dart';
import 'components/screens/exportsScreens.dart';


void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home:new App(),)
);

class App extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
body: Container(
      
       padding: EdgeInsets.only(top: 200),
      child: SplashScreen(
          
          seconds: 10,
          navigateAfterSeconds: FlashChat(),
          
          image: new Image.asset('images/splashscreen.jpeg'),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 150.0,
          //onClick: () => print("Flutter Egypt"),
          loaderColor: Colors.white,
        ),
      
    ),
    );
  }
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Authservice().user,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) =>Wrapper(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomePage.id: (context) => HomePage(),
        Education.id: (context) => Education(),
        SeniorPage.id: (context) => SeniorPage(),
        Article.id: (context) => Article(),
        Ehelp.id: (context) => Ehelp(),
        Clothes.id: (context) => Clothes(),
        Health.id: (context) => Health(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF5B86E5),
        accentColor: Color(0xffb2ebf2),
      ),
    )

    );
  }
}
