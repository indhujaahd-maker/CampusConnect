import 'package:flutter/material.dart';
import '../student/student_dashboard.dart';


class LoginScreen extends StatelessWidget {


  final String role;


  const LoginScreen({

    super.key,

    required this.role,

  });



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:
        Text(
          "$role Login",
        ),

      ),



      body: Padding(


        padding:
        const EdgeInsets.all(24),



        child: Column(


          children:[


            Text(

              "$role Authentication",

              style:
              const TextStyle(

                fontSize:24,

                fontWeight:
                FontWeight.bold,

              ),

            ),



            const SizedBox(height:30),



            TextField(

              decoration:
              InputDecoration(

                labelText:
                "$role ID",

                prefixIcon:
                const Icon(
                  Icons.person,
                ),

              ),

            ),



            const SizedBox(height:20),



            TextField(

              obscureText:true,

              decoration:
              const InputDecoration(

                labelText:
                "Password",

                prefixIcon:
                Icon(
                  Icons.lock,
                ),

              ),

            ),



            const SizedBox(height:30),



            SizedBox(

              width:
              double.infinity,


              child:
              ElevatedButton(

                onPressed:(){


                  if(role == "Student"){


                    Navigator.pushReplacement(


                      context,


                      MaterialPageRoute(


                        builder:(context)=>

                        const StudentDashboard(),


                      ),


                    );


                  }


                  else{


                    ScaffoldMessenger
                    .of(context)
                    .showSnackBar(


                      SnackBar(


                        content:

                        Text(

                          "$role dashboard coming soon",

                        ),


                      ),


                    );


                  }


                },


                child:
                const Text(

                  "Login",

                ),


              ),

            )


          ],

        ),

      ),


    );


  }

}