import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List<String>topics=[
    'tất cả','khoa học tự nhiên', 'khoa học xã hội', 'đời sống', 'kinh tế', 'văn học',
    'nghệ thuật','phim ảnh', 'âm nhac '
  ];
List<String> popupMenuString= [
  "search", "help", "profile", "logout"
];
String imageUrl ='https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1858&q=80';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(//tạo một cái hộp để bỏ listview vào
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: topics.map((topic){
                  return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                      child:Center(
                         child: Text(
                            topic,
                           style: TextStyle(
                             color: Colors.cyan,
                             fontWeight: FontWeight.bold
                           ),
                          ),
                      )
                  );

                }).toList(),
              ),
            ),
            Text(
              "Hello every body,how are you?",
              style: TextStyle(
                color: Colors.red,
                fontSize: 50,
                fontFamily: 'Dangcing',
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Xin Chào Mọi Người, Mọi Người Khỏe Không?--",
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,

              ),
            ),
            Text(
              " Xin Chào ",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 60,
                fontWeight: FontWeight.bold,

              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50,right: 20),//bên ngoài hộp,
              // khoảng cách giữa các cạnh, all là chung, only là chỉ một bên
              padding: EdgeInsets.all(30),// tương tự như margin
              decoration: BoxDecoration(// hình hộp màu vàng
                //color: Colors.amber,
                gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.blue,
                    Colors.black
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(// bấm vào nút icon
                    onPressed: (){
                      print("Hello, bạn đã nhấn vào tôi ư");
                    },
                    icon: Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      print("ôi thật tuyệt!");
                    },
                    icon: Icon(
                      Icons.account_box,
                      size: 50,
                      color: Colors.orange,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      var snackBar = SnackBar(
                        content: Text("cảm ơn bạn đã chia sẽ"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: Icon(
                      Icons.share,
                      size: 50,
                      color: Colors.cyan,
                    ),
                  )
                ],
              ),
            ),
            Image(
              image: NetworkImage(imageUrl),
            ),
            Image(
              image: AssetImage("asset/image/cat.jpg"),
            )
          ],
        ),
      ),
    appBar: AppBar(
      backgroundColor: Colors.orangeAccent,
      title: Text(
        "Welcome App",
        //textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 40,
        ),

      ),
      leading: Icon(
        Icons.home,
        color: Colors.green,
        size: 40,
      ),

      actions: [
        IconButton(
          onPressed: (){
            // viết code xử lý dử liệuở đây
          },
          icon: Icon(
            Icons.search,

          )
        ),
        IconButton(
          onPressed: (){

          },
          icon: Icon(
            Icons.account_circle_outlined
          ),
        ),
        PopupMenuButton(
          itemBuilder: (context){
            var ls= popupMenuString.map((e){
              return PopupMenuItem(
              child: Text(e),
              onTap:(){
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                      content: Text("bạn đã nhấn nút ${e}")
              )
    );
              },
    );


            }).toList();
            return ls;
          },
        )
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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),

      ),
      //backgroundColor: Colors.indigo,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
