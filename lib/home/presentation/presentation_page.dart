
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PresentationPage extends StatelessWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Guide Test",style: TextStyle(fontSize: 20,color: Colors.black)),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () => Modular.to.pushNamed("tables"), child: Text("Tables")),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () => Modular.to.pushNamed("graphs"), child: Text("Graphs"))
        ],
      )));
  }
}
