import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.icon,required this.title});
  var icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(


      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7.sp)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(icon,color: Colors.blue,size: 35.sp,),
        Text("$title",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
      ],),
    );
  }
}
