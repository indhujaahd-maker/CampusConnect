import 'package:flutter/material.dart';


class ChildAttendance extends StatelessWidget {

const ChildAttendance({super.key});


@override
Widget build(BuildContext context){

return Scaffold(

appBar: AppBar(
title: const Text("Attendance"),
),


body: const Center(

child: Text(

"Attendance Details\n\nPresent: 85%\nAbsent: 15%",

textAlign: TextAlign.center,

style: TextStyle(
fontSize:20,
),

),

),

);

}

}