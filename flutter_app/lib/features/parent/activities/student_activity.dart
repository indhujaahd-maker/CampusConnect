import 'package:flutter/material.dart';


class StudentActivity extends StatelessWidget {

const StudentActivity({super.key});


@override
Widget build(BuildContext context){

return Scaffold(

appBar: AppBar(

title: const Text("Student Activities"),

),


body: ListView(

padding: const EdgeInsets.all(16),


children:[


const ListTile(

leading: Icon(Icons.emoji_events),

title: Text(
"Participated in Coding Competition",
),

subtitle: Text(
"Inter College Hackathon 2026",
),

),



const ListTile(

leading: Icon(Icons.school),

title: Text(
"Completed Workshop",
),

subtitle: Text(
"Artificial Intelligence Workshop",
),

),


],

),

);

}

}