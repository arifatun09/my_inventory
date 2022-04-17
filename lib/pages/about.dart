import 'package:flutter/material.dart';
import '../widgets/homepage_drower.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        shadowColor: Colors.pink,
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: MyDrower(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
            height: 450,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Column(
                  children: [
                    const Text(
                        '\nMy Inventory merupakan sebuah aplikasi untuk mencatat daftar barang-barang yang dimiliki sebuah toko atau perusahaan. Pada aplikasi ini terdapat 3 fitur yaitu: Add Product, Update Product, dan View Product.'),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.add,
                                size: 30,
                              ),
                              Text('Add Product')
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Text(
                              'Fitur Add Product digunakan untuk menambahkan barang pada daftar inventoris.'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.update,
                                size: 30,
                              ),
                              Text('Update Product')
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Text(
                              'Fitur Update Product digunakan untuk mengedit beberapa data pada salah satu barang inventoris.'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.view_agenda,
                                size: 30,
                              ),
                              Text('View Product')
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Text(
                              'Fitur View Product digunakan untuk menampilkan semua barang inventoris dan juga menampilkan detail data dari barang tertentu.'),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: MaterialButton(
                      height: 40,
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: const Text(
                        'Back',
                        textScaleFactor: 1,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
