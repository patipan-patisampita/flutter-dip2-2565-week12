import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  const StatefulPage({Key? key}) : super(key: key);

  @override
  State<StatefulPage> createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  List<String> names = ["Mark Zuckerberg", "Jeff Bezos", "Elon Mask"];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State full"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Name is ${names[i]}"),
            ElevatedButton(
                onPressed: () {
                  if(i<names.length-1){
                    setState(() {
                      i = i + 1;//i++
                    });
                  }
                },
                child: Text("Next")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  if(i != 0){
                    setState(() {
                      i = i - 1;//i--
                    });
                  }
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
