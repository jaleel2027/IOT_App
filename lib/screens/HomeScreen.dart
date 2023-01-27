import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iot_app/components/appliances.dart';
import 'package:iot_app/components/roomAppliances.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isHome = true;
  bool isSettings = false;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.list_dash,
              color: Colors.black)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/abdul.jpg"),
                radius: 22,
              )
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("My Smart Home",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 3,
                                offset: Offset(2,3)
                              )
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width*0.08 ,),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const Appliances(color: Colors.yellow, icon: Icon(Icons.lightbulb), label: 'Light',),
                      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                      const Appliances(color: Colors.blue, icon: Icon(Icons.play_arrow_rounded), label: 'Media',),
                    ],
                  ),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Appliances(color: Colors.red, icon: Icon(Icons.video_camera_back), label: 'Camera',),
                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        Appliances(color: Colors.green.shade700, icon: Icon(Icons.wifi), label: 'Wifi',),
                      ],
                    ),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20, left: 20, ),
                        child: Text("Living Room",
                          style: TextStyle(
                            color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 3,
                                    offset: Offset(2,3)
                                )
                              ]
                          ),),)
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20,top: 10,),
                      child: Text("2 Devices",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      RoomAplances(roomlabel: "NetGear Wifi", imgpath: "images/wifi_router.png",
                        imgwidth: 0.13, imgheight: 0.13,),
                      SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                      RoomAplances(roomlabel: "Living Room AC", imgpath: "images/air_conditioner.png",
                        imgwidth: 0.13, imgheight: 0.13,),
                    ],
                  ),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(00, -2),
                          blurRadius: 2,
                        ),
                      ],
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){
                          //we are calling setstate to change color:
                          //SetState function will call the Build method once again:
                          setState(() {
                            isHome = true;
                            isSettings = false;
                          });
                        }, icon: Icon(Icons.home,
                              //assign color with ternary operator::
                              color: isHome? Colors.blue : Colors.grey,
                            )),
                        SizedBox(width: 20,),
                        IconButton(onPressed: (){
                          //we are calling setstate to change color:
                          //SetState function will call the Build method once again:
                          setState(() {
                            isHome = false;
                            isSettings = true;
                          });
                        }, icon: Icon(Icons.settings,
                          //assign color with ternary operator::
                          color: isSettings? Colors.blue : Colors.grey,
                        )),
                      ],
                    ),
                  ),

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 5,left: 5,right: 5),
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(0,2),
                              blurRadius: 2,
                            )
                          ],
                          color: Colors.grey.shade50.withOpacity(0.1),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: Offset(0,2),
                                blurRadius: 2,
                              )
                            ]
                          ),
                          child: Icon(Icons.mic,
                                 color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
