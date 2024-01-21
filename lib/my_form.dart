import 'package:flutter/material.dart';
class My_Form extends StatefulWidget {
  const My_Form({super.key});
  @override
  State<My_Form> createState() => _My_FormState();
}

class _My_FormState extends State<My_Form> {
  int couter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Couter"
        ),
      ),
      body: Center(
        child: Text(
          "Giá Trị hiện tại: ${couter}",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            couter++;
            print("Couter: ${couter}");
          });//cập nhập giá trị lên màn hình
        },
        child: Icon(
          Icons.add
        ),
      ),
    );
  }
}
