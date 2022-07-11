import 'package:dapoint/constants.dart';
import 'package:dapoint/models/Transactions.dart';
import 'package:dapoint/viewModels/transactions._view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusPending extends StatelessWidget {
  const StatusPending(Transactions e, {Key? key, required this.transactions})
      : super(key: key);

  final Transactions transactions;
  @override
  Widget build(BuildContext context) {
    TransactionsViewModel transVM = Provider.of<TransactionsViewModel>(context);
    return Container(
        height: 140,
        child:
            // ListView.builder(
            //     itemBuilder: (BuildContext context, int index) {
            // return
            Card(
          child: Column(
            children: [
              ListTile(
                  title: Text(
                    "Pulsa",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  subtitle: Text(
                    transactions.transaction_date.toString(),
                    style: TextStyle(
                      color: date,
                    ),
                  ),
                  trailing: Text(
                    transactions.transaction_detail,
                    style: TextStyle(
                      color: leadinghistory,
                    ),
                  ),
                  leading: Container(
                    color: Colors.white,
                    width: 30,
                    height: 30,
                    child: Image.asset("assets/icon_voucher/pulsa.png"),
                  )),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      transactions.status,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: pendingColor,
                      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: new Text(
                      "Lihat Selengkapnya",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 59, 109, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
        )
        // ;
        // },
        //       itemCount: TRANS.length,
        //  )
        );
  }
}
