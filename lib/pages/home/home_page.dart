import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_cart/pages/cart/cart_controller.dart';
import 'package:shop_cart/pages/cart/cart_page.dart';
import 'package:shop_cart/pages/home/home_controller.dart';
import 'package:shop_cart/pages/home/widgets/cart_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homecontroller = HomeController();
  CartController cartController = CartController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blueAccent.withOpacity(0.3),
                Colors.white,
              ],
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Fake Shoes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Stack(children: [
            Observer(builder: (context) {
              return Text(
                cartController.listSize,
                style: TextStyle(
                  color: Colors.blueAccent.withOpacity(0.8),
                ),
              );
            }),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.blueAccent.withOpacity(0.8),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CartPage(
                      cartController: cartController,
                    ),
                  ),
                );
              },
            ),
          ]),
        ],
      ),
      body: Center(
        child: Observer(
          builder: (BuildContext context) {
            return ListView.builder(
              itemCount: homecontroller.products.length,
              itemBuilder: (context, index) => CartWidget(
                name: homecontroller.products[index].name,
                value: homecontroller.products[index].value,
                image: homecontroller.products[index].image,
                onTap: () =>
                    cartController.addItem(homecontroller.products[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
