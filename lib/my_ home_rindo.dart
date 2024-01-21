import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeRinDo extends StatelessWidget {
   MyHomeRinDo({super.key});
  List<String> popupMenuString=[
    "search", "help", " profile", " logout"
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: Center(
         child: Column(
           children: [
             Text(
               " xin chào rin đô",
                   style: TextStyle(
                    color: Colors.green,
                      fontSize: 50
             ),
             ),
             Text(
               " Thiện Nhân, Chị thật đẹp",
               style: TextStyle(
                  color: Colors.indigo,
                 fontSize: 60
               ),
             ),
           Container(
             margin: EdgeInsets.all(20),
             padding: EdgeInsets.all(20),
             decoration: BoxDecoration(
               //color: Colors.orange,
               gradient: LinearGradient(// chỉnh các màu trong box, có thể phối các màu lại với nhau
                 colors: [
                 Colors.lime,
                 Colors.cyanAccent,
                 Colors.orangeAccent
                 ],
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight
               ),
               borderRadius: BorderRadius.circular(20),
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 IconButton(
                   onPressed: (){
                      var snackBar= SnackBar(
                        content: Text(" cám ơn bạn đã chọn tôi"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   },
                    icon: Icon(
                      Icons.home,
                      size: 50,
                        color: Colors.orange,
                    ),
                 ),
                 IconButton(
                   onPressed: (){
                      var snackBar= SnackBar(
                        content: Text(" thanks"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   },
                   icon: Icon(
                     Icons.account_box,
                     size: 40,
                     color: Colors.red,
                   ),
                 ),
                 IconButton(
                   onPressed: (){
                      var snackBar= SnackBar(
                        content: Text(" cám ơn bạn đã chia sẽ"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   },
                   icon: Icon(
                     Icons.share,
                     size: 40,
                     color: Colors.blue,
                   ),
                 )
               ],
             ),
           )
           ],
         ),
       ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          " Welcome App Rin Đô",
          style: TextStyle(
            fontSize: 40,
            color: Colors.indigo
          ),
        ),

         leading: Icon(
           Icons.home,
           color: Colors.lime,
           size: 40,
         ),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.search,

            ),
          ),
          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.account_circle_outlined,

            ),
          ),
          PopupMenuButton(
            itemBuilder:(context){
              var ls= popupMenuString.map((e){
                return PopupMenuItem(
                child: Text(e),
                onTap:(){
                  ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                  content: Text("bạn đã nhấn nút ${e}"),
                  )
                  );
    } ,
                );

              }).toList();
              return ls;
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "Customers"
          ),

        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),

      backgroundColor: Colors.cyan,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
