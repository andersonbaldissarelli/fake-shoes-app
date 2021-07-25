import 'package:flutter/material.dart';

class PaymentCartWidget extends StatefulWidget {
  final VoidCallback? onTapIncrement;
  final VoidCallback? onTapDecrement;
  final String name;
  final double value;
  final int quantity;
  final String image;

  const PaymentCartWidget(
      {Key? key,
      required this.name,
      required this.value,
      required this.quantity,
      this.onTapIncrement,
      this.onTapDecrement,
      required this.image})
      : super(key: key);

  @override
  _PaymentCartWidgetState createState() => _PaymentCartWidgetState();
}

class _PaymentCartWidgetState extends State<PaymentCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        width: MediaQuery.of(context).size.width / 1.1,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            Positioned(
              bottom: -120,
              top: 0,
              left: -25,
              child: Container(
                alignment: Alignment.topCenter,
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.blueAccent.withOpacity(0.3),
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              child: Container(
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width / 4,
                height: 150,
                child: Image.asset(
                  widget.image,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: -100,
              right: -25,
              child: Container(
                alignment: Alignment.topCenter,
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Colors.blueAccent.withOpacity(0.3),
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: MediaQuery.of(context).size.width / 3,
              child: Container(
                width: 150,
                height: 60,
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: MediaQuery.of(context).size.width / 3,
              child: Text(
                'R\$' + widget.value.toStringAsFixed(2),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: -10,
              child: Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: widget.onTapIncrement,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 28,
              bottom: 65,
              child: Text(
                widget.quantity.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: -10,
              bottom: 10,
              child: Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: widget.onTapDecrement,
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
