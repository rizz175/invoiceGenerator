import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/screens/home_screen.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({Key? key}) : super(key: key);

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();

  }
  void navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home_Screen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      body:SafeArea(
        child: Center(
          child: Container(
            height: 0.2.sh,
            width: 0.5.sw,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Center(child: Text("Text Generator",)),

          ),
        ),
      ),
    );
  }
}
