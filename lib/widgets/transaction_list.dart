import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import 'package:expense_planner/widgets/user_transactions.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactionList;

TransactionList(this.transactionList);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: transactionList.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green.shade500,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Rs.${tx.amount}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green.shade500,
                        ),
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMd().format(tx.date),
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ])
                  ],
                ),
              );
            }).toList(),
          );
  }
}