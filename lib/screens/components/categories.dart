import 'package:flutter/material.dart';
import 'package:project_ecommerce/constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag","Jewellery","Footwear","Dresses"];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(categories[index],
          style: TextStyle(fontWeight:FontWeight.bold,color: kTextColor,),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: kDefaultPaddin/5),
              height:3,
              width: 30,
              color:selectedIndex==index? Colors.black:Colors.transparent,
            ),
          ),
        ],
      ),
      ),
    );
  }
}