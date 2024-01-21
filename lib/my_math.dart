import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class My_Math extends StatefulWidget {
  const My_Math({super.key});

  @override
  State<My_Math> createState() => _My_MathState();
}

class _My_MathState extends State<My_Math> {
  //String ketqua= "";
   double ketqua=0;
    int kq=0;
  TextEditingController sothunhatController = new TextEditingController();
  TextEditingController sothuhaiController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toán học cơ bản",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        leading: Icon(Icons.margin_outlined),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,// màu của icon trong appbar
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: TextFormField(
              controller: sothunhatController,
              decoration: InputDecoration(
                hintText: "nhập số thứ nhất:",
                suffixIcon: Icon(
                  Icons.numbers
                ),
                prefixIcon: Icon(Icons.numbers),
                focusColor: Colors.red,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0
                  )

                )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: TextFormField(
              controller: sothuhaiController,
              decoration: InputDecoration(
                hintText: "nhập số thứ 2:",
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)

                )
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    var soThunhat= double.parse(sothunhatController.text);
                    var soThuhai = double.parse(sothuhaiController.text);
                    //SharedPreferences pre
                    //ketqua= soThunhat + soThuhai;
                    ketqua= caculater(sothunhatController.text, sothuhaiController.text, "+");
                    //ketqua = sothunhatController.text + sothuhaiController.text;
                    showKetQua(context);
                  });
                },
                child: Text(
                  "Cộng"
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    var soThunhat= double.parse(sothunhatController.text);
                    var soThuhai = double.parse(sothuhaiController.text);
                    ketqua= soThunhat - soThuhai;
                    showKetQua(context);
                  });
                },
                child: Text(
                    "trừ"
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    var soThunhat= double.parse(sothunhatController.text);
                    var soThuhai = double.parse(sothuhaiController.text);
                    ketqua= soThunhat * soThuhai;
                  });
                },
                child: Text(
                    "nhân"
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    var soThunhat= double.parse(sothunhatController.text);
                    var soThuhai = double.parse(sothuhaiController.text);
                    //ketqua= soThunhat / soThuhai;
                    ketqua= caculater(sothunhatController.text, sothuhaiController.text, "/");
                    showKetQua(context);
                  });
                },
                child: Text(
                    "chia"
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              "Kết quả là: ${ketqua}",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white
              ),
            ),
          )

        ],
      ),
    );
  }
  caculater(String sothunhat, String sothuhai, String pheptoan){
    var _sothunhat = double.parse(sothunhat);
    var _sothuhai = double.parse(sothuhai);

    double rs= 0;
    if(pheptoan == "+")
      rs= _sothunhat + _sothuhai;
    if(pheptoan == "-")
      rs= _sothunhat - _sothuhai;
    if(pheptoan == "*")
      rs= _sothunhat * _sothuhai;
    if(pheptoan == "/")
      rs= _sothunhat / _sothuhai;
    return rs;
  }
  showKetQua(BuildContext context){
    var snackBar = SnackBar(content: Text("kết quả là: ${ketqua}"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
      showAboutDialog(
        context: context,
        children: [
          Text(("kết quả là: ${ketqua}"))
        ]
      );
    showModalBottomSheet(
      context: context,
      builder: (context){
        return Text("kết quả là: ${ketqua}");
      }
    );
  }
}
