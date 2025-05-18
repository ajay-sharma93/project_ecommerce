import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_ecommerce/modals/product_screen.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        // ignore: deprecated_member_use
        leading: IconButton(onPressed: ()=>Navigator.pop(context), icon: SvgPicture.asset('assets/icons/back-svgrepo-com.svg',height:50,width: 50,color: Colors.white,),
        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search),
          ),
          IconButton(onPressed: (){}, icon:Icon(Icons.card_travel),
          ),
        ],
      ),
    );
  }
}