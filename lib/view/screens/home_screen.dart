import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:invoice_generator/view/Utils.dart';
import 'package:invoice_generator/view/screens/invoice/create_invoice_screen.dart';
import 'package:invoice_generator/view/screens/customers/screens/add_customer.dart';
import 'package:invoice_generator/view/screens/items/screens/add_inventory_items_screens.dart';
import 'package:invoice_generator/view/screens/miscellaneous/screens/miscellaneous_screen.dart';
import 'package:invoice_generator/view/screens/items/screens/update_inventory.dart';

import 'package:invoice_generator/view/widgets/cards.dart';

import 'customers/screens/customer_list_screen.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Center(
                child: Text(
              "Invoice Generator",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold),
            )),
            width: double.infinity,
            height: 0.3.sh,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70.sp),
                    bottomRight: Radius.circular(70.sp))),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 15.sp, right: 15.sp, top: 150.sp),
              child: GridView.count(
                childAspectRatio: 1.6,
                crossAxisCount: 2,
                mainAxisSpacing: 9,
                crossAxisSpacing: 9,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Create_Invoice()));
                      },
                      child: ReuseableCard(
                        icon: Icons.create_new_folder_outlined,
                        title: "Create",
                      )),
                  GestureDetector(
                      onTap: () {},
                      child: ReuseableCard(
                        icon: Icons.inventory_outlined,
                        title: "Invoices",
                      )),
                  GestureDetector(
                      onTap: () {},
                      child: ReuseableCard(
                        icon: Icons.picture_as_pdf,
                        title: "PDFS",
                      )),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Customer()));
                      },
                      child: ReuseableCard(
                        icon: Icons.family_restroom,
                        title: "Customers",
                      )),
                  GestureDetector(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Item()));
                      },
                      child: ReuseableCard(
                        icon: Icons.shopping_cart,
                        title: "Inventory",
                      )),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Miscellaneous()));
                      },
                      child: ReuseableCard(
                        icon: Icons.inventory_outlined,
                        title: "Miscellaneous",
                      )),
                  // GestureDetector(
                  //     onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Update_Inventory()));},
                  //     child: ReuseableCard(
                  //         icon: Icons.update, title: "Update Inventory")),
                  GestureDetector(
                      onTap: () {},
                      child: ReuseableCard(
                          icon: Icons.exit_to_app_sharp, title: "Exit")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
