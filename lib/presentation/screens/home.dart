import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      backgroundColor: const Color(0xFFFCB495),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Image(image: NetworkImage("/assets/home/burger.png"))],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image(image: NetworkImage("/assets/home/basket.png"))],
            ),
          ],
        ),
        backgroundColor: const Color(0x00FFFFFF),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7),
                  child: MaterialButton(
                    color: const Color(0x96F9F3FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    elevation: 0,
                    child: const Text("All", style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7),
                  child: MaterialButton(
                    // color: const Color(0x96F9F3FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    elevation: 0,
                    child: const Text("Sweets", style: TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7),
                  child: MaterialButton(
                    // color: const Color(0x96F9F3FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    child: const Text("Cakes", style: TextStyle(color: Colors.white),),
                    elevation: 0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7),
                  child: MaterialButton(
                    // color: const Color(0x96F9F3FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {},
                    child: const Text("Candey", style: TextStyle(color: Colors.white),),
                    elevation: 0,
                  ),
                )
              ],
              )
          ),
          const Padding(
            padding: EdgeInsets.only(top: 21, left: 75, right: 75),
            child: TextField(
              style: TextStyle(color: Color(0xFFF9F3FF)),
              cursorColor: Color(0xFFF9F3FF),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0x96F9F3FF),
                contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 35, right: 35),
                hintText: 'search ...',
                hintStyle: TextStyle(color: Color(0xFFF9F3FF)),
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFFF9F3FF),
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Color(0x002195F3), width: 0.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Color(0x002195F3), width: 0.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  borderSide: BorderSide(color: Color(0x002195F3), width: 0.0),
                ),
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     ListView(
          //       children: const [
          //         ListTile(
          //           title: Text('All'),
          //         ),
          //         ListTile(
          //           title: Text('Sweets'),
          //         ),
          //         ListTile(
          //           title: Text('Cakes'),
          //         ),
          //         ListTile(
          //           title: Text('Candey'),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          Stack(
            // padding: const EdgeInsets.only(top: 81),
            children: [ 
              Padding(
                padding: const EdgeInsets.only(top: 81.0),
                child: Container(
                  width: 500.0,
                  height: 658.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(51), topRight: Radius.circular(51)),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                left: 30,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
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
                                blurRadius: 5
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 35.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Cup Cake",
                                        style: TextStyle(fontSize: 18),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                                    padding: EdgeInsets.only(top: 14.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "\$5",
                                        style: TextStyle(fontSize: 18, color: Color(0xFF5AA72B)),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 12.0, right: 5),
                                    child: Image(image: NetworkImage('/assets/home/cake.png')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 102.0, right: 17),
                                    child: InkWell(
                                      onTap: () {},
                                      child: const  Image(image: NetworkImage('/assets/home/like.png')),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                      ),
                      Padding(
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
                                blurRadius: 5
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 35.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Donut",
                                        style: TextStyle(fontSize: 18),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                                    padding: EdgeInsets.only(top: 14.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "\$3",
                                        style: TextStyle(fontSize: 18, color: Color(0xFF5AA72B)),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 12.0, right: 5),
                                    child: Image(image: NetworkImage('/assets/home/donut.png')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 102.0, right: 17),
                                    child: InkWell(
                                      onTap: () {},
                                      child: const  Image(image: NetworkImage('/assets/home/like.png')),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                      ),
                      Padding(
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
                                blurRadius: 5
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 35.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Macaron",
                                        style: TextStyle(fontSize: 18),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Padding(
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
                                    padding: EdgeInsets.only(top: 14.0, left: 21),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "\$6",
                                        style: TextStyle(fontSize: 18, color: Color(0xFF5AA72B)),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 12.0, right: 5),
                                    child: Image(image: NetworkImage('/assets/home/macaron.png')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 102.0, right: 17),
                                    child: InkWell(
                                      onTap: () {},
                                      child: const  Image(image: NetworkImage('/assets/home/like.png')),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                      ),
                      const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 45),
                            child: Row(
                              children: [
                                Image(image: NetworkImage('/assets/home/left arrow.png')),
                                Image(image: NetworkImage('/assets/home/right arrow.png')),
                              ],
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 21),
                            child: Image(image: NetworkImage('/assets/home/line.png')),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
