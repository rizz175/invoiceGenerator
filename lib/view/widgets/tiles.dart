import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/screens/items/screens/update_inventory.dart';

class ReuseableTile extends StatelessWidget {
  ReuseableTile(
      {required this.title, required this.subtitle, required this.onpressed});
  String title;
  String subtitle;
  var onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 0.0),
      child: Container(
          width: double.infinity,
          height: 80.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Center(
              child: ListTile(
            leading: CircleAvatar(),
            title: Text(
              "$title",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              "$subtitle",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Column(
              children: [
                InkWell(
                    onTap: onpressed,
                    child: Icon(
                      Icons.edit,
                      size: 20.sp,
                    )),
                kmax,
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.delete,
                      size: 20.sp,
                    )),
              ],
            ),
          ))),
    );
  }
}
