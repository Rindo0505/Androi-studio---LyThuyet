import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'model/photo.dart';
class My_Album extends StatelessWidget {
  const My_Album({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("danh sach hinh anh"),
      ),
      body: FutureBuilder<List<Photo>>(
        future: Photo.fetchData(),
        builder: (BuildContext context, AsyncSnapshot<List<Photo>> snapshot){
        if(snapshot.hasData){
          var data = snapshot.data;
          return My_Photo(lsPhoto: data!);
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


class My_Photo extends StatelessWidget {
   My_Photo({super.key,required this.lsPhoto});
List<Photo> lsPhoto;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        //itemCount: lsPhoto.length,// chay het tat ca cac hinh
        itemCount: 10,
        itemBuilder: (context, index){
          var photo = lsPhoto[index];
          // return Column(
          //   children: [
          //     Text(photo.title),
          //     Expanded(child: Image.network(photo.thumbnailUrl)),
          //   ],
          // );
          return CachedNetworkImage(
            imageUrl: photo.thumbnailUrl,
            placeholder: (context, imageUrl){
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

          );
        }
    );
  }
}
