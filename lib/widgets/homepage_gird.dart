import 'package:flutter/material.dart';
import '../dbhelper.dart';
import '../models/item.dart';
import '../pages/add.dart';

// ignore: must_be_immutable
class Gridview extends StatelessWidget {
  Gridview({
    Key key,
    this.dbHelper,
  }) : super(key: key);

  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(40),
      crossAxisCount: 2,
      children: [
        Card(
          margin: const EdgeInsets.all(8),
          color: const Color.fromARGB(255, 135, 205, 255),
          child: InkWell(
            onTap: () async {
              var item = await navigateToAdd(context, null);
              if (item != null) {
                await dbHelper.insert(item);
              }
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.pink,
                  ),
                  Text(
                    'Add Product',
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          color: const Color.fromARGB(255, 255, 160, 191),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/update');
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.update,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Text(
                    'Update Product',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          color: const Color.fromARGB(255, 255, 160, 191),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/view');
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.view_agenda,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Text(
                    'View Product',
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          color: const Color.fromARGB(255, 135, 205, 255),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.pink,
                  ),
                  Text(
                    'About',
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Item> navigateToAdd(BuildContext context, Item item) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return Add(item);
    }));
    return result;
  }
}
