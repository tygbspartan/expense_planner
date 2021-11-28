import 'package:flutter/material.dart';
import './user_transactions.dart';

class NewTransaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  // final UserTransaction userTransaction = new UserTransaction();

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                    controller: titleController,
                    // onChanged: (val){
                    //   titleInput = val;
                    // },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount',
                    ),
                    controller: amountController,
                    // onChanged: (val){
                    //   amountInput = val;
                    // },
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.black,
                    color: Colors.cyan,
                    onPressed: (){
                      
                    },
                  )
                ],
              ),
            ),
          );
  }
}