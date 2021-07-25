import 'dart:convert';

import 'package:shop_cart/shared/models/product.dart';

class SaleProduct {
  Product product;
  int quantity;
  double sumvalue;
  SaleProduct({
    required this.product,
    required this.quantity,
    required this.sumvalue,
  });

  SaleProduct copyWith({
    Product? product,
    int? quantity,
    double? sumvalue,
  }) {
    return SaleProduct(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      sumvalue: sumvalue ?? this.sumvalue,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'quantity': quantity,
      'sumvalue': sumvalue,
    };
  }

  factory SaleProduct.fromMap(Map<String, dynamic> map) {
    return SaleProduct(
      product: Product.fromMap(map['product']),
      quantity: map['quantity'],
      sumvalue: map['sumvalue'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SaleProduct.fromJson(String source) =>
      SaleProduct.fromMap(json.decode(source));

  @override
  String toString() =>
      'SaleProduct(product: $product, quantity: $quantity, sumvalue: $sumvalue)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SaleProduct &&
        other.product == product &&
        other.quantity == quantity &&
        other.sumvalue == sumvalue;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode ^ sumvalue.hashCode;
}
