import 'package:ecommerce/Model/productsmodel.dart';
import'package:flutter/material.dart';

import '../Screens/update.dart';
class CustomCard extends StatelessWidget {
  ProductsModel  products;
CustomCard({required this.products});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Update.id,arguments: products);

      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 40,
                      offset: Offset(10,10),
                      color: Colors.grey.withOpacity(.2)

                  )
                ]
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${products.title}'.substring(0,6),style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 3,),
                    Row(
                      children: [
                        Text(r'$''${products.price}'),
                        Spacer(flex: 1,),
                        Icon(Icons.favorite,color: Colors.red,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right:32,
              top: -60,
              child: Image.network('${products.image}'),height: 100,width: 100,)
        ],
      ),
    );
  }
}
