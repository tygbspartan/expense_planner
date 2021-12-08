import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactionList;

  TransactionList(this.transactionList);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: transactionList.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No trasactions yet.',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset('assets/images/waiting.png',
                      fit: BoxFit.cover),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
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
                            color: Theme.of(context).primaryColorDark,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange.shade100.withOpacity(0.5),
                              blurRadius: 7,
                              spreadRadius: 3,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Rs.${transactionList[index].amount}',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Theme.of(context).primaryColorDark,
                          ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transactionList[index].title,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              DateFormat.yMMMd()
                                  .format(transactionList[index].date),
                              style: TextStyle(
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ])
                    ],
                  ),
                );
              },
              itemCount: transactionList.length,
            ),
    );
  }
}
