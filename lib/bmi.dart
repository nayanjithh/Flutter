import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  TextEditingController usd=TextEditingController();
  TextEditingController inr=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Conversion'),
          backgroundColor: Colors.cyan[900]
          ,
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
            child: TextField(
              controller: usd,
            onChanged: (val){
                inr.text=(int.parse(val)*80).toString();
            },
            keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('ENTER USD'),
                  hintText: 'USD',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
        ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: inr,
                  onChanged: (val){
                    usd.text=(int.parse(val)/80).toString();
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text('ENTER INR'),
                      hintText: 'INR',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),

              MaterialButton(
                onPressed: (){
                  usd.text='';
                  inr.text='';
                  print('button pressed');},

                child: Text('Reset'),
                color:Colors.blueGrey,
              )
            ],
          ),
        )
    );
  }
}
