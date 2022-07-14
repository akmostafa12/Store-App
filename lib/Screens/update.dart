import 'package:ecommerce/Model/productsmodel.dart';
import 'package:ecommerce/Services/updateproduct.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class Update extends StatefulWidget {
  static String id = 'Update';

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  String ? productName;

  String ? description;

  String ? price;

  String ? image;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductsModel products = ModalRoute.of(context)!.settings.arguments as ProductsModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Update Product',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  onChanged: (data){
                    productName = data;
                  },
                  decoration: InputDecoration(
                    hintText: 'Product Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                    )
                  ),
                ),

              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  onChanged: (data){
                    description = data;
                  },
                  decoration: InputDecoration(
                      hintText: 'Descrption',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      )
                  ),
                ),

              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  onChanged: (data){
                    price = data;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Price',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      )
                  ),
                ),

              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  onChanged: (data){
                    image = data;
                  },
                  decoration: InputDecoration(
                      hintText: 'Image',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      )
                  ),
                ),

              ),
              SizedBox(height: 30,),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black,

                ),
                child: MaterialButton(
                  child: Text('Update',style: TextStyle(color: Colors.white),),
                    onPressed: ()async{
                    setState(() {

                    });
                    isLoading = true;

                    try{
                      await UpdateProduct().updateProuduct(
                        id: products.id,
                        title: productName== null ? products.title : productName!,
                          price: price == null ? products.price.toString() : price!,
                          desc: description == null ? products.description : description!,
                          image: image == null ? products.image : image!,
                          category: products.category,

                      );
                      print('Success');
                    } catch(e){
                     setState(() {
                      });
                      print('Erorr Is ${e.toString()}');
                    }
                    isLoading = false;

                    }
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

}
