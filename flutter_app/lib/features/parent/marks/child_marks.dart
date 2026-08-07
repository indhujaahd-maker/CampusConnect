import 'package:flutter/material.dart';


class ChildMarks extends StatelessWidget {

const ChildMarks({super.key});


@override
Widget build(BuildContext context){

return Scaffold(

appBar: AppBar(

title: const Text("Marks & Results"),

),


body: const Center(

child: Text(

"Semester Results\n\nCGPA : 9.2",

style: TextStyle(
fontSize:22,
),

),

),

);

}

}