// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'dart:io';

class pagethree extends StatefulWidget {
  const pagethree({super.key});

  @override
  State<pagethree> createState() => _pagethreeState();
}

double slidervalue = 13332;

class _pagethreeState extends State<pagethree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getappbarinfo(title: 'Payments'),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            firstcard(),
            secondcard(),
            thirdcard(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  rowcard(
                      amount: '₹0',
                      text: 'AMOUNT ON HOLD',
                      mycolor: Colors.orange),
                  SizedBox(
                    width: 20,
                  ),
                  rowcard(
                      amount: '₹13,332',
                      text: 'AMOUNT RECIEVED',
                      mycolor: Colors.green),
                ],
              ),
            ),
            texttrans(),
            allbutns(),
            Expanded(
              child: ListView(
                children: [
                  listview(
                    date: 'Jul 12, 02:06 PM',
                    ordernum: 'Order #1688068',
                    rate: '₹799',
                    deposited: '₹799 deposited to 58860200000138',
                    img:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXsqbNGgwqerwReB_n3Fzk6XLc4e32kbbJw&usqp=CAU',
                  ),
                  listview(
                    date: 'Apr 26, 07:47 AM',
                    ordernum: 'Order #1457741',
                    rate: '₹397.4',
                    deposited: '₹397.4 deposited to 68860200000138',
                    img:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdlVxqRX0M8Zkl-Yc8F-F5qxq6Gwcz5Mi3iw&usqp=CAU',
                  ),
                  listview(
                    date: 'Apr 11, 10:54 AM',
                    ordernum: 'Order #1408896',
                    rate: '₹686.42',
                    deposited: '₹686.42 deposited to 58860200000138',
                    img:
                        'https://crayontee.com/wp-content/uploads/2020/07/black-247x296.jpg',
                  ),
                  listview(
                    date: 'Apr 2, 11:29 AM',
                    ordernum: 'Order #1369633',
                    rate: '₹1123.5',
                    deposited: '₹1123.5 deposited to 68860200000138',
                    img:
                        'https://theitalianamericanconnection.com/wp-content/uploads/2022/08/TSYP818_folded.jpg',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Appbarinfo;
AppBar getappbarinfo({
  required String title,
}) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w500),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.info_outline_rounded),
      ),
    ],
  );
}

//card first
Padding firstcard() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      height: 220,
      width: 370,
      child: Card(
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
              child: Text(
                'Transaction Limit',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 4),
              child: Text(
                'A free limit up to which you wil recive',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(118, 0, 0, 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 5),
              child: Text(
                'the online payments directly in your bank',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(118, 0, 0, 0),
                ),
              ),
            ),
            Slider(
                value: slidervalue,
                min: 0,
                max: 50000,
                onChanged: (double value) {}),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 4),
              child: Text(
                '36,668 left out of ₹50,000',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(118, 0, 0, 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Increase limit'),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

//second card
Padding secondcard() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 12.0,
      right: 12,
    ),
    child: Container(
      width: 370,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2.0, color: Colors.black12),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('Default Method',
                  style: TextStyle(
                    fontSize: 15,
                  )),
              SizedBox(
                width: 110,
              ),
              Text('Online Payments',
                  style: TextStyle(fontSize: 14, color: Colors.black38)),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text('Payment Profile',
                  style: TextStyle(
                    fontSize: 15,
                  )),
              SizedBox(
                width: 124,
              ),
              Text('Bank Account',
                  style: TextStyle(fontSize: 14, color: Colors.black38)),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

//third card
Padding thirdcard() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 12.0,
      right: 12,
    ),
    child: Container(
      width: 370,
      child: Column(
        children: [
          Row(
            children: [
              Text('Payments Overview',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                width: 125,
              ),
              Text('Life Time',
                  style: TextStyle(fontSize: 14, color: Colors.black38)),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

//row card
Card rowcard(
    {required String text, required String amount, required Color mycolor}) {
  return Card(
    child: Container(
      width: 170,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: mycolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 15),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 8),
            child: Text(
              amount,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Padding texttrans() {
  return Padding(
    padding: const EdgeInsets.only(left: 12, top: 5),
    child: Text(
      'Transactions',
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    ),
  );
}

Padding elevatedbtns({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(left: 12, top: 4),
    child: Row(
      children: [
        ElevatedButton(
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(143, 255, 255, 255),
              shape: RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(30)),
            )),
        // elevatedbtns2()
      ],
    ),
  );
}

Padding elevatedbtns2() {
  return Padding(
    padding: const EdgeInsets.only(left: 12, top: 4),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Payouts (15)',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          )),
    ),
  );
}

Row allbutns() {
  return Row(
    children: [
      elevatedbtns(title: 'On hold'),
      elevatedbtns2(),
      elevatedbtns(title: 'Refunds')
    ],
  );
}

Column listview(
    {required String ordernum,
    required String date,
    required String rate,
    required String img,
    required String deposited}) {
  return Column(
    children: [
      Container(
        height: 50,
        child: ListTile(
          leading: Image.network(
            img,
            height: 40,
            width: 35,
          ),
          title: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  ordernum,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  date,
                  style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                )
              ],
            ),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                rate,
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Successful',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Container(
        width: 360,
        height: 20,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.black12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              deposited,
              style: TextStyle(
                  color: Colors.black45,
                  fontStyle: FontStyle.italic,
                  fontSize: 10),
            ),
          ],
        ),
      )
    ],
  );
}
