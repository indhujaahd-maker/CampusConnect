import 'package:flutter/material.dart';


class StationeryScreen extends StatelessWidget {


  const StationeryScreen({super.key});



  final List<Map<String, dynamic>> items = const [


    {
      "name": "A4 Sheets",
      "price": "₹2 per sheet",
    },


    {
      "name": "Notebook",
      "price": "₹50",
    },


    {
      "name": "Pen",
      "price": "₹10",
    },


    {
      "name": "File Folder",
      "price": "₹20",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Stationery Service",

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

              "Stationery Request",

              style:

              TextStyle(

                fontSize:24,

                fontWeight:

                FontWeight.bold,

              ),

            ),



            const SizedBox(height:10),



            ElevatedButton.icon(


              onPressed:(){



                ScaffoldMessenger

                .of(context)

                .showSnackBar(


                  const SnackBar(

                    content:

                    Text(

                      "Document upload feature coming soon",

                    ),

                  ),


                );


              },


              icon:

              const Icon(

                Icons.upload_file,

              ),


              label:

              const Text(

                "Upload Print Document",

              ),


            ),



            const SizedBox(height:20),



            const Text(

              "Available Items",

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

                items.length,


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

                          Icons.shopping_cart,

                        ),

                      ),



                      title:

                      Text(

                        items[index]["name"],

                      ),



                      subtitle:

                      Text(

                        items[index]["price"],

                      ),



                      trailing:

                      ElevatedButton(


                        onPressed:(){



                          showDialog(


                            context:

                            context,


                            builder:

                            (context){



                              return AlertDialog(


                                title:

                                const Text(

                                  "Request Item",

                                ),



                                content:

                                Text(

                                  "Request ${items[index]["name"]}?",

                                ),



                                actions: [



                                  TextButton(


                                    onPressed:(){


                                      Navigator.pop(context);


                                    },


                                    child:

                                    const Text(

                                      "Cancel",

                                    ),

                                  ),



                                  ElevatedButton(


                                    onPressed:(){


                                      Navigator.pop(context);



                                      ScaffoldMessenger

                                      .of(context)

                                      .showSnackBar(


                                        SnackBar(

                                          content:

                                          Text(

                                            "${items[index]["name"]} requested",

                                          ),

                                        ),


                                      );


                                    },


                                    child:

                                    const Text(

                                      "Request",

                                    ),


                                  )


                                ],


                              );


                            },


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


            )


          ],


        ),


      ),


    );


  }


}