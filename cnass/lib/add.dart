import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class AddSeance extends StatefulWidget {
  const AddSeance({super.key});

  @override
  State<AddSeance> createState() => _AddSeanceState();
}

class _AddSeanceState extends State<AddSeance> {
  final _formKey = GlobalKey<FormState>();

  final seanceNameController = TextEditingController();
  final anteneNameController = TextEditingController();
  String cartier = 'aravat';
  DateTime ladate = DateTime.now();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    seanceNameController.dispose();
    anteneNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "nom de seance",
                    hintText: "entrer le nom de la seance",
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "entrer le nom du conference s'il vous plait";
                  }
                  return null;
                },
                controller: seanceNameController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "nom de l'antenne",
                    hintText: "entrer le nom de l'entenne'",
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "entrer le nom du l'entenne s'il vous plait";
                  }
                  return null;
                },
                controller: anteneNameController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(value: "aravat", child: Text("aravat")),
                    DropdownMenuItem(
                        value: "centre emetteur",
                        child: Text("centre emetteur")),
                    DropdownMenuItem(value: "pk", child: Text("pk")),
                    DropdownMenuItem(
                        value: "cite plage", child: Text("cite plage")),
                  ],
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  value: cartier,
                  onChanged: (value) {
                    setState(() {
                      cartier = value!;
                    });
                  }),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: DateTimeFormField(
                decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: "Choisir la date"),
                mode: DateTimeFieldPickerMode.dateAndTime,
                autovalidateMode: AutovalidateMode.always,
                validator: (e) =>
                    (e?.day ?? 0) == 1 ? "please not the first day " : null,
                onDateSelected: (DateTime value) {},
                onChanged: (DateTime? value) {
                  setState(() {
                    ladate = value!;
                  });
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueGrey)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final seaName = seanceNameController.text;
                      final antName = anteneNameController.text;

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("envoi des donnees en cours.....")));
                      FocusScope.of(context).requestFocus(FocusNode());

                      print(
                          " le nom de la seance est de :$seaName et le nom de lantenne est de :$antName");
                      print(" le nom du quartier :$cartier");
                      print(" la date est de :$ladate");
                    }
                  },
                  child: Text("envoyer")),
            )
          ],
        ),
      ),
    );
  }
}
