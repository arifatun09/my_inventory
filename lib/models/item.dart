class Item {
  int _id;
  int _kode;
  String _kategori;
  String _name;
  String _merk;
  int _price;
  int _product;
  // ignore: non_constant_identifier_names
  int _product_rusak;

  int get id => _id;

  int get kode => _kode;
  set kode(value) => _kode = value;

  // ignore: unnecessary_getters_setters
  String get kategori => _kategori;
  set kategori(String value) => _kategori = value;

  // ignore: unnecessary_getters_setters
  String get name => _name;
  set name(String value) => _name = value;

  // ignore: unnecessary_getters_setters
  String get merk => _merk;
  set merk(String value) => _merk = value;

  get price => _price;
  set price(value) => _price = value;

  int get product => _product;
  set product(value) => _product = value;

  // ignore: non_constant_identifier_names
  int get product_rusak => _product_rusak;
  // ignore: non_constant_identifier_names
  set product_rusak(value) => _product_rusak = value;

  Item(this._kode, this._kategori, this._name, this._merk, this._price,
      this._product, this._product_rusak);

  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _kode = map['kode'];
    _kategori = map['kategori'];
    _name = map['name'];
    _merk = map['merk'];
    _price = map['price'];
    _product = map['product'];
    _product_rusak = map['product_rusak'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = _id;
    map['kode'] = kode;
    map['kategori'] = kategori;
    map['merk'] = merk;
    map['name'] = merk;
    map['price'] = price;
    map['product'] = product;
    map['product_rusak'] = product_rusak;
    return map;
  }
}
