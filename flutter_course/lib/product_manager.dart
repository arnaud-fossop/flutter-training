import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  String startinProduct;

  ProductManager(this.startinProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startinProduct);
  }

  _addProducts() {
    setState(() {
      _products.add('advanced food tester');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: _addProducts,
            child: Text('Add Product'),
          ),
        ),
        Products(_products),
      ],
    );
  }
}
