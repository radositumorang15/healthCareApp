import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/providers/all_products.dart';

class DetailMedicinePage extends StatelessWidget {
DetailMedicinePage({super.key});


  static const routeName = '/detail-medicine';


  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final product_detail =  Provider.of<Product>(context).allProducts.firstWhere((product) => product.id == productId);
    return Scaffold(
      appBar: AppBar(title: Text('Detail Medicine')),
      body: Column(
        children: [
          Text(product_detail.name),
          Text(product_detail.description),
          Text(product_detail.price),
          Text(product_detail.quantity),
        ],
      ),
    );
  }
}