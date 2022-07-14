import 'dart:math';

import 'package:ecommerce/Model/productsmodel.dart';
import 'package:ecommerce/Screens/update.dart';
import 'package:ecommerce/Services/addallproduct.dart';
import 'package:ecommerce/Services/getallcategory.dart';
import 'package:ecommerce/Services/getcategory.dart';
import 'package:ecommerce/Services/getproducts.dart';
import 'package:ecommerce/Widgets/customcard.dart';
import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatelessWidget {

  @override
  static String id = 'Home';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('New Trend',style: TextStyle(color: Colors.black),),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(icon:Icon(FontAwesomeIcons.cartPlus,color: Colors.black), onPressed: (){},)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16,top: 65,left: 16),
        child: FutureBuilder<List<ProductsModel>>(
          future: GetAllProducts().getAllProducts(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<ProductsModel> products = snapshot.data!;
              return GridView.builder(clipBehavior: Clip.none,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 100,

              ), itemBuilder: (context,index)=> CustomCard(products: products[index],),itemCount: products.length);
          }
            else{
              return Center(
                  child: CircularProgressIndicator()
              );
            }
          },
        ),
      )
    );
  }
}
