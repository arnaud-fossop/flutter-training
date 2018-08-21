import 'package:flutter/material.dart';

//import '../product_manager.dart';
import './products_management_page.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Manage Products'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        ProductsManagementPage();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: Container(
          child: RaisedButton(
            child: Text('Essai'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  ProductsManagementPage();
                }),
              );
            },
          ),
        )
        // ProductManager(),
        );
  }
}
