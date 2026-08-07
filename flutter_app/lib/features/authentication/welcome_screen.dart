import 'package:flutter/material.dart';
import 'role_selection_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Padding(

          padding: const EdgeInsets.all(24),

          child: Column(

            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [

              const Icon(
                Icons.school,
                size: 100,
                color: Colors.blue,
              ),


              const SizedBox(height: 30),


              const Text(
                "Welcome to Digital Campus",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),


              const SizedBox(height: 20),


              const Text(

                "A unified digital ecosystem "
                "connecting students, parents, "
                "teachers and campus services.",

                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,
                ),

              ),


              const SizedBox(height:40),


              SizedBox(

                width: double.infinity,

                child: ElevatedButton(

                  onPressed: () {

                    Navigator.push(

                      context,

                      MaterialPageRoute(

                        builder: (context)=>
                        const RoleSelectionScreen(),

                      ),

                    );

                  },


                  child:
                  const Text(
                    "Get Started",
                  ),

                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}