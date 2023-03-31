import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';

class Update_Customer_List extends StatefulWidget {
  const Update_Customer_List({Key? key}) : super(key: key);

  @override
  State<Update_Customer_List> createState() => _Update_Customer_ListState();
}

class _Update_Customer_ListState extends State<Update_Customer_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      body: SingleChildScrollView(
        child: Column(
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
                        width: 0.100.sw,
                      ),
                      Text(
                        "Update Customer Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(left: 15.w,right: 15.sp,top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.black),
                  ),
                  kmin,
                  TextField(
                    decoration: InputDecoration(

                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  kmax,
                  Text(
                    "Address",
                    style: TextStyle(color: Colors.black),
                  ),
                  kmin,
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  kmax,
                  Text(
                    "Phone No",
                    style: TextStyle(color: Colors.black),
                  ),
                  kmin,
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  kmax,
                  Text(
                    "Email",
                    style: TextStyle(color: Colors.black),
                  ),
                  kmin,
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  kmax,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Postal Code",
                              style: TextStyle(color: Colors.black),
                            ),
                            kmin,
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "City",
                              style: TextStyle(color: Colors.black),
                            ),
                            kmin,
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  kmax,

                  kmax,
                  Text(
                    "Country",
                    style: TextStyle(color: Colors.black),
                  ),
                  kmin,
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  kmax,
                  Text(
                    "State",
                    style: TextStyle(color: Colors.black),
                  ),
                  kmin,
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
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
                  kmin,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
