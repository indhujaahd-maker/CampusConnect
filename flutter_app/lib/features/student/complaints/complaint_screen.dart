import 'package:flutter/material.dart';


class ComplaintScreen extends StatefulWidget {

  const ComplaintScreen({super.key});


  @override
  State<ComplaintScreen> createState() =>
      _ComplaintScreenState();

}



class _ComplaintScreenState extends State<ComplaintScreen> {


  String selectedCategory = "Electrical";


  final TextEditingController descriptionController =
      TextEditingController();



  final List<String> categories = [


    "Electrical",

    "Cleaning",

    "Plumbing",

    "Furniture",

    "Projector",

    "Other",

  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Complaint Portal",

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

              "Raise New Complaint",

              style:

              TextStyle(

                fontSize:24,

                fontWeight:

                FontWeight.bold,

              ),

            ),



            const SizedBox(height:20),




            DropdownButtonFormField<String>(


              initialValue: selectedCategory,


              decoration:

              const InputDecoration(


                labelText:

                "Complaint Category",


                border:

                OutlineInputBorder(),

              ),



              items:

              categories.map((category){


                return DropdownMenuItem<String>(


                  value: category,


                  child:

                  Text(category),


                );


              }).toList(),



              onChanged:(value){


                setState(() {


                  selectedCategory = value!;


                });


              },


            ),




            const SizedBox(height:20),




            TextField(


              controller:

              descriptionController,


              maxLines:5,


              decoration:

              const InputDecoration(


                labelText:

                "Describe Problem",


                hintText:

                "Example: Projector not working in Room 204",


                border:

                OutlineInputBorder(),

              ),


            ),




            const SizedBox(height:20),




            ElevatedButton.icon(


              onPressed:(){


                ScaffoldMessenger

                .of(context)

                .showSnackBar(



                  const SnackBar(

                    content:

                    Text(

                      "Image upload feature coming soon",

                    ),

                  ),


                );


              },


              icon:

              const Icon(

                Icons.image,

              ),



              label:

              const Text(

                "Upload Image",

              ),


            ),




            const SizedBox(height:20),




            SizedBox(


              width:

              double.infinity,



              child:

              ElevatedButton(


                onPressed:(){



                  if(descriptionController.text.isEmpty){


                    ScaffoldMessenger

                    .of(context)

                    .showSnackBar(


                      const SnackBar(

                        content:

                        Text(

                          "Please enter complaint details",

                        ),

                      ),


                    );


                    return;


                  }





                  ScaffoldMessenger

                  .of(context)

                  .showSnackBar(



                    SnackBar(

                      content:

                      Text(

                        "$selectedCategory complaint submitted",

                      ),

                    ),


                  );



                  descriptionController.clear();



                },


                child:

                const Text(

                  "Submit Complaint",

                ),


              ),


            )



          ],


        ),


      ),


    );


  }


}