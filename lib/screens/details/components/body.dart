import 'package:flutter/material.dart';
import 'package:project_ecommerce/modals/product_screen.dart';
import 'package:project_ecommerce/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height,
          child: Stack(
            children: [
              Container(          
                margin: EdgeInsets.only(top: size.height*0.3),
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:  Radius.circular(24),topRight: Radius.circular(24)),
                  color: Colors.white,
                ),
              ),
              ProductTitleWithImage(product: product),
            ],
          ),
          )
        ],
      ),
    );
  }
}

