import 'package:flutter/material.dart';
import 'package:flutter_first_application/models/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            print("${product.name} of ${product.id} pressed");
          },
          leading: Image.network(product.image),
          title: Text(product.name),
          subtitle: Text(product.desc),
          trailing: Text(
            '\$${product.price.toString()}',
            textScaleFactor: 1.5,
            style: TextStyle(color: Colors.blue[800]),
          ),
        ),
      ),
    );
  }
}
