import 'package:flutter/material.dart';


class StudyMaterialScreen extends StatelessWidget {


  const StudyMaterialScreen({super.key});


  final List<Map<String, dynamic>> materials = const [


    {
      "subject": "Artificial Intelligence",
      "title": "Machine Learning Introduction",
      "type": "PDF",
      "uploaded": "Faculty",
    },


    {
      "subject": "Database Management System",
      "title": "SQL Commands Notes",
      "type": "PDF",
      "uploaded": "Faculty",
    },


    {
      "subject": "Computer Networks",
      "title": "Network Security PPT",
      "type": "PPT",
      "uploaded": "Faculty",
    },


    {
      "subject": "Software Engineering",
      "title": "Software Development Life Cycle",
      "type": "Document",
      "uploaded": "Faculty",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Study Material",

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

              "Available Learning Materials",

              style:

              TextStyle(

                fontSize:22,

                fontWeight:

                FontWeight.bold,

              ),

            ),



            const SizedBox(height:15),



            Expanded(


              child:

              ListView.builder(


                itemCount:

                materials.length,


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

                      CircleAvatar(


                        child:

                        Icon(

                          materials[index]["type"]

                          ==

                          "PDF"

                          ?

                          Icons.picture_as_pdf

                          :

                          Icons.description,

                        ),

                      ),



                      title:

                      Text(

                        materials[index]["title"],

                      ),



                      subtitle:

                      Text(

                        "${materials[index]["subject"]}\nUploaded by ${materials[index]["uploaded"]}",

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

                                "Opening ${materials[index]["title"]}",

                              ),

                            ),



                          );



                        },


                        child:

                        const Text(

                          "View",

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