import 'package:flutter/material.dart';


class AssignmentsScreen extends StatelessWidget {


  const AssignmentsScreen({super.key});


  final List<Map<String, dynamic>> assignments = const [


    {
      "subject": "Artificial Intelligence",
      "title": "Machine Learning Algorithms",
      "deadline": "20-08-2026",
      "status": "Pending",
    },


    {
      "subject": "Database Management System",
      "title": "SQL Optimization Techniques",
      "deadline": "25-08-2026",
      "status": "Submitted",
    },


    {
      "subject": "Computer Networks",
      "title": "Network Security Report",
      "deadline": "30-08-2026",
      "status": "Pending",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:
        const Text(

          "Assignments",

        ),

      ),



      body: Padding(


        padding:
        const EdgeInsets.all(16),



        child: ListView.builder(


          itemCount:
          assignments.length,


          itemBuilder:
          (context,index){



            return Card(


              elevation:4,


              margin:
              const EdgeInsets.only(

                bottom:15,

              ),



              child:
              Padding(


                padding:
                const EdgeInsets.all(16),



                child: Column(


                  crossAxisAlignment:
                  CrossAxisAlignment.start,


                  children: [



                    Text(


                      assignments[index]["subject"],


                      style:
                      const TextStyle(

                        fontSize:20,

                        fontWeight:
                        FontWeight.bold,

                      ),

                    ),



                    const SizedBox(height:10),



                    Text(

                      "Topic: ${assignments[index]["title"]}",

                    ),



                    Text(

                      "Deadline: ${assignments[index]["deadline"]}",

                    ),



                    const SizedBox(height:15),



                    Row(


                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,


                      children: [



                        Text(

                          assignments[index]["status"],


                          style:
                          TextStyle(

                            color:

                            assignments[index]["status"]

                            ==
                            "Submitted"

                            ?

                            Colors.green

                            :

                            Colors.red,

                            fontWeight:
                            FontWeight.bold,

                          ),

                        ),



                        ElevatedButton(


                          onPressed:(){


                            ScaffoldMessenger
                            .of(context)
                            .showSnackBar(


                              const SnackBar(

                                content:

                                Text(

                                  "Upload feature will be added",

                                ),

                              ),


                            );


                          },


                          child:
                          const Text(

                            "Submit",

                          ),


                        )



                      ],


                    )



                  ],


                ),


              ),


            );


          },


        ),


      ),


    );


  }


}