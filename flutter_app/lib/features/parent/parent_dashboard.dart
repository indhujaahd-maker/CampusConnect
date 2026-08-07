import 'package:flutter/material.dart';

import '../../widgets/common/dashboard_card.dart';

import 'profile/child_profile.dart';
import 'attendance/child_attendance.dart';
import 'marks/child_marks.dart';
import 'fees/fee_details.dart';
import 'activities/student_activity.dart';


class ParentDashboard extends StatelessWidget {

  const ParentDashboard({super.key});


  final List<Map<String, dynamic>> services = const [

    {
      "title": "Child Profile",
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
      "title": "Fees Details",
      "icon": Icons.currency_rupee,
    },

    {
      "title": "Student Activities",
      "icon": Icons.school,
    },

    {
      "title": "Notifications",
      "icon": Icons.notifications,
    },

    {
      "title": "Teacher Complaints",
      "icon": Icons.report_problem,
    },

  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title: const Text(
          "Parent Dashboard",
        ),

      ),



      body: Padding(


        padding: const EdgeInsets.all(16),



        child: Column(


          crossAxisAlignment: CrossAxisAlignment.start,


          children: [



            const Text(

              "Welcome Parent 👋",

              style: TextStyle(

                fontSize: 26,

                fontWeight: FontWeight.bold,

              ),

            ),



            const SizedBox(height:20),




            const Text(

              "Monitor your child's academic progress",

              style: TextStyle(

                fontSize:16,

              ),

            ),




            const SizedBox(height:20),




            Expanded(


              child: GridView.builder(


                itemCount: services.length,



                gridDelegate:

                const SliverGridDelegateWithFixedCrossAxisCount(


                  crossAxisCount:2,


                  crossAxisSpacing:15,


                  mainAxisSpacing:15,


                ),




                itemBuilder:(context,index){



                  return DashboardCard(


                    title: services[index]["title"],



                    icon: services[index]["icon"],




                    onTap:(){



                      String selectedService =

                      services[index]["title"];




                      if(selectedService == "Child Profile"){



                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const ChildProfile(),

                          ),

                        );


                      }



                      else if(selectedService == "Attendance"){



                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const ChildAttendance(),

                          ),

                        );


                      }




                      else if(selectedService == "Marks & Results"){



                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const ChildMarks(),

                          ),

                        );


                      }





                      else if(selectedService == "Fees Details"){



                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const FeeDetails(),

                          ),

                        );


                      }




                      else if(selectedService == "Student Activities"){



                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const StudentActivity(),

                          ),

                        );


                      }





                      else{


                        ScaffoldMessenger.of(context)

                        .showSnackBar(


                          SnackBar(

                            content: Text(

                              "$selectedService selected",

                            ),

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