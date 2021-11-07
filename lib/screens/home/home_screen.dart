import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_application/models/product.dart';
import 'package:flutter_first_application/widgets/drawer.dart';
import 'package:flutter_first_application/widgets/product_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => Product.get[0]);
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
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ProductWidget(product: dummyList[index]);
          },
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
