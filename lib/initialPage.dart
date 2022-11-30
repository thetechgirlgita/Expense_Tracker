import 'dart:core';

import 'package:flutter/material.dart';
import 'transaction.dart';

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
          children: transactions.map((tx) {
            return Card(
              elevation: 5,
              child: Row(children: [
                Container(
                    height: 50,
                    width: 100,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(tx.amount.toString()),
                    )),
                Card(
                  child: Container(
                      height: 50,
                      width: 50,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(tx.title.toString()),
                      )),
                ),
                Card(
              child: Container(
                alignment: Alignment.center,
                      height: 50,
                      width: 100,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          tx.item,
                        ),
                      )),
                ),
                Card(
                  child: Text(
                    tx.date.toString(),
                  ),
                )
              ]),
            );
          }).toList(),
        ));
  }}