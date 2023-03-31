

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/screens/customers/screens/update_customer.dart';
import 'package:invoice_generator/view/widgets/tiles.dart';

import 'customer_list_screen.dart';

class Add_Customer extends StatefulWidget {
  const Add_Customer({Key? key}) : super(key: key);

  @override
  State<Add_Customer> createState() => _Add_CustomerState();
}

class _Add_CustomerState extends State<Add_Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      floatingActionButton: FloatingActionButton(onPressed: () {  Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Customer_List())); },
      child: Icon(Icons.add),),
      body: Column(children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25.sp),
            bottomLeft: Radius.circular(25.sp),
          ),
        ),
        width: double.infinity,
        height: 0.150.sh,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 9.w),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.220.sw,
                ),
                Text(
                  "Add Customer",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
              ],
            ),
          ),
        ),
      ),
      kmin,
      Padding(
        padding:  EdgeInsets.only(left: 15.w,right: 15.w),
        child: Column(children: [
          Container(
            height: 576.h,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount:2,
                itemBuilder: (context,index){
                  return ReuseableTile(title: "Title",subtitle: "Subtitle",onpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Update_Customer_List()));},);

                }),
          ),


        ],),
      )
    ],),);
  }
}
