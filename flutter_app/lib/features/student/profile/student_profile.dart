import 'package:flutter/material.dart';


class StudentProfile extends StatelessWidget {

  const StudentProfile({super.key});


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title:
        const Text(
          "Student Profile",
        ),

      ),


      body: Padding(

        padding:
        const EdgeInsets.all(20),


        child: Column(


          children: [


            CircleAvatar(

              radius:50,

              backgroundColor:
              Colors.blue,

              child:
              const Icon(

                Icons.person,

                size:60,

                color:Colors.white,

              ),

            ),


            const SizedBox(height:20),



            const Text(

              "Indhujaa D",

              style:
              TextStyle(

                fontSize:24,

                fontWeight:
                FontWeight.bold,

              ),

            ),


            const SizedBox(height:20),



            profileCard(

              "Roll Number",

              "CSE2026001",

            ),


            profileCard(

              "Department",

              "Computer Science Engineering",

            ),


            profileCard(

              "Year",

              "Final Year",

            ),


            profileCard(

              "Email",

              "student@gmail.com",

            ),


            profileCard(

              "Phone",

              "9876543210",

            ),


            profileCard(

              "Hostel",

              "Block A - Room 101",

            ),


          ],


        ),

      ),

    );

  }



  Widget profileCard(String title,String value){


    return Card(

      elevation:3,


      margin:
      const EdgeInsets.symmetric(

        vertical:8,

      ),


      child:
      ListTile(


        leading:
        const Icon(

          Icons.info,

        ),


        title:
        Text(

          title,

        ),


        subtitle:
        Text(

          value,

        ),


      ),


    );


  }


}