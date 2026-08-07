import 'package:flutter/material.dart';


class CampusMapScreen extends StatefulWidget {


  const CampusMapScreen({super.key});


  @override
  State<CampusMapScreen> createState() =>
      _CampusMapScreenState();

}



class _CampusMapScreenState extends State<CampusMapScreen> {


  final TextEditingController searchController =
  TextEditingController();



  final List<Map<String,String>> locations = [


    {
      "name":"Computer Science Department",
      "block":"Block A - Floor 2",
      "type":"Department",
    },


    {
      "name":"Central Library",
      "block":"Block B - Ground Floor",
      "type":"Library",
    },


    {
      "name":"CSE Laboratory",
      "block":"Block A - Room 203",
      "type":"Lab",
    },


    {
      "name":"Main Canteen",
      "block":"Food Court Area",
      "type":"Food",
    },


    {
      "name":"Boys Hostel",
      "block":"Hostel Block 1",
      "type":"Hostel",
    },


    {
      "name":"Medical Room",
      "block":"Admin Block",
      "type":"Health",
    },


    {
      "name":"Water Station",
      "block":"Near Auditorium",
      "type":"Facility",
    },


  ];



  List<Map<String,String>> filteredLocations = [];



  @override
  void initState() {

    super.initState();

    filteredLocations = locations;

  }



  void searchLocation(String value){


    setState(() {


      filteredLocations = locations
          .where((location)=>

          location["name"]!
              .toLowerCase()
              .contains(
              value.toLowerCase()
          )

      )
          .toList();


    });


  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Campus Map",

        ),

      ),



      body: Padding(


        padding:

        const EdgeInsets.all(16),



        child: Column(


          children: [



            TextField(


              controller:

              searchController,


              onChanged:

              searchLocation,


              decoration:

              const InputDecoration(


                prefixIcon:

                Icon(

                  Icons.search,

                ),


                hintText:

                "Search campus location",


                border:

                OutlineInputBorder(),

              ),


            ),



            const SizedBox(height:20),



            Expanded(


              child:

              ListView.builder(


                itemCount:

                filteredLocations.length,


                itemBuilder:

                (context,index){



                  return Card(


                    elevation:4,


                    child:

                    ListTile(



                      leading:

                      const CircleAvatar(


                        child:

                        Icon(

                          Icons.location_on,

                        ),


                      ),



                      title:

                      Text(

                        filteredLocations[index]["name"]!,

                      ),



                      subtitle:

                      Text(

                        "${filteredLocations[index]["block"]}\nCategory: ${filteredLocations[index]["type"]}",

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

                                "Navigate to ${filteredLocations[index]["name"]}",

                              ),

                            ),


                          );


                        },


                        child:

                        const Text(

                          "Go",

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