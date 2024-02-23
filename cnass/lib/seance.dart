import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeancePage extends StatefulWidget {
  const SeancePage({super.key});

  @override
  State<SeancePage> createState() => _SeancePageState();
}

class _SeancePageState extends State<SeancePage> {
  final events = [
    {"antenne": "tevraghzeina", "jour": "lundi", "heure": "8h"},
    {"antenne": "dar naime", "jour": "mardi", "heure": "12h"},
    {"antenne": "sebkha", "jour": "mercredi", "heure": "19h"}
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          final antenne = event['antenne'];
          final jour = event['jour'];
          final heure = event['heure'];
          return Card(
            child: ListTile(
              leading: Image.asset("assets/images/faveicon.png"),
              title: Text('$antenne'),
              subtitle: Text('$jour , $heure'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}
