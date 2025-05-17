import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';
import 'package:project_ecommerce/modals/product_screen.dart';
import 'package:project_ecommerce/screens/components/categories.dart';
import 'package:project_ecommerce/screens/components/items_cart.dart';
import 'package:project_ecommerce/screens/details/details_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Women",style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
            itemCount:products.length,
            
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.80,
            ), 
              itemBuilder: (context, index) => ItemCard(
                key: ValueKey(products[index]), // ✅ Fix: add key here
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(product: products[index], key: null,),

          ),
            ),
        ),
            ),
          ),
    )
    ]);
  }
}


