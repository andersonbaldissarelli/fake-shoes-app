import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String name;
  final double value;
  final String image;
  const CartWidget(
      {Key? key,
      required this.onTap,
      required this.name,
      required this.value,
      required this.image})
      : super(key: key);

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
              left: 30,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2,
                height: 150,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
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
              right: 10,
              child: Container(
                width: 100,
                height: 60,
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 275,
              child: Text(
                'R\$' + value.toStringAsFixed(2),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              child: Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: onTap,
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
