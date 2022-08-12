

import 'package:flutter/material.dart';

class Transaction{
  String title;
  String item;
  double amount;
  DateTime date ;

  Transaction(
      {
        required this.title,
        required this.item,
        required this.amount,
        required this.date
      }
      );

}