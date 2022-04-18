import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/homepage_drower.dart';

class Show extends StatelessWidget {
  const Show(Item item, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Producct'),
        shadowColor: Colors.pink,
      ),
    );
  }
}
