// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/pages/pageone.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getappbar(title: 'Home'),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                title: getrow1(name: 'Page One <Info>', prefixicon: Icons.info),
                onTap: () {
                  Navigator.pushNamed(context, 'firstpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Two <Manage Store>',
                    prefixicon: Icons.store_mall_directory),
                onTap: () {
                  Navigator.pushNamed(context, 'secondpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Three <Payment>',
                    prefixicon: Icons.currency_rupee),
                onTap: () {
                  Navigator.pushNamed(context, 'thirdpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Four <Orders>',
                    prefixicon: Icons.production_quantity_limits),
                onTap: () {
                  Navigator.pushNamed(context, 'fourthpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Five  <Items>',
                    prefixicon: Icons.point_of_sale),
                onTap: () {
                  Navigator.pushNamed(context, 'fifthpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Six <Premium>',
                    prefixicon: Icons.workspace_premium),
                onTap: () {
                  Navigator.pushNamed(context, 'sixthpage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row getrow1({
  required String name,
  required IconData prefixicon,
}) {
  return Row(
    children: [
      Icon(
        prefixicon,
        color: Colors.blue,
      ),
      SizedBox(
        width: 50,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 20),
      ),
    ],
  );
}
