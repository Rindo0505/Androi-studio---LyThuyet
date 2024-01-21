import 'package:flutter/material.dart';
class My_Classroom extends StatelessWidget {
  My_Classroom({super.key});
  List<String> popupMenuString= [
    "Làm mới", "Gửi ý kiến phản hồi cho Google"
  ];
  List<LopHoc> lsLopHoc = [
    LopHoc(TenMH: "Nhập môn trí tuệ nhân tọa", MaLHP: "TIN3113.004", TenGV: "Đoàn Thị Hồng Phước", Anh: "DuAn/image/ttnt.jpg"),
    LopHoc(TenMH: "Mẫu thiết kế", MaLHP: "2324.1.DP01 (C4)", TenGV: "Nguyễn Văn Trung", Anh: "DuAn/image/mtk.jpg"),
    LopHoc(TenMH: "Phân tích và thiết kế hệ thống thông tin", MaLHP: "2022-2023.1.TIN3093.003", TenGV: "Nguyễn Tuấn Khanh", Anh: "DuAn/image/pttktt.jpg"),
    LopHoc(TenMH: "Cấu trúc dữ liệu và thuật toán", MaLHP: "2022-2023.1.TIN3084.001", TenGV: "Hoàng Quang", Anh: "DuAn/image/ctdltt.jpg"),
    LopHoc(TenMH: "Lập trình phân tán",MaLHP: " ", TenGV: "Nguyễn Hoàng Hà", Anh: "DuAn/image/ltpt.jpg"),
    LopHoc(TenMH: "Xác xuất thống kê", MaLHP: "2021-2022.2.TOA2023.007", TenGV: "Trần Thiện Thành", Anh: "DuAn/image/DuAn/xxtk.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 110,
              width: 630,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.lime,
                image: new DecorationImage(
                  image: new ExactAssetImage('DuAn//image//ttnt.jpg'),
                  fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            "Nhập Môn Trí Tuệ Nhân Tạo-Nhóm 2  ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          PopupMenuButton(
                            itemBuilder: (context){
                              List<String> lsMenuItem = ["Hủy đăng kí"];
                              var ls= lsMenuItem.map((e){
                                return PopupMenuItem(
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  ),
                                );


                              }).toList();
                              return ls;
                            },
                          ),
                        ],
                      ),


                      Text(
                        "TIN3113.004",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),

                  Text(
                    "Đoàn Thị Hồng Phước",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white
                    ),
                  )

                ],
              ),
            ),
            Container(
              height: 110,
              width: 600,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new ExactAssetImage('DuAn//image//mtk.jpg'),
                  fit: BoxFit.cover,),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2324.1.DP01(C4)",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Nguyễn Văn Trung",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black
                    ),
                  )

                ],
              ),
            ),//mtk
            Container(
              height: 110,
              width: 600,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new ExactAssetImage('DuAn//image//pttktt.jpg'),
                    fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "[2022-2023.1] - Phân Tích Và Thiết Kế Các Hệ Thống Thông Tin - Nhóm 1",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        "2022-2023.1.TIN3093.003",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black87
                        ),
                      ),
                    ],
                  ),

                  Text(
                    "Tuấn Nguyễn Thanh",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black87
                    ),
                  ),
                ],
              ),
            ),//pttktt
            Container(
              height: 110,
              width: 600,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new ExactAssetImage('DuAn//image//ctdltt.jpg'),
                    fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cấu Trúc Dữ Liệu Và Thuật Toán - Nhóm 1",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        "2022-2023.1.TIN3084.001",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.black87
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Quang Hoàng",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87
                    ),
                  )

                ],
              ),
            ),//ctdltt
            Container(
              height: 110,
              width: 600,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: new ExactAssetImage('DuAn//image//ltpt.jpg'),
                    fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "[203-2024]Lập Trình Phân Tán - Nhóm 1",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    "Nguyễn Hoàng Hà",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87
                    ),
                  )
                ],
              ),
            ),//ltpt
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white54,
        leading: Builder(
          builder: (context)=>IconButton(
            onPressed: ()=> Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu
            ),
            color: Colors.black54,
          ),
        ) ,
        title: Text(
          "Google Lớp học",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black38,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 100,
              child: Text(
                "T",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white
                ),
              ),
            )
          ),
          PopupMenuButton(
            itemBuilder: (context){
              var ls= popupMenuString.map((e){
                return PopupMenuItem(
                  child: Text(
                    e,
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
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
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 68,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                          color: Colors.black12,
                          width: 1,
                        )
                    )
                ),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('DuAn/image/gg.jpg'),
                      height: 120,
                      width: 121,
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    ),
                    Text(
                      "Classroom",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    child:  ListTile(
                      leading: Icon(
                        Icons.home_outlined,
                        color: Colors.black54,
                        size: 24,
                      ),
                      title: Text(
                        "Lớp học",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                        ),
                      ),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  Container(
                      margin: EdgeInsets.only(left: 2),
                      child:  ListTile(
                        leading: Icon(
                          Icons.calendar_today_rounded,
                          color: Colors.black54,
                          size: 21,
                        ),
                        title: Text(
                          "Lịch",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                  ),

                  // LINE
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1.2,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 3),
                      child:  ListTile(
                        title: Text(
                          "Đã đăng ký",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 3),
                      child:  ListTile(
                        leading: Icon(
                          Icons.fact_check_outlined,
                          color: Colors.black54,
                          size: 21,
                        ),
                        title: Text(
                          "Việc cần làm",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                  ),

                  // DÁNH SÁCH LỚP HỌC
                  ...lsLopHoc.map((e) {
                    return Container(
                      margin: EdgeInsets.only(left: 2),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(e.Anh),
                          radius: 12,
                          child: Text(
                            e.TenMH[0],
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          e.TenMH,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    );
                  }).toList(),


                  // LINE
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1.2,
                    ),
                  ),

                  // OPTIONS ❤
                  Container(
                      margin: EdgeInsets.only(left: 4),
                      child:  ListTile(
                        leading: Icon(
                          Icons.archive_outlined,
                          color: Colors.black54,
                          size: 21,
                        ),
                        title: Text(
                          "Lớp học đã lưu trữ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 4),
                      child:  ListTile(
                        leading: Icon(
                          Icons.folder_open_outlined,
                          color: Colors.black54,
                          size: 21,
                        ),
                        title: Text(
                          "Thư mục của Lớp học",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 4),
                      child:  ListTile(
                        leading: Icon(
                          Icons.settings_outlined,
                          color: Colors.black54,
                          size: 21,
                        ),
                        title: Text(
                          "Cài đặt",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5),
                      child:  ListTile(
                        leading: Icon(
                          Icons.help_outline_outlined,
                          color: Colors.black54,
                          size: 21,
                        ),
                        title: Text(
                          "Trợ giúp",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked ,
    );
  }
}
class LopHoc{
  late String TenMH;
  late String MaLHP;
  late String TenGV;
  late String Anh;
  LopHoc({
    required this.TenMH,
    required this.MaLHP,
    required this.TenGV,
    required this.Anh,
  });
}
