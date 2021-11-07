import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_first_application/models/product.dart';
import 'package:flutter_first_application/widgets/drawer.dart';
import 'package:flutter_first_application/widgets/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var raw = await rootBundle.loadString('assets/files/products.json');
    var products = jsonDecode(raw)['products'];
    Product.all =
        List.from(products).map((product) => Product.fromMap(product)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog Application'),
        actions: [
          IconButton(
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: const Text('FavoriteDialog Title'),
                      content: const Text('AlertDialog description'),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text('Cancel'),
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                        ),
                        CupertinoDialogAction(
                          child: const Text('Ok'),
                          onPressed: () => Navigator.pop(context, 'Ok'),
                        ),
                      ],
                    ),
                  ),
              icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('SearchDialog Title'),
                      content: const Text('AlertDialog description'),
                      actions: [
                        TextButton(
                          child: const Text('Cancel'),
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                        ),
                        TextButton(
                          child: const Text('Ok'),
                          onPressed: () => Navigator.pop(context, 'Ok'),
                        ),
                      ],
                    ),
                  ),
              icon: const Icon(Icons.search)),
          PopupMenuButton<Text>(
              elevation: 10,
              enabled: true,
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(child: Text("First")),
                  PopupMenuItem(child: Text("Second")),
                ];
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (Product.all == null)
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: Product.all?.length,
                itemBuilder: (context, index) {
                  return ProductWidget(product: Product.all![index]);
                },
              ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
