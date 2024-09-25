import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: const Color(0xFF2B475E),
          body: Column(

            //mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 122,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage('images/tharwat.jpg',),
          ),
              ),
              const Text("Samaa Khedr",style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico'
              ),
              ),
              const Text('FLUTTER DEVELOPER',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black54),),
              const Divider(
                color: Color(0xFF6C8090),
                thickness: 1,
                indent: 60,
                endIndent: 60,
                height: 10,
              ),
              Card(

                margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: const ListTile(
                  leading: Icon(Icons.phone,size: 32,color: Color(0xFF2B475E),),
                  title: Text('(+20) 1260807090',style: TextStyle(fontSize: 24,),
                ),
              ),
              ),
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 65,

                    child: const Row(
                      children: [
                        //Spacer(flex: 1,),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Icon(Icons.phone,size: 32,color: Color(0xFF2B475E),
                          ),
                        ),
                        //Spacer( flex: 1,),
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text("(+20) 1260807090",style: TextStyle(fontSize: 24,),
                          ),
                        ),
                        //Spacer( flex: 3,)
                      ],
                    ),
                  ),
                ),   */
              // the other rectangle
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 65,
                  child: const Row(
                    children: [
                      //Spacer(flex: 1,),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Icon(Icons.mail,size: 32,color: Color(0xFF2B475E),
                        ),
                      ),
                      Spacer( flex: 1,),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text("samaakhedr1@gmail.com",style: TextStyle(fontSize: 24,),
                        ),
                      ),
                      Spacer( flex: 3,)
                    ],
                  ),
                ),
              ),
              /*ClipRRect(
                //borderRadius: BorderRadius.all(Radius.circular(999)),
                borderRadius: BorderRadius.circular(999),
                child: Image.asset('images/tharwat.jpg',width: 200,height: 200,), */

            ],
          ),
        )
    );
  }
}
