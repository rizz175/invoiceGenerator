import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';



class Update_Inventory extends StatefulWidget {
  const Update_Inventory({Key? key}) : super(key: key);

  @override
  State<Update_Inventory> createState() => _Update_InventoryState();
}

class _Update_InventoryState extends State<Update_Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      // floatingActionButton: FloatingActionButton(onPressed: () {  Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => Customer_List())); },
      //   child: Icon(Icons.add),),
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
                    width: 0.200.sw,
                  ),
                  Text(
                    "Update Inventory",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.sp),
                  ),

                ],
              ),
            ),
          ),
        ),
        kmax,
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
                "Description",
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
                "Provider",
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
                "Delievery Date",
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
                          "Sale Price",
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
                          "Quantity",
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
                "Manufacturer Price",
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
        )
      ],),);
  }
}
