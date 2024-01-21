import 'package:flutter/material.dart';
import 'package:group4/my_%20home_rindo.dart';
import 'package:group4/my_form.dart';
import 'package:group4/my_photo.dart';
import 'package:group4/my_product.dart';
import 'my_home_page.dart';
import 'my_classroom.dart';
import 'my_form.dart';
import 'my_math.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "dự án nhóm 4",
      //title: "dự án của rin đô",
      //title: " bài tập classroom",
      //title: "My_Form",
      //title: "My_Math",
      //title: "My_Rindo",
      //home: My_Product(),
      //home: My_Math(),
      //home: My_Form(),
      home: My_Classroom(),
      //home: MyHomePage(),
      //home: MyHomeRinDo(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: 'Dancing'
      // ),
    );
  }
}

