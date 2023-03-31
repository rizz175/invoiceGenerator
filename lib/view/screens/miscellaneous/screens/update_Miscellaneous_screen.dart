import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';

class Update_Miscellaneous_Detail extends StatefulWidget {
  const Update_Miscellaneous_Detail({Key? key}) : super(key: key);

  @override
  State<Update_Miscellaneous_Detail> createState() => _Update_Miscellaneous_DetailState();
}

class _Update_Miscellaneous_DetailState extends State<Update_Miscellaneous_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,

      body: Column(
        children: [
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
                      width: 0.150.sw,
                    ),
                    Text(
                      "Update Expense Detail",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          kmoremax,
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Item Name",
                  style: kblackcolor,
                ),
                kmin,
                TextField(
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white,),
                ),
                kmax,
                Text(
                  "Description",
                  style: kblackcolor,
                ),
                kmin,
                TextField(
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white,),
                ),
                kmax,
                Text(
                  "Place",
                  style: kblackcolor,
                ),
                kmin,
                TextField(
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white,),
                ),
                kmax,
                Text(
                  "Invoice Number",
                  style: kblackcolor,
                ),
                kmin,
                TextField(
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white,),
                ),
                kmax,
                Text(
                  "Distance",
                  style: kblackcolor,
                ),
                kmin,
                TextField(
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white,),
                ),
                kmax,
                Text(
                  "Amount",
                  style: kblackcolor,
                ),
                kmin,
                TextField(
                  decoration:
                  InputDecoration(filled: true, fillColor: Colors.white,),
                ),
                kmoremax,
                Container(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SAVE",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    )),

              ],
            ),
          )
        ],
      ),
    );
  }
}
