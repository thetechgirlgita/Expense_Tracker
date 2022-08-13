import 'package:flutter/material.dart';

import 'transaction.dart';


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

final List<Transaction> transactions = [
  Transaction(
    title: 'Snacks',
    amount: 20,
    item: 'Kurkure',
    date: DateTime.now(),
  )
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(


           children: transactions.map((tx){
             return Card(
                 elevation: 5,
                 child: Row(
                 children:[
                   Container(
                 height: 50,
                 width: 100,
                 child: Align(
                   alignment: Alignment.center,
                 child:  Text(tx.amount.toString()
                 ),
                 )
                 ),
                   Card(
                     child:
                   Container(
                       height: 50,
                       width: 100,
                       child: Align(
                         alignment: Alignment.center,
                         child:  Text(tx.title.toString()
                         ),
                       )),
                   ),
                   Card(
                     child:
                     Container(
                         height: 50,
                         width: 100,
                         child: Align(
                           alignment: Alignment.center,
                           child:  Text(tx.item ,
                           ),
                         )),
                   ),

               ]),
             );

           }).toList(),

      )
    );
  }
}

