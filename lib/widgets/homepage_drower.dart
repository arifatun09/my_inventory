import 'package:flutter/material.dart';
import 'drower.dart';

class MyDrower extends StatelessWidget {
  const MyDrower({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyHeaderDrawer(),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: const Icon(Icons.add),
          title: const Text('Add Product'),
          onTap: () {
            Navigator.pushNamed(context, '/add');
          },
        ),
        ListTile(
          leading: const Icon(Icons.update),
          title: const Text('Update Product'),
          onTap: () {
            Navigator.pushNamed(context, '/update');
          },
        ),
        ListTile(
          leading: const Icon(Icons.view_agenda),
          title: const Text('View Product'),
          onTap: () {
            Navigator.pushNamed(context, '/view');
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('About'),
          onTap: () {
            Navigator.pushNamed(context, '/about');
          },
        ),
      ],
    );
  }
}
