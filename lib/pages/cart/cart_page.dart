import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop_cart/pages/cart/cart_controller.dart';
import 'package:shop_cart/pages/cart/widgets/payment_cart_widget.dart';

class CartPage extends StatefulWidget {
  final CartController cartController;
  const CartPage({Key? key, required this.cartController}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Observer(
            builder: (BuildContext context) {
              return ListView.builder(
                itemCount: widget.cartController.cartProducts.length,
                itemBuilder: (context, index) => PaymentCartWidget(
                  name: widget.cartController.cartProducts[index].product.name,
                  quantity: widget.cartController.cartProducts[index].quantity,
                  value: widget.cartController.cartProducts[index].sumvalue,
                  image:
                      widget.cartController.cartProducts[index].product.image,
                  onTapIncrement: () => widget.cartController.addItem(
                      widget.cartController.cartProducts[index].product),
                  onTapDecrement: () => widget.cartController.removeItem(
                      widget.cartController.cartProducts[index].product),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.payment),
        label: Observer(
            builder: (BuildContext context) => Text(
                  'Finalizar compra  ' + widget.cartController.checkout,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
      ),
    );
  }
}
