import 'package:flutter/material.dart';
import '../widgets/homepage_drower.dart';
import '../widgets/homepage_gird.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY INVENTORY'),
        shadowColor: Colors.pink,
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: MyDrower(),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.blue,
            width: double.infinity,
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 120,
                ),
                Text(
                  'My Inventory',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Simpan Data Barang Dengan Mudah',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 399,
            child: Gridview(),
          ),
        ],
      ),
    );
  }
}
