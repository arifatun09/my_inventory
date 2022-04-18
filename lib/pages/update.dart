import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../dbhelper.dart';
import '../models/item.dart';
import '../widgets/homepage_drower.dart';
import 'add.dart';

class Update extends StatefulWidget {
  const Update({Key key}) : super(key: key);

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  DbHelper dbHelper = DbHelper();

  int count = 0;

  List<Item> itemList;
  @override
  Widget build(BuildContext context) {
    if (itemList == null) {
      itemList = <Item>[];
    }
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
          // Padding(
          //   padding: const EdgeInsets.all(8),
          //   child: TextField(
          //     // controller: _controllerSearch,
          //     style: const TextStyle(color: Colors.blue, fontSize: 18),
          //     decoration: const InputDecoration(
          //         icon: Icon(Icons.search),
          //         hintText: "Search",
          //         hintStyle: TextStyle(color: Colors.grey)),
          //     // setiap ada perubahan, jalankan fungsi _searchName
          //     onChanged: (name) {
          //       // _searchName(name);
          //     },
          //   ),
          // ),
          Expanded(
            child: createListView(),
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

  Future<Item> navigateToAdd(BuildContext context, Item item) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return Add(item);
    }));
    return result;
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.headline5;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.ad_units),
            ),
            title: Text(
              itemList[index].name,
              style: textStyle,
            ),
            subtitle: Text('Harga: ' + itemList[index].price.toString()),
            onTap: () async {
              // ignore: unused_local_variable
              var item = await navigateToAdd(
                  context, itemList[index]); // Untuk melihat detail
              //TODO 5 Panggil Fungsi untuk Tampil
              updateListView();
            },
          ),
        );
      },
    );
  }

  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Item>> itemListFuture = dbHelper.getItemList();
      itemListFuture.then((itemList) {
        setState(() {
          this.itemList = itemList;
          count = itemList.length;
        });
      });
    });
  }
}
