import 'package:flutter/material.dart';
import 'package:project_ecommerce/screens/details/components/cart_counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}