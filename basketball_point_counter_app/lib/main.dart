import 'package:flutter/material.dart';

void main() {
  runApp( const BasketBallPointCounterApp());
}

class BasketBallPointCounterApp extends StatefulWidget {
  const BasketBallPointCounterApp({super.key});

  @override
  State<BasketBallPointCounterApp> createState() => _BasketBallPointCounterAppState();
}

class _BasketBallPointCounterAppState extends State<BasketBallPointCounterApp> {
  //const BasketBallPointCounterApp({super.key});
  int teamAPoints=0;

  int teamBPoints=0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter"),
        ),
        body: Column(
          children: [
            const Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text("Team A",style: TextStyle(fontSize: 32),),
                    Text("$teamAPoints",style: const TextStyle(fontSize: 150),),
                    ElevatedButton(onPressed: (){
                      // teamAPoints++;
                      setState(() {
                        teamAPoints++;

                      });
                      //print(teamAPoints);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      //fixedSize: Size(100, 200),
                      minimumSize: const Size(150, 50)
                    ),
                        child: const Text("Add 1 Point",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black),
                        ),
                    ),

                    // margin or space between the buttons
                    //const Spacer(flex: 1,),
                    const SizedBox(height: 20,),


                    ElevatedButton(onPressed: (){
                      setState(() {
                        teamAPoints +=2;
                      });
                    },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          //fixedSize: Size(100, 200),
                          minimumSize: const Size(150, 50)
                      ),
                      child: const Text("Add 2 Point",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),

                    //const Spacer(flex: 1,),
                    const SizedBox(height: 20,),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        teamAPoints +=3;
                      });
                    },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          //fixedSize: Size(100, 200),
                          minimumSize: const Size(150, 50)
                      ),
                      child: const Text("Add 3 Point",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    //const Spacer(flex: 14,),
                  ],
                ),

                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text("Team B",style: TextStyle(fontSize: 32),),
                    Text("$teamBPoints",style: const TextStyle(fontSize: 150),),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        teamBPoints++;
                      });
                    },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          //fixedSize: Size(100, 200),
                          minimumSize: const Size(150, 50)
                      ),
                      child: const Text("Add 1 Point",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),

                    //const Spacer(flex: 1,),
                    const SizedBox(height: 20,),

                    ElevatedButton(onPressed: (){
                      setState(() {
                        teamBPoints +=2;
                      });
                    },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          //fixedSize: Size(100, 200),
                          minimumSize: const Size(150, 50)
                      ),
                      child: const Text("Add 2 Point",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),

                    //const Spacer(flex: 1,),
                    const SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        teamBPoints +=3;
                      });
                    },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          //fixedSize: Size(100, 200),
                          minimumSize: const Size(150, 50)
                      ),
                      child: const Text("Add 3 Point",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    //const Spacer(flex: 14,),
                  ],
                ),
              ],
            ),

            const Spacer(flex: 1,),
            ElevatedButton(onPressed: (){
              setState(() {
                teamAPoints=0;
                teamBPoints=0;
              });
            },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  //fixedSize: Size(100, 200),
                  minimumSize: const Size(150, 50)
              ),
              child: const Text("Reset",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black),
              ),
            ),
            const Spacer(flex: 4,)
          ],
        )
      ),
    );
  }
}
