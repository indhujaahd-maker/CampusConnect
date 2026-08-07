import 'package:flutter/material.dart';

import '../../widgets/common/dashboard_card.dart';

import 'profile/teacher_profile.dart';
import 'attendance/attendance_management.dart';
import 'marks/marks_entry.dart';
import 'assignments/assignment_upload.dart';
import 'assignments/assignment_review.dart';
import 'complaints/student_complaint.dart';
import 'meetings/online_class.dart';
import 'services/teacher_service_request.dart';


class TeacherDashboard extends StatelessWidget {

  const TeacherDashboard({super.key});


  final List<Map<String, dynamic>> services = const [

    {
      "title":"My Profile",
      "icon":Icons.person,
    },

    {
      "title":"Attendance Management",
      "icon":Icons.fact_check,
    },

    {
      "title":"Marks Entry",
      "icon":Icons.grade,
    },

    {
      "title":"Upload Assignment",
      "icon":Icons.upload_file,
    },

    {
      "title":"Review Assignment",
      "icon":Icons.assignment_turned_in,
    },

    {
      "title":"Online Class",
      "icon":Icons.video_call,
    },

    {
      "title":"Student Complaint",
      "icon":Icons.report_problem,
    },

    {
      "title":"Service Request",
      "icon":Icons.miscellaneous_services,
    },

    {
      "title":"Notifications",
      "icon":Icons.notifications,
    },

  ];



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          "Teacher Dashboard",
        ),

      ),



      body: Padding(

        padding: const EdgeInsets.all(16),



        child: Column(

          crossAxisAlignment:
          CrossAxisAlignment.start,


          children: [


            const Text(

              "Welcome Teacher 👋",

              style: TextStyle(

                fontSize:26,

                fontWeight:FontWeight.bold,

              ),

            ),



            const SizedBox(height:10),



            const Text(

              "Manage classes, students and academic activities",

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


                    title:services[index]["title"],


                    icon:services[index]["icon"],



                    onTap:(){


                      String selected = 
                      services[index]["title"];



                      if(selected=="My Profile"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const TeacherProfile(),

                          ),

                        );

                      }



                      else if(selected=="Attendance Management"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const AttendanceManagement(),

                          ),

                        );

                      }



                      else if(selected=="Marks Entry"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const MarksEntry(),

                          ),

                        );

                      }



                      else if(selected=="Upload Assignment"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const AssignmentUpload(),

                          ),

                        );

                      }



                      else if(selected=="Review Assignment"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const AssignmentReview(),

                          ),

                        );

                      }



                      else if(selected=="Online Class"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const OnlineClass(),

                          ),

                        );

                      }



                      else if(selected=="Student Complaint"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const StudentComplaint(),

                          ),

                        );

                      }



                      else if(selected=="Service Request"){


                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder:(context)=>

                            const TeacherServiceRequest(),

                          ),

                        );

                      }



                      else{


                        ScaffoldMessenger.of(context)

                        .showSnackBar(

                          SnackBar(

                            content:Text(

                              "$selected selected",

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