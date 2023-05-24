// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class sixthpage extends StatelessWidget {
  const sixthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            container(),
            last(),
            Padding(
              padding: const EdgeInsets.only(bottom: 650),
              child: Container(
                color: Colors.blue,
              ),
            ),
            firstcard(),
            appbar(),
          ],
        ),
      ),
    );
  }
}

//custom appbar
Positioned appbar() {
  return Positioned(
    top: 0.0,
    left: 0.0,
    right: 0.0,
    child: AppBar(
      // Add AppBar here only
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: const Text(
        "Dukaan Premium",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}

//card icon dukaaan
Padding firstcard() {
  return Padding(
    padding: const EdgeInsets.only(top: 68.0, left: 18),
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 212,
        width: 350,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRect(
                child: Image.network(
                  'https://mydukaan.io/blog/wp-content/uploads/2021/04/dukaan_blog.png',
                  width: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Get Dukaan Premium for just',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '₹4,999/year',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'All the advanced features for scaling your',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'business',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Row rows(
    {required String img,
    required String title,
    required String textone,
    required String texttwo}) {
  return Row(
    children: [
      Image.network(
        // 'https://png.pngtree.com/png-vector/20190623/ourmid/pngtree-worldglobeinternetdesign-blue-dotted-line-line-icon-png-image_1491124.jpg',
        img,
        width: 60,
        height: 60,
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            // 'Custom domain name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            // 'Get your own custom domain and build',
            textone,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            // 'Your brand on the interest',
            texttwo,
          ),
        ],
      )
    ],
  );
}

//container table
Container container() {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(left: 24.0, top: 315),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Features',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          rows(
              img:
                  'https://png.pngtree.com/png-vector/20190623/ourmid/pngtree-worldglobeinternetdesign-blue-dotted-line-line-icon-png-image_1491124.jpg',
              title: 'Custom domain name',
              textone: 'Get your own custom domain and build',
              texttwo: 'your brand on the internet'),
          SizedBox(
            height: 10,
          ),
          rows(
              img:
                  'https://p.kindpng.com/picc/s/20-201825_facebook-checkmark-transparent-facebook-verification-logo-hd-png.png',
              title: 'Verified seller badge',
              textone: 'Get green verified badge under your',
              texttwo: 'store name and build trust'),
          SizedBox(
            height: 10,
          ),
          rows(
              img:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPuovu9i7zb0fenIEPxyClfeH5EESVHWrl2fOibh92HHEz9xoziV6F8ur1y44-GSqfYHs&usqp=CAU',
              title: 'Dukaan for PC',
              textone: 'Access all the exclusive premium',
              texttwo: 'features on Dukaaan for PC'),
          SizedBox(
            height: 10,
          ),
          rows(
              img:
                  'https://thumbs.dreamstime.com/b/call-center-operator-customer-support-icon-blue-color-vector-well-organized-fully-editable-design-using-commercial-purposes-215361110.jpg',
              title: 'Priority support',
              textone: 'Get your questions resolved with our',
              texttwo: 'priority customer support'),
        ],
      ),
    ),
  );
}

// Final container with padding
Padding last() {
  return Padding(
    padding: const EdgeInsets.only(top: 640.0),
    child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.5, color: Colors.black12),
          ),
        ),
        width: 400,
        //color: Colors.red,
        child: Expanded(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 30),
              child: Text(
                'What is Dukaan Premium?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                width: 400,
                height: 200,
                child: Image(
                  image: AssetImage(
                    'assets/images/youtubepremium.jpg',
                  ),
                  height: 200,
                  width: 400,
                ),
              ),
            )
          ],
        ))),
  );
}


