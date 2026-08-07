import 'package:flutter/material.dart';


class ResultsScreen extends StatelessWidget {


  const ResultsScreen({super.key});


  final List<Map<String, dynamic>> marks = const [


    {
      "subject": "Artificial Intelligence",
      "mark": "28/30",
    },


    {
      "subject": "Database Management System",
      "mark": "27/30",
    },


    {
      "subject": "Computer Networks",
      "mark": "29/30",
    },


    {
      "subject": "Software Engineering",
      "mark": "26/30",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:
        const Text(

          "Marks & Results",

        ),

      ),



      body: Padding(


        padding:
        const EdgeInsets.all(16),



        child: Column(


          crossAxisAlignment:
          CrossAxisAlignment.start,


          children: [



            const Text(

              "Semester Result",

              style:
              TextStyle(

                fontSize:22,

                fontWeight:
                FontWeight.bold,

              ),

            ),



            const SizedBox(height:15),



            Card(


              elevation:4,


              child:
              ListTile(


                leading:
                const Icon(

                  Icons.school,

                  size:40,

                  color:
                  Colors.blue,

                ),


                title:
                const Text(

                  "CGPA : 9.2",

                  style:
                  TextStyle(

                    fontSize:24,

                    fontWeight:
                    FontWeight.bold,

                  ),

                ),


                subtitle:
                const Text(

                  "Semester 5 Result",

                ),


              ),


            ),



            const SizedBox(height:20),



            const Text(

              "Internal Marks",

              style:
              TextStyle(

                fontSize:22,

                fontWeight:
                FontWeight.bold,

              ),

            ),



            const SizedBox(height:10),



            Expanded(


              child:
              ListView.builder(


                itemCount:
                marks.length,


                itemBuilder:
                (context,index){



                  return Card(


                    child:
                    ListTile(


                      leading:
                      const Icon(

                        Icons.book,

                      ),


                      title:

                      Text(

                        marks[index]["subject"],

                      ),


                      trailing:

                      Text(

                        marks[index]["mark"],


                        style:
                        const TextStyle(

                          fontWeight:
                          FontWeight.bold,

                        ),


                      ),


                    ),


                  );


                },


              ),


            )


          ],


        ),


      ),


    );


  }


}