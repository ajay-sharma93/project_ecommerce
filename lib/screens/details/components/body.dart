import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';
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
                  Row(   
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Color"),
                         Row(children: [
                         ColorDot( color:Color(0xFF356C95),isSelected: true,
                         ),
                         ColorDot( color:Color(0xFF356C95)),
                         ColorDot( color:Color(0xFF356C95)),
                         ],
                         ),
                        ],
                      ),                     
                    ],
                  ),
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

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
     super.key,
    required this.color,
    this.isSelected =false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPaddin/4,
      right: kDefaultPaddin/2,
      
      ),
      padding: EdgeInsets.all(2.5),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape:BoxShape.circle,
        border:Border.all(
          color:isSelected?color:Colors.transparent,
      ),
      ),
      child: DecoratedBox(
      decoration:BoxDecoration(
      color:color,
      shape: BoxShape.circle,
      ),
      ),
      );
  }
}

