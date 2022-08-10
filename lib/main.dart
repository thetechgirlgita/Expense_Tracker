import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseTracker());
}
class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const InitialScreen(),
    );
  }
}

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children:   <Widget> [
          Card(
            elevation: 5,
           child:  Container(
             height: 50,
             width: 100,
             child: Align(
               alignment: Alignment.center,
               child:  Text("Gita"),
             )

           )
          ),
          Card(
            child: Text("World"),
                elevation : 5,
          )
        ],
      )
    );
  }
}

