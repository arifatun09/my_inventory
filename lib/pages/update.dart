import 'package:flutter/material.dart';
import '../widgets/homepage_drower.dart';

class Update extends StatelessWidget {
  const Update({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
        shadowColor: Colors.pink,
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: MyDrower(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              // controller: _controllerSearch,
              style: const TextStyle(color: Colors.blue, fontSize: 18),
              decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey)),
              // setiap ada perubahan, jalankan fungsi _searchName
              onChanged: (name) {
                // _searchName(name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text(
                      'Cancel',
                      textScaleFactor: 1,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
