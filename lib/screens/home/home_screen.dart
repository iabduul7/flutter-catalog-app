import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog Application',
        ),
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
      body: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            fontSize: 48,
            fontFamily: 'Poppins-Italic',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
