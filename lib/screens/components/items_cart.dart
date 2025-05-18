import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';
import 'package:project_ecommerce/modals/product_screen.dart';

class ItemCard extends StatelessWidget {
  final  Product product;
  final VoidCallback press;
  
  const ItemCard({
    super.key, required this.product, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // height:180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
              borderRadius:BorderRadius.circular(16),
                ),
                child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/5),
            child: Text(product.title,
            style: TextStyle(color:kTextLightColor),
            ),
          ),
          Text("\$${product.price}",
          style:TextStyle(fontWeight:FontWeight.bold) 
          ),
        ],
      ),
    );
  }
}
