import 'dart:convert';

class Product {
  final double value;
  final String name;
  final String image;
  Product({
    required this.value,
    required this.name,
    required this.image,
  });

  Product copyWith({
    double? value,
    String? name,
    String? image,
  }) {
    return Product(
      value: value ?? this.value,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'name': name,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      value: map['value'],
      name: map['name'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() => 'Product(value: $value, name: $name, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.value == value &&
        other.name == name &&
        other.image == image;
  }

  @override
  int get hashCode => value.hashCode ^ name.hashCode ^ image.hashCode;
}
