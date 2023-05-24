// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/pages/pageone.dart';

class pagefour extends StatefulWidget {
  const pagefour({super.key});

  @override
  State<pagefour> createState() => _pagefourState();
}

class _pagefourState extends State<pagefour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: getappbar(title: 'Order #1688068'),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  firstrow(),
                  const SizedBox(
                    height: 10,
                  ),
                  row2(),
                  thirdrow(),
                  rowthree(),
                ],
              ),
            )));
  }
}

//First row
Row firstrow() {
  return Row(
    children: const [
      Text(
        'May 31, 05:42 PM',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(
        width: 112,
      ),
      CircleAvatar(
        radius: 8,
        backgroundColor: Colors.blue,
      ),
      SizedBox(
        width: 12,
      ),
      Text(
        'Delivered',
        style: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
    ],
  );
}

//row two
Container row2() {
  return Container(
    //color: Colors.yellowAccent,
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(width: 1.5, color: Colors.black12),
        bottom: BorderSide(width: 1.5, color: Colors.black12),
      ),
      //color: Colors.white,
    ),
    width: 400,
    height: 180,

    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                '1 ITEM',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              SizedBox(
                width: 200,
              ),
              Icon(
                Icons.receipt_sharp,
                color: Colors.blue,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'RECEIPT',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQXsqbNGgwqerwReB_n3Fzk6XLc4e32kbbJw&usqp=CAU',
                  height: 80,
                  width: 65,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Eplore | Men | Navy Blue',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '1 piece',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Size: XL',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2.0, color: Colors.blue),
                        ),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'x ₹799',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Text(
                        '₹799',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

//third row
Padding thirdrow() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: Colors.black12),
        ),
        //color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Item Total',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                '₹799',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: TextStyle(fontSize: 19),
              ),
              Text(
                'FREE',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Grand Total',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                '₹799',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Padding rowthree() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'CUSTOMER DETAILS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Colors.black26),
            ),
            SizedBox(
              width: 76,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.blue,
              ),
            ),
            Text(
              'SHARE',
              style: TextStyle(
                fontSize: 19,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Deepa',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '+91-7829000484',
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black26,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              width: 100,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call_rounded,
                  color: Colors.blue,
                  size: 40,
                )),
            SizedBox(
              width: 15,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  color: Colors.green,
                  size: 40,
                ))
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Address',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Text(
          'D1101 Charted Beverly',
          style: TextStyle(
              fontSize: 19, color: Colors.black45, fontWeight: FontWeight.bold),
        ),
        Text(
          'Hills ,Subramanyapura P.O',
          style: TextStyle(
              fontSize: 19, color: Colors.black45, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'City',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 160,
            ),
            Text(
              'Pincode',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'Bangalore',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 19,
              ),
            ),
            SizedBox(
              width: 105,
            ),
            Text(
              '560061',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 19,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
