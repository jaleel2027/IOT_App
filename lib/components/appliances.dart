import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appliances extends StatelessWidget {

 final Color color;
 final Icon icon;
 final String label;

  const Appliances({Key? key,
    required this.color,
    required this.icon,
    required this.label,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
        child: Container(
          padding: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width*0.43,
          height: MediaQuery.of(context).size.height*0.10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
             border: Border.all(
               color: Colors.grey.shade300,
             ),
          ),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.17,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  color: color,
                ),
                child: Center(child: (icon)),
              ),
              SizedBox(width: 10,),
              Text(label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ));
  }
}
