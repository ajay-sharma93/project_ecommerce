import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';
import 'package:project_ecommerce/modals/product_screen.dart';
import 'package:project_ecommerce/screens/details/components/cart_counter.dart';
import 'package:project_ecommerce/screens/details/components/color_and_size.dart';
import 'package:project_ecommerce/screens/details/components/description.dart';
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
                padding: EdgeInsets.only(
                  top: size.height*0.12,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin,
                ),
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:  Radius.circular(24),
                    topRight: Radius.circular(24),
                    ),               
                ),

                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    Description(product: product),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CartCounter(),
                      Container(
                        padding: EdgeInsets.all(8),
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(color: Color(0xFFFF6464),
                        shape: BoxShape.circle,

                        ),
                        child: Icon(Icons.favorite,color: Colors.white,),
                      ),
                      ],
                    )
                  ],
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




