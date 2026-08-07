import 'package:flutter/material.dart';


class AttendanceScreen extends StatelessWidget {


  const AttendanceScreen({super.key});


  final List<Map<String, dynamic>> attendance = const [


    {
      "subject": "Artificial Intelligence",
      "percentage": "92%",
    },


    {
      "subject": "Database Management System",
      "percentage": "88%",
    },


    {
      "subject": "Computer Networks",
      "percentage": "95%",
    },


    {
      "subject": "Software Engineering",
      "percentage": "85%",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:
        const Text(
          "Attendance",
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

              "Overall Attendance",

              style:
              TextStyle(

                fontSize:22,

                fontWeight:
                FontWeight.bold,

              ),

            ),



            const SizedBox(height:10),



            Card(


              elevation:4,


              child:
              ListTile(


                leading:
                const Icon(

                  Icons.check_circle,

                  color:
                  Colors.green,

                  size:40,

                ),


                title:
                const Text(

                  "91%",

                  style:
                  TextStyle(

                    fontSize:28,

                    fontWeight:
                    FontWeight.bold,

                  ),

                ),


                subtitle:
                const Text(

                  "Current Semester Attendance",

                ),


              ),


            ),



            const SizedBox(height:20),



            const Text(

              "Subject Wise Attendance",

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
                attendance.length,


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

                        attendance[index]["subject"],

                      ),



                      trailing:
                      Text(

                        attendance[index]["percentage"],

                        style:
                        const TextStyle(

                          fontWeight:
                          FontWeight.bold,

                          color:
                          Colors.green,

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