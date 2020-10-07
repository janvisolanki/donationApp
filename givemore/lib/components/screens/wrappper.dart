
import 'package:flutter/material.dart';
import 'package:givemore/components/screens/exportsScreens.dart';
import 'package:givemore/main.dart';



import 'package:givemore/user/user.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if(user==null){
      return LoginScreen();
    }else{
      return HomePage();
    }
    
  }
  
}