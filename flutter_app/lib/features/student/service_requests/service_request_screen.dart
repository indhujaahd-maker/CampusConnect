import 'package:flutter/material.dart';


class ServiceRequestScreen extends StatefulWidget {


  const ServiceRequestScreen({super.key});


  @override
  State<ServiceRequestScreen> createState() =>
      _ServiceRequestScreenState();

}



class _ServiceRequestScreenState
    extends State<ServiceRequestScreen> {


  String selectedRequest = "Bonafide Certificate";



  final List<String> requestTypes = [


    "Bonafide Certificate",

    "Scholarship Request",

    "Fee Clearance",

    "Exam Permission",

    "Document Verification",


  ];



  final List<Map<String,String>> requests = [


    {
      "type":"Bonafide Certificate",
      "status":"Approved by Teacher",
    },


    {
      "type":"Scholarship Request",
      "status":"Waiting for HOD Approval",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Service Requests",

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

              "Create New Request",

              style:

              TextStyle(

                fontSize:24,

                fontWeight:

                FontWeight.bold,

              ),

            ),



            const SizedBox(height:20),



            DropdownButtonFormField<String>(


              initialValue:selectedRequest,


              decoration:

              const InputDecoration(


                labelText:

                "Request Type",


                border:

                OutlineInputBorder(),

              ),



              items:

              requestTypes.map((type){


                return DropdownMenuItem(


                  value:type,


                  child:

                  Text(type),


                );


              }).toList(),



              onChanged:(value){


                setState(() {


                  selectedRequest=value!;


                });


              },


            ),



            const SizedBox(height:20),



            SizedBox(


              width:

              double.infinity,


              child:

              ElevatedButton(


                onPressed:(){



                  setState(() {


                    requests.add(


                      {

                        "type":

                        selectedRequest,


                        "status":

                        "Waiting for Teacher Approval",


                      }


                    );


                  });



                  ScaffoldMessenger

                  .of(context)

                  .showSnackBar(



                    SnackBar(

                      content:

                      Text(

                        "$selectedRequest submitted",

                      ),

                    ),


                  );


                },


                child:

                const Text(

                  "Submit Request",

                ),


              ),


            ),



            const SizedBox(height:25),



            const Text(

              "My Requests",

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

                requests.length,


                itemBuilder:

                (context,index){



                  return Card(


                    child:

                    ListTile(



                      leading:

                      const Icon(

                        Icons.assignment,

                      ),



                      title:

                      Text(

                        requests[index]["type"]!,

                      ),



                      subtitle:

                      Text(

                        requests[index]["status"]!,

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