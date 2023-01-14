
import 'package:flutter/material.dart';


class CompanyButtonsWidget extends StatelessWidget {

  final String title;
  final String? value;

  final Function() function;

  const CompanyButtonsWidget({Key? key, required this.title, this.value, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: function,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.14,
                width: MediaQuery.of(context).size.width * 0.14,
                child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(title,
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.010,color: Colors.black,fontWeight: FontWeight.bold)),
                      ],
                    ))),
          )),
      ));
  }
}
