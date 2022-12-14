import 'package:flutter/material.dart';

class fifthpage extends StatefulWidget {
  const fifthpage({super.key});

  @override
  State<fifthpage> createState() => _fifthpageState();
}

class _fifthpageState extends State<fifthpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Items'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              ),
            ]),
          ),
          body: TabBarView(children: [
            products(),
            const Center(child: Text('Categories page is empty')),
          ]),
        ),
      ),
    );
  }
}

Padding cards({
  required String name,
  required String rate,
  required String img,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 120,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 5.0, right: 10.0, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.network(
                        img,
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              name,
                              // 'Couch Potato |Women...',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 20,
                              color: Colors.black38,
                            )
                          ],
                        ),
                        Text(
                          '1 piece',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          rate,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'In stock',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.green),
                            ),
                            SizedBox(
                              width: 152,
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                              activeTrackColor: Colors.blue[100],
                              activeColor: Colors.blue[700],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
            height: 48,
            width: 350,
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.share_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Share Product',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Column products() {
  return Column(
    children: [
      Expanded(
        child: ListView(
          children: [
            cards(
              name: 'Couch Potato |Women...',
              rate: '₹799',
              img:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRElEUIrdnGKNF_oO2Igqs1MIGPE_T6aTDmUsAKqGS6PDE_ZZybcaFD3CRjAsmZmiF_lyM&usqp=CAU',
            ),
            cards(
              name: 'Couch Potato |Men |BI...',
              rate: '₹799',
              img:
                  'https://www.mydesignation.com/wp-content/uploads/2020/10/muggle-born-kids-tshirt-photo-glowing.gif',
            ),
            cards(
              name: 'Mug |Explore | Printed..',
              rate: '₹399',
              img:
                  'https://static.halfcute.com/rs:600:auto:auto/jpeg:95//product/privyexpress-in-your-eyes-couple-photo-personalized-magic-mug-halfcute-bd8fa250-5af0-11eb-a7ee-059041df33e1.png',
            ),
            cards(
              name: 'Combo Blahst 1|Pack...',
              rate: '₹699',
              img:
                  'https://cdn.shopify.com/s/files/1/2792/0490/products/SuperSaturdayCartImages-5_2048x.jpg?v=1638616555',
            ),
            cards(
              name: 'Mug | Orchad | Printed..',
              rate: '₹499',
              img:
                  'https://imgshopimages.lbb.in/catalog/product/m/g/mg005_1.jpg',
            ),
            cards(
              name: 'Muscle Whey Portien...',
              rate: '₹4699',
              img:
                  'https://m.media-amazon.com/images/I/616cI2pfTOL._SL1200_.jpg',
            ),
          ],
        ),
      )
    ],
  );
}
