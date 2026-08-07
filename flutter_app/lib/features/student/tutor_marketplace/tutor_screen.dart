import 'package:flutter/material.dart';


class TutorScreen extends StatelessWidget {


  const TutorScreen({super.key});



  final List<Map<String,String>> tutors = const [


    {
      "name":"Arun Kumar",
      "department":"Computer Science",
      "subject":"Python Programming",
      "experience":"2 Years",
    },


    {
      "name":"Priya Sharma",
      "department":"Information Technology",
      "subject":"Database Management",
      "experience":"1 Year",
    },


    {
      "name":"Rahul Kumar",
      "department":"Electronics",
      "subject":"Mathematics",
      "experience":"3 Years",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Tutor Marketplace",

        ),

      ),



      floatingActionButton:

      FloatingActionButton.extended(


        onPressed:(){


          ScaffoldMessenger

          .of(context)

          .showSnackBar(


            const SnackBar(

              content:

              Text(

                "Tutor registration coming soon",

              ),

            ),


          );


        },


        icon:

        const Icon(

          Icons.add,

        ),


        label:

        const Text(

          "Become Tutor",

        ),


      ),



      body: ListView.builder(


        padding:

        const EdgeInsets.all(16),



        itemCount:

        tutors.length,



        itemBuilder:

        (context,index){



          return Card(


            elevation:4,


            margin:

            const EdgeInsets.only(

              bottom:15,

            ),



            child:

            ListTile(



              leading:

              const CircleAvatar(


                child:

                Icon(

                  Icons.person,

                ),

              ),



              title:

              Text(

                tutors[index]["name"]!,

              ),



              subtitle:

              Text(

                "${tutors[index]["department"]}\nSubject: ${tutors[index]["subject"]}\nExperience: ${tutors[index]["experience"]}",

              ),



              trailing:

              ElevatedButton(


                onPressed:(){



                  ScaffoldMessenger

                  .of(context)

                  .showSnackBar(



                    SnackBar(

                      content:

                      Text(

                        "Request sent to ${tutors[index]["name"]}",

                      ),

                    ),


                  );


                },


                child:

                const Text(

                  "Request",

                ),


              ),



            ),



          );


        },


      ),


    );


  }


}