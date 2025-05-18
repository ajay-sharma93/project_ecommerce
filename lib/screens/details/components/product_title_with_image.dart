import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';
import 'package:project_ecommerce/modals/product_screen.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Bags",style: TextStyle(color: Colors.black),
        ),
        Text(product.title,style:Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black,fontWeight: FontWeight.bold)
        ),
        SizedBox(height: kDefaultPaddin,),
        Row(
          children: [
            RichText(text: TextSpan(children: [
              TextSpan(text: "Price\n"),
              TextSpan(text: "\$${product.price}",
              style: 
              Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black,fontWeight: FontWeight.bold),
    
              ),
            ],
            ),
    
            ),
            SizedBox(width: kDefaultPaddin,),
            Expanded(child: Image.asset(product.image,fit: BoxFit.fill,))
          ],
        ),
      ],
      ),
    );
  }
}