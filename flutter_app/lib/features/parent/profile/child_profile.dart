import 'package:flutter/material.dart';

class ChildProfile extends StatelessWidget {

  const ChildProfile({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Child Profile"),
      ),


      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const CircleAvatar(

              radius:45,

              child: Icon(
                Icons.person,
                size:50,
              ),

            ),


            const SizedBox(height:20),


            profileItem(
              "Name",
              "Student Name",
            ),


            profileItem(
              "Roll Number",
              "CSE2026001",
            ),


            profileItem(
              "Department",
              "Computer Science Engineering",
            ),


            profileItem(
              "Year",
              "Final Year",
            ),

          ],

        ),

      ),

    );

  }



  Widget profileItem(String title,String value){

    return Card(

      child: ListTile(

        title: Text(title),

        subtitle: Text(value),

      ),

    );

  }

}