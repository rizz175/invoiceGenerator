import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/screens/customers/screens/customer_list_screen.dart';
import 'package:invoice_generator/view/screens/invoice/customer_list.dart';

class Create_Invoice extends StatefulWidget {
  const Create_Invoice({Key? key}) : super(key: key);

  @override
  State<Create_Invoice> createState() => _Create_InvoiceState();
}

class _Create_InvoiceState extends State<Create_Invoice> {
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
                        "Create Invoice",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.sp),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.02.sw),
            Padding(
              padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kmoremax,
                  Container(
                      height: 50.h,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        "Invoice Detail",
                        style: kwhitecolor,
                      ))),
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
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Invoice Date",
                            style: TextStyle(color: Colors.black),
                          ),
                          kmin,
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ],
                      )),
                      SizedBox(
                        width: 15.w,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Invoice Due Date",
                              style: TextStyle(color: Colors.black)),
                         kmin,
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                  kmoremax,
                  Container(
                    color: Colors.blue,
                    height: 50.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:8.w),
                          child: Text("Customer Detail"),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 8.w),
                          child: InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Customer_Detail()));},
                            child: Icon(
                              Icons.add_circle_outline_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 kmoremax,
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
                              "Postal code",
                              style: TextStyle(color: Colors.black),
                            ),
                            kmin,
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  kmin,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                  kmin,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                              "Country",
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
                  kmoremax,
                  Container(
                    height: 0.3.sw,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left:8.w),
                              child: Text("Product Detail"),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right:8.w),
                              child: Icon(
                                Icons.add_circle_outline_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 8.0.w),
                              child: Text(
                                "SubTotal",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right:8.w),
                              child: Text(
                                "0.00",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  kmoremax,
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Total Summary",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 110.h,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Tax",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Container(
                          height: 50.h,
                          width: 30.h,
                          color: Colors.blue,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "0.0",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  kmoremax,
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Text(
                            "Total ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            "0.00",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                 kmoremax,
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Center(
                        child: Text(
                      "Other details",
                    )),
                  ),

                  Container(
                    height: 50.h,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0.h, left: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notes",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Thank you",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
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
                  kmax,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
