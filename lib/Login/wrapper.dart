import 'package:changemanagent/POC.dart';
import 'package:changemanagent/Login/user.dart';
import 'package:changemanagent/Login/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    // return Home or authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return PocPage();
    }
  }
}
