import 'package:flutter/material.dart';
import '../widget/pruduct_item.dart';
import '../../../data/providers/all_products.dart';
import '../../../navigation/layout_navbar.dart';
import 'package:provider/provider.dart';

class MedicinePage extends StatelessWidget {
  const MedicinePage({super.key});

  @override
  Widget build(BuildContext context) {

    final productData = Provider.of<Product>(context);
    final all_products = productData.allProducts;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Medicine')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: all_products.length,
        itemBuilder: (context, index) => PruductItem(
          id: all_products[index].id,
          name: all_products[index].name,
          description: all_products[index].description,
          image: all_products[index].image,
          price: all_products[index].price,
          quantity: all_products[index].quantity,
        ),
      ),
      bottomNavigationBar: LayoutNavbar(
        currentIndex: 5,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/chat');
              break;
            case 2:
              // Add - belum ada halaman, bisa ditambahkan nanti
              break;
            case 3:
              Navigator.pushReplacementNamed(context, '/schedule');
              break;
            case 4:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
            case 5:
              // Already on Medicine
              break;
          }
        },
      ),
    );
  }
}
