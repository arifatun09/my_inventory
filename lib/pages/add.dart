import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/homepage_drower.dart';

class Add extends StatefulWidget {
  final Item item;
  // ignore: use_key_in_widget_constructors
  const Add(this.item);

  @override
  // ignore: no_logic_in_create_state
  State<Add> createState() => _AddState(item);
}

class _AddState extends State<Add> {
  Item item;
  _AddState(this.item);
  TextEditingController kodeController = TextEditingController();
  TextEditingController kategoriController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController merkController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController productController = TextEditingController();
  TextEditingController productRusakController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (item != null) {
      kodeController.text = item.kode.toString();
      kategoriController.text = item.kategori;
      nameController.text = item.name;
      merkController.text = item.merk;
      priceController.text = item.price.toString();
      productController.text = item.product.toString();
      productRusakController.text = item.product_rusak.toString();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        shadowColor: Colors.pink,
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: MyDrower(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: kodeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Kode',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: kategoriController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Kategori',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nama Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: merkController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Merk',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Harga Satuan',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: productController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Barang Tidak Rusak',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: productRusakController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Barang Rusak',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MaterialButton(
                      height: 40,
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: const Text(
                        'Cancel',
                        textScaleFactor: 1.3,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                  ),
                  Expanded(
                    child: MaterialButton(
                      height: 40,
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: const Text(
                        'Save',
                        textScaleFactor: 1.3,
                      ),
                      onPressed: () {
                        item = Item(
                          int.parse(kodeController.text),
                          kategoriController.text,
                          nameController.text,
                          merkController.text,
                          int.parse(priceController.text),
                          int.parse(productController.text),
                          int.parse(productRusakController.text),
                        );
                        Navigator.pop(context, item);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  // update List item
  // void updateListView() {
  //   final Future<Database> dbFuture = dbHelper.initDb();
  //   dbFuture.then((database) {
  //     //TODO 1 Select data dari DB
  //     Future<List<Item>> itemListFuture = dbHelper.getItemList();
  //     itemListFuture.then((itemList) {
  //       setState(() {
  //         this.itemList = itemList;
  //         this.count = itemList.length;
  //       });
  //     });
  //   });
  // }
}
