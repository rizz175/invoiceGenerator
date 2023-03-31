import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/screens/miscellaneous/screens/miscellaneous_detail.dart';
import 'package:invoice_generator/view/screens/miscellaneous/screens/update_Miscellaneous_screen.dart';
import 'package:invoice_generator/view/widgets/tiles.dart';

class Add_Miscellaneous extends StatefulWidget {
  const Add_Miscellaneous({Key? key}) : super(key: key);

  @override
  State<Add_Miscellaneous> createState() => _Add_MiscellaneousState();
}

class _Add_MiscellaneousState extends State<Add_Miscellaneous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Miscellaneous_Detail()));

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
                      width: 0.220.sw,
                    ),
                    Text(
                      "Add Expense",
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
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              children: [
                Container(
                  height:600,

                  child: ListView.builder(
                      itemCount:3,
                      itemBuilder: (context,index){
                    return ReuseableTile(title: "Title", subtitle: "Subtitle", onpressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Update_Miscellaneous_Detail()));
                    });

                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
