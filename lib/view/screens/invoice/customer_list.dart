import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/widgets/tiles.dart';

class Customer_Detail extends StatefulWidget {
  const Customer_Detail({Key? key}) : super(key: key);

  @override
  State<Customer_Detail> createState() => _Customer_DetailState();
}

class _Customer_DetailState extends State<Customer_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      body: Column(children: [ Container(
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
                  padding:  EdgeInsets.only(left:9.w),
                  child: InkWell(
                    onTap: (){Navigator.pop(context);},
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
                  "Customer List",
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
          child: Column(
            children: [
              Container(
                height: 600,
                child: ListView.builder(itemCount:2,itemBuilder: (context,index){return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80.h,
                    decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10.sp)),
                   
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(),
                        title: Text("Name",style: TextStyle(color: Colors.black),),
                        subtitle: Text("Email",style: TextStyle(color:Colors.black),),


                      ),
                    ),
                  ),
                );}),
              ),
            ],
          ),
        ),

      ],),
    );
  }
}
