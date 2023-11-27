import 'package:flutter/material.dart';
import '../LinkOpener.dart';


class HomePage extends StatelessWidget {
   HomePage({super.key});

   final Numcont = TextEditingController();
   final Msgcont = TextEditingController();


  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //Logo
            Image.network('https://cdn.icon-icons.com/icons2/99/PNG/512/whatsapp_socialnetwork_17360.png',
              width: 150,
              height: 150,
            ),
            //Title
            SizedBox(height: 40,),
            Text('Direct Massage Sender',style: TextStyle(
              fontSize: 30,
            ),),


            //Input Number
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: 280,
              child: TextField(
                controller: Numcont,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type Number',
                  suffixIcon: GestureDetector(
                      onTap: (){
                        Numcont.clear();
                      },
                      child: Icon(Icons.clear))
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent[200],
                borderRadius: BorderRadius.circular(10),
              ),
            ),


            //Input Massage
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: 280,
              child: TextField(
                controller: Msgcont,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type Massage',
                    suffixIcon: GestureDetector(
                        onTap:(){
                          Msgcont.clear();
                        },
                        child: Icon(Icons.clear))
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent[200],
                borderRadius: BorderRadius.circular(10),
              ),
            ),


            //Send button
            SizedBox(height: 20,),
             GestureDetector(
               onTap: (){
                 //Link opener
                 if(Numcont.text.isNotEmpty){
                   linkopener(Numcont.text, Msgcont.text);
                 }
               },
               child: Container(
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text('Send',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
             ),

          ],
        ),
      ),
    );
  }
}
