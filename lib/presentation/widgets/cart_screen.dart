import 'package:flutter/material.dart';
import 'package:FoodExploer/presentation/screens/home.dart';
import 'package:FoodExploer/presentation/screens/detail.dart';
import 'package:FoodExploer/domain/basket.dart';

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems;

  const CartScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen(cart: AddCart(valueShop: 0))),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Image(image: NetworkImage("/assets/detail/arrow left.png"))],
          ),
        ),
        backgroundColor: const Color(0x00FFFFFF),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 75),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                CartItem item = cartItems[index];
                return 
                Positioned(
                  top: 12,
                  left: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailScreen(
                                  title: "Cup Cake",
                                  description: "Flavoured cupcakes with\nspecial icing",
                                  price: 5,
                                  image: '/assets/home/cake.png',
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: Container(
                              width: 435.0,
                              height: 158.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x50000000),
                                    offset: Offset(7, 7),
                                    blurRadius: 5,
                                  )
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 35.0, left: 21),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "${item.name} | ${item.quantity}",
                                            style: const TextStyle(fontSize: 18),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 14.0, left: 21),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Flavoured cupcakes with\nspecial icing",
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 14.9),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 45,
                                            width: 61,
                                            padding: const EdgeInsets.only(top: 12, left: 14),
                                            decoration: const BoxDecoration(
                                              color: Color(0x88FFA595),
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(51),
                                                  bottomRight: Radius.circular(51),
                                                  bottomLeft: Radius.circular(35)),
                                            ),
                                            child: Text(
                                              item.price.toString(),
                                              style: const TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 12.0, right: 25),
                                        child: Image(image: NetworkImage('/assets/home/cake.png')),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
                // ListTile(
                //   title: Text(item.name),
                //   subtitle: Text(
                //     'Ціна: ${item.price.toStringAsFixed(2)}',
                //     style: const TextStyle(color: Color(0xFF202020)),
                //   ),
                //   trailing: Text('Кількість: ${item.quantity}'),
                // );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 278.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen(cart: AddCart(valueShop: 0))),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(385, 61),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: const Color(0xFF2A334B),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
