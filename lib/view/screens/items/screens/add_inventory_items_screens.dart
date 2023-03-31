import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/screens/items/screens/all_item_screen.dart';
import 'package:invoice_generator/view/screens/items/screens/update_inventory.dart';
import 'package:invoice_generator/view/widgets/tiles.dart';

class Add_Item extends StatefulWidget {
  const Add_Item({Key? key}) : super(key: key);

  @override
  State<Add_Item> createState() => _Add_ItemState();
}

class _Add_ItemState extends State<Add_Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Item_List()));
        },
        child: Icon(Icons.add),
      ),
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
                      width: 0.31.sw,
                    ),
                    Text(
                      " Items",
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
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Container(
              height: 576.h,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount:5,
                  itemBuilder: (context,index){
                    return ReuseableTile(title: "Title",subtitle: "Subtitle",onpressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Update_Inventory()));},);

              }),
            ),
          ),
        ],
      ),
    );
  }
}

