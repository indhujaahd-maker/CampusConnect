import 'package:flutter/material.dart';


class NoticesScreen extends StatelessWidget {


  const NoticesScreen({super.key});



  final List<Map<String,String>> notices = const [


    {
      "title":"Internal Examination Schedule",
      "category":"Academic",
      "date":"07 August 2026",
      "description":
      "Internal examination starts from next Monday. Students must carry ID cards."
    },


    {
      "title":"Campus Placement Drive",
      "category":"Placement",
      "date":"05 August 2026",
      "description":
      "A software company is conducting placement drive for final year students."
    },


    {
      "title":"Hackathon Registration",
      "category":"Event",
      "date":"02 August 2026",
      "description":
      "Students interested in innovation can register for the campus hackathon."
    },


    {
      "title":"Holiday Announcement",
      "category":"General",
      "date":"01 August 2026",
      "description":
      "College will remain closed on the announced holiday."
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Notice Board",

        ),

      ),



      body: ListView.builder(


        padding:

        const EdgeInsets.all(16),



        itemCount:

        notices.length,



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

                  Icons.notifications,

                ),

              ),



              title:

              Text(

                notices[index]["title"]!,

                style:

                const TextStyle(

                  fontWeight:

                  FontWeight.bold,

                ),

              ),



              subtitle:

              Text(

                "${notices[index]["category"]}\n${notices[index]["date"]}",

              ),



              trailing:

              const Icon(

                Icons.arrow_forward_ios,

              ),



              onTap:(){


                showDialog(


                  context:

                  context,


                  builder:

                  (context){


                    return AlertDialog(



                      title:

                      Text(

                        notices[index]["title"]!,

                      ),



                      content:

                      Text(

                        notices[index]["description"]!,

                      ),



                      actions:[



                        TextButton(


                          onPressed:(){


                            Navigator.pop(context);


                          },


                          child:

                          const Text(

                            "Close",

                          ),


                        )


                      ],


                    );


                  },


                );


              },


            ),



          );


        },


      ),


    );


  }


}