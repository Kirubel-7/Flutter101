void main() {
  List<Product> products = [
    Product('Laptop', 3500.0, 'Electronics'),
    Product('Book', 399.5, 'Education'),
    Product('Phone', 599.9, 'Electronics'),
  ];
  for (var product in products) {
    print(product.toString());
    print('Type: ${product.runtimeType}');
  }
  Product selected = products[0];
  Map<String, dynamic> productMap = selected.toMap();
  print('\nMap Representation of First Product:');
  productMap.forEach((key, value) => print('$key => $value'));
  // for (var product in products) {
  //   productMap[product.name] = product;
  //   productMap[product.price.toString()] = product;
  //   productMap[product.category] = product;
  // }
}

class Product {
  final String name;
  final double price;
  final String category;
  Product(this.name, this.price, this.category);
  @override
  String toString() {
    return 'name: ${name}, price: \$$price, category: ${category}';
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'price': price, 'category': category};
  }
}
