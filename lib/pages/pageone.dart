// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getappbar(title: 'Additional information'),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        getrow1(
                            name: 'Share Dukaan App',
                            prefixicon: Icons.share,
                            suffixicon: Icons.chevron_right),
                        SizedBox(
                          height: 20,
                        ),
                        getrow1(
                            name: 'Change Language',
                            prefixicon: Icons.message_outlined,
                            suffixicon: Icons.chevron_right),
                        SizedBox(
                          height: 10,
                        ),
                        getrow2(
                            name: 'WhatsApp Chat Support',
                            prefixicon: Icons.whatsapp_outlined),
                        SizedBox(
                          height: 10,
                        ),
                        getrow3(
                            name: 'Privacy Policy',
                            prefixicon: Icons.lock_outline),
                        SizedBox(
                          height: 20,
                        ),
                        getrow3(
                            name: 'Rate Us',
                            prefixicon: Icons.star_border_outlined),
                        SizedBox(
                          height: 20,
                        ),
                        getrow3(
                            name: 'Sign Out',
                            prefixicon: Icons.exit_to_app_sharp)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Version',
                      style: TextStyle(
                          color: Color.fromARGB(88, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '2.4.2',
                      style: TextStyle(
                          color: Color.fromARGB(174, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//first and second row
Row getrow1({
  required String name,
  required IconData prefixicon,
  required IconData suffixicon,
}) {
  return Row(
    children: [
      Icon(prefixicon),
      SizedBox(
        width: 20,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(
        width: 120,
      ),
      Icon(suffixicon),
    ],
  );
}

//third row
Row getrow2({
  required String name,
  required IconData prefixicon,
}) {
  return Row(
    children: [
      Icon(prefixicon),
      SizedBox(
        width: 20,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(
        width: 35,
      ),
      Switch(
        value: true,
        onChanged: (value) {},
        activeTrackColor: Colors.blue[100],
        activeColor: Colors.blue[900],
      ),
    ],
  );
}

//remaining rows
Row getrow3({
  required String name,
  required IconData prefixicon,
}) {
  return Row(
    children: [
      Icon(prefixicon),
      SizedBox(
        width: 20,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(
        width: 30,
      ),
    ],
  );
}

//appbar
AppBar getappbar({
  required String title,
}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w500),
    ),
  );
}
