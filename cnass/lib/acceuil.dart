
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Acceuil extends StatelessWidget {
  // ignore: avoid_types_as_parameter_names
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
      
      child: Column(

        children: [
            const Text("Bienvenu chez Cnass",
            style: TextStyle(
              backgroundColor: Colors.purple
            ),),
            
            Image.asset("assets/images/atcg-logo.png")
            ,
            ElevatedButton(
              
              onPressed: () => print("l'utilisateur est entre "),
               child: const Text("Entrer"),
               style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red)
               ),
               )

        ]
      )
      );
   
  }
  
  
}