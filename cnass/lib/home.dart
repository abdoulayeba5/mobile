import 'package:flutter/material.dart';

// import 'seance.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "bienvenue chez cnass",
            style: TextStyle(
              fontSize: 42,
            ),
          ),
          const Text(
            "une asssurance maladie",
            style: TextStyle(
                fontSize: 24, fontFamily: AutofillHints.addressCityAndState),
          ),
        ],
      ),
    );
  }
}






























// add a button 
//  Padding(padding: EdgeInsets.only(top: 20)),
//            ElevatedButton.icon(
//             style: ButtonStyle(
//               backgroundColor: MaterialStatePropertyAll(Colors.green)
//             ),
//             // ignore: avoid_print
//             onPressed:() {
//               Navigator.push(
//                 context,
//                 PageRouteBuilder(pageBuilder: (_,__,___) => SeancePage()
//                  )
//                );
//             },
//             label: const Text(
//               "les Seance de la semaine"
//               ),
//               icon: Icon(Icons.calendar_month),
//             ),