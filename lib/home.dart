
import 'package:flutter/material.dart';
import 'package:workshop/INC.dart';
import 'package:workshop/bmi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: const Text('Home'),
      backgroundColor: Colors.cyan[900]
      ,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text('LINKERS', style: TextStyle(fontSize: 50),),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('Click Here  '),
                 MaterialButton(
                   onPressed: (){
                     print('button pressed');
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Bmi()));
                     },
                 child: Text('About'),
                   color:Colors.blueGrey,
                 )
               ],
             ),
             MaterialButton(
               onPressed: (){
                 print('Move to Increment Page');
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Increment()));
               },
               child: Text('Increment'),
               color:Colors.blueGrey,
             )
           ],
        ),
      )
    );
  }
}
