import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomAplances extends StatelessWidget {

  final String roomlabel;
  final String imgpath;
  final double imgwidth;
  final double imgheight;

  const RoomAplances({Key? key,
    required this.roomlabel,
    required this.imgpath,
    required this.imgwidth,
    required this.imgheight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){},
            child: Container(
              padding: EdgeInsets.only(left: 14),
              width: MediaQuery.of(context).size.width*0.43,
              height: MediaQuery.of(context).size.height*0.20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.grey.shade700,)),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(roomlabel,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),),
                ),
                SizedBox(height: 0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    height: MediaQuery.of(context).size.height*imgheight,
                    width: MediaQuery.of(context).size.height*imgwidth,
                    child: Image.asset(imgpath,
                      fit: BoxFit.contain,),
                  ),
                )
              ],
            ),)),
      ],
    );
  }
}
