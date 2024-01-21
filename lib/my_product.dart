import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:group4/model_product/product.dart';
class My_Product extends StatelessWidget {
  const My_Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context)=>IconButton(
          onPressed: ()=> Scaffold.of(context).openDrawer(),
          icon: Icon(
            Icons.home,
            size: 40,
          ),
            color: Colors.white,
          )
        ),
        title: Text("Hiển Thị Danh Sách Hình Ảnh"),

      ),
      body: FutureBuilder<List<Product>>(
        future: Product.fetchData(),
        builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot){
          if(snapshot.hasData){
            var data = snapshot.data;
            return My_Rindo(lsRindo: data!);
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}


class My_Rindo extends StatelessWidget {
  My_Rindo({super.key,required this.lsRindo});
  List<Product> lsRindo;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount: lsRindo.length,// chay het tat ca cac hinh
        //itemCount: 50,
        itemBuilder: (context, index){
          var product = lsRindo[index];
          return Column(
            children: [
              CachedNetworkImage(
                  width: 110,
                  height: 110,
                  imageUrl: product.image ,
                  placeholder: (context, imageUrl) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
              ),
              Text(
                'Title:${product.title}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10
                ),
              ),
              Text(
                'Price:${product.price}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              Column(
                children: [
                  Icon(
                  Icons.star,
                  color: Colors.red ,
                  ),
                  Text(
                    'Rating:${product.rating.rate} (${product.rating.count} reviews)',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      color: Colors.black38
                    ),
                  ),
                ],
              )
            ],
          );

    //       return Card(
    //       child: SingleChildScrollView( // Wrap with SingleChildScrollView
    //       child: Column(
    //       children: [
    //       Container(
    //       height: 70,
    //       ),
    //       Image.network(
    //       product.image, // Use product.title as the imageUrl
    //       width: 100,
    //       height: 100,
    //       ),
    //       Text(
    //       product.title, // Display the title as text
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //       fontSize: 16,
    //       ),
    //       ),
    //       SizedBox(height: 15),
    //       Text(
    //       '\$ ${product.price.toString()}',
    //       style: TextStyle(
    //       fontSize: 20,
    //         fontWeight: FontWeight.bold,
    //         color: Colors.red, // Set the price text color
    // ),
    // ),
    //         // Text(
    //         //   '\$ ${product.rating.toString()}',
    //         //   style: TextStyle(
    //         //     fontSize: 20,
    //         //     fontWeight: FontWeight.bold,
    //         //     color: Colors.black
    //         //   ),
    //         // )
    // ],
    // ),
    // ),
    // );
    }
    );

  }
}
