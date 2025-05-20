import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';
import 'package:project_ecommerce/modals/product_screen.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(   
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
             Row(children: [
             ColorDot( color:Color(0xFF356C95),isSelected: true,
             ),
             ColorDot( color:Color(0xFF5733FF)),
             ColorDot( color:Color(0xFF3E2723)),
             ],
             ),
            ],
          ),
        ),    
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
            TextSpan(text: "Size\n",style:TextStyle(fontWeight: FontWeight.bold)
            
            ),
            TextSpan(text: "${product.size} cm",style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold))
          ],
          ),
          ),
        ),                 
      ],
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

