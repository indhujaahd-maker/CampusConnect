import 'package:flutter/material.dart';


class FeeDetails extends StatelessWidget {

const FeeDetails({super.key});


@override
Widget build(BuildContext context){

return Scaffold(

appBar: AppBar(

title: const Text("Fees Details"),

),


body: const Center(

child: Text(

"Total Fees : ₹1,00,000\n\nPaid : ₹75,000\n\nBalance : ₹25,000",

textAlign: TextAlign.center,

style: TextStyle(
fontSize:20,
),

),

),

);

}

}