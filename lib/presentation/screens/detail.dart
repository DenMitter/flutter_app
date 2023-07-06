import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/screens/home.dart';
import 'package:flutter_app/domain/basket.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String description;
  final double price;
  final String image;

  const DetailScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int valueShop = 0;

  void incrementCounter() {
    setState(() {
      valueShop++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (valueShop > 0) {
        valueShop--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Image(image: NetworkImage("/assets/detail/arrow left.png"))],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image(image: NetworkImage("/assets/detail/nav item right.png"))],
            ),
          ],
        ),
        backgroundColor: const Color(0x00FFFFFF),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Image(image: NetworkImage(widget.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Color(0xFF2A334B)),
                      ),
                      Text(
                        widget.description,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, color: Color(0xFF2A334B)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Image(image: NetworkImage('/assets/detail/reit.png')),
                            Container(
                              height: 45,
                              width: 61,
                              padding: const EdgeInsets.only(top: 15, left: 14),
                              child: Text(
                                "\$${widget.price}",
                                style: TextStyle(color: Color(0xFFFFFFFF)),
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(137, 255, 165, 149),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(51), bottomLeft: Radius.circular(51)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About this product',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Color(0xFF2A334B)),
                      ),
                      Text(
                        'Flavoured cupcakes with special\nicing, Flavoured cupcakes.',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14, color: Color(0xFF2A334B)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, right: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Image(image: NetworkImage('/assets/detail/like.png')),
                      Text(valueShop.toString()),
                      Row(
                        children: [
                          InkWell(
                            onTap: incrementCounter,
                            child: const Image(image: NetworkImage('/assets/detail/plus.png'))
                          ),
                          InkWell(
                            onTap: decrementCounter,
                            child: const Image(image: NetworkImage('/assets/detail/minus.png'))
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen(cart: Cart(valueShop: valueShop))),
                );
              },
              child: const Text(
                'Buy now',
                style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(385, 61),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: const Color(0xFF2A334B),
              ),
            ),
          )
        ],
      ),
    );
  }
}
