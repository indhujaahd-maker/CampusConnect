import 'package:flutter/material.dart';
import 'login_screen.dart';


class RoleSelectionScreen extends StatelessWidget {

  const RoleSelectionScreen({super.key});


  final List<String> roles = const [

    "Student",
    "Parent",
    "Teacher",
    "HOD",
    "Management",
    "Worker",
    "Vendor",

  ];


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title:
        const Text(
          "Select Your Role",
        ),

      ),


      body: ListView.builder(

        padding:
        const EdgeInsets.all(20),


        itemCount:
        roles.length,


        itemBuilder:(context,index){


          return Card(


            elevation:3,


            margin:
            const EdgeInsets.only(
              bottom:15,
            ),


            child: ListTile(


              leading:
              const CircleAvatar(

                child:
                Icon(
                  Icons.person,
                ),

              ),


              title:
              Text(
                roles[index],
                style:
                const TextStyle(
                  fontSize:18,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),


              trailing:
              const Icon(
                Icons.arrow_forward_ios,
              ),


              onTap:(){

                Navigator.push(

                  context,

                  MaterialPageRoute(

                    builder:(context)=>

                    LoginScreen(

                      role:
                      roles[index],

                    ),

                  ),

                );

              },


            ),

          );


        },

      ),

    );

  }
}