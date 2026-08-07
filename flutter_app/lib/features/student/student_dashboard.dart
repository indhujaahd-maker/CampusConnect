import 'package:flutter/material.dart';

import '../../widgets/common/dashboard_card.dart';

import 'profile/student_profile.dart';
import 'attendance/attendance_screen.dart';
import 'results/results_screen.dart';
import 'assignments/assignments_screen.dart';

import 'study_material/study_material_screen.dart';
import 'food/food_order_screen.dart';
import 'stationery/stationery_screen.dart';
import 'complaints/complaint_screen.dart';
import 'campus_map/campus_map_screen.dart';
import 'notices/notices_screen.dart';
import 'tutor_marketplace/tutor_screen.dart';
import 'service_requests/service_request_screen.dart';



class StudentDashboard extends StatelessWidget {


  const StudentDashboard({super.key});


  final List<Map<String, dynamic>> services = const [


    {
      "title": "My Profile",
      "icon": Icons.person,
    },


    {
      "title": "Attendance",
      "icon": Icons.fact_check,
    },


    {
      "title": "Marks & Results",
      "icon": Icons.grade,
    },


    {
      "title": "Assignments",
      "icon": Icons.assignment,
    },


    {
      "title": "Study Material",
      "icon": Icons.menu_book,
    },


    {
      "title": "Food Ordering",
      "icon": Icons.restaurant,
    },


    {
      "title": "Stationery",
      "icon": Icons.shopping_cart,
    },


    {
      "title": "Complaints",
      "icon": Icons.report_problem,
    },


    {
      "title": "Campus Map",
      "icon": Icons.map,
    },


    {
      "title": "Notices",
      "icon": Icons.notifications,
    },


    {
      "title": "Tutor Marketplace",
      "icon": Icons.people,
    },


    {
      "title": "Service Requests",
      "icon": Icons.miscellaneous_services,
    },


  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title:

        const Text(

          "Student Dashboard",

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

              "Welcome Student 👋",

              style:

              TextStyle(

                fontSize:26,

                fontWeight:

                FontWeight.bold,

              ),

            ),



            const SizedBox(height:20),



            Expanded(


              child:

              GridView.builder(


                itemCount:

                services.length,



                gridDelegate:

                const SliverGridDelegateWithFixedCrossAxisCount(


                  crossAxisCount:2,

                  crossAxisSpacing:15,

                  mainAxisSpacing:15,


                ),



                itemBuilder:

                (context,index){



                  return DashboardCard(


                    title:

                    services[index]["title"],



                    icon:

                    services[index]["icon"],



                    onTap:(){



                      String selectedService =

                      services[index]["title"];




                      if(selectedService == "My Profile"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const StudentProfile(),

                          ),

                        );


                      }



                      else if(selectedService == "Attendance"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const AttendanceScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Marks & Results"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const ResultsScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Assignments"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const AssignmentsScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Study Material"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const StudyMaterialScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Food Ordering"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const FoodOrderScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Stationery"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const StationeryScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Complaints"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const ComplaintScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Campus Map"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const CampusMapScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Notices"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const NoticesScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Tutor Marketplace"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const TutorScreen(),

                          ),

                        );


                      }



                      else if(selectedService == "Service Requests"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const ServiceRequestScreen(),

                          ),

                        );


                      }



                    },


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