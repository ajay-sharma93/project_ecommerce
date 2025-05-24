import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';
import 'package:project_ecommerce/modals/product_screen.dart';
class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 45,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: product.color),
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart_sharp),
    
            ),
          ),
          
            Expanded(
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                
                onPressed: (){},
                child: Text("Buy Now".toUpperCase(),
                style: TextStyle(
                  color: product.color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),)),
              ),
            ),
        ],
      ),
    );
  }
}