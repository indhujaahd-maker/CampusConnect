import 'package:flutter/material.dart';


class FoodOrderScreen extends StatelessWidget {


  const FoodOrderScreen({super.key});



  final List<Map<String, dynamic>> menu = const [


    {
      "name": "Veg Meals",
      "price": "₹80",
      "category": "Lunch",
    },


    {
      "name": "Chicken Rice",
      "price": "₹120",
      "category": "Lunch",
    },


    {
      "name": "Sandwich",
      "price": "₹50",
      "category": "Snacks",
    },


    {
      "name": "Tea / Coffee",
      "price": "₹20",
      "category": "Beverages",
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Food Ordering",

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

              "Today's Menu",

              style:

              TextStyle(

                fontSize:24,

                fontWeight:

                FontWeight.bold,

              ),

            ),



            const SizedBox(height:15),



            Expanded(


              child:

              ListView.builder(


                itemCount:

                menu.length,


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

                          Icons.restaurant,

                        ),

                      ),



                      title:

                      Text(

                        menu[index]["name"],

                      ),



                      subtitle:

                      Text(

                        "${menu[index]["category"]} • ${menu[index]["price"]}",

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

                                  "Confirm Order",

                                ),



                                content:

                                Text(

                                  "Order ${menu[index]["name"]}?",

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

                                            "${menu[index]["name"]} ordered successfully",

                                          ),

                                        ),



                                      );


                                    },


                                    child:

                                    const Text(

                                      "Order",

                                    ),

                                  )


                                ],


                              );


                            },


                          );



                        },


                        child:

                        const Text(

                          "Order",

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