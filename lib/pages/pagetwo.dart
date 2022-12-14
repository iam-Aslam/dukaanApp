// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ui/pages/pageone.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: getappbar(title: 'Manage Store'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            getcontainer(
              text1: 'Marketing',
              text2: 'Designs',
              icon: Icons.announcement_rounded,
              mycolor: Colors.orange,
            ),
            getcontainer(
              text1: 'Online',
              text2: 'Payments',
              icon: Icons.currency_rupee_rounded,
              mycolor: Colors.lightGreen,
            ),
            getcontainer(
              text1: 'Discount',
              text2: 'Coupons',
              icon: Icons.discount,
              mycolor: Color.fromARGB(161, 255, 153, 0),
            ),
            getcontainer(
              text1: 'My',
              text2: 'Customers',
              icon: Icons.contact_page,
              mycolor: Colors.lightBlue,
            ),
            getcontainer(
              text1: 'Store QR',
              text2: 'Code',
              icon: Icons.qr_code_scanner_outlined,
              mycolor: Color.fromARGB(62, 0, 0, 0),
            ),
            getcontainer(
              text1: 'Extra',
              text2: 'Charges',
              icon: Icons.price_change_rounded,
              mycolor: Colors.purple,
            ),
            getcontainer2(
              text1: 'Order',
              text2: 'Form',
              icon: Icons.list,
              mycolor: Color.fromARGB(162, 233, 30, 98),
            ),
          ],
        ),
      ),
    ));
  }
}

InkWell getcontainer(
    {required String text1,
    required String text2,
    required IconData icon,
    required Color mycolor}) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 10,
      child: Card(
        elevation: 1,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white70),
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: mycolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    icon: Icon(
                      icon,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}

InkWell getcontainer2(
    {required String text1,
    required String text2,
    required IconData icon,
    required Color mycolor}) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 10,
      child: Card(
        elevation: 1,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white70),
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: mycolor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        icon: Icon(
                          icon,
                          color: Colors.white,
                        ),
                        onPressed: (() {}),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.green,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'NEW',
                          style: TextStyle(
                            //backgroundColor: Colors.green,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}
