import 'package:dapoint/constants.dart';
import 'package:dapoint/views/voucher/pulsa_data.dart';
import 'package:flutter/material.dart';

import '../../../src/image_carrousel_home.dart';

class KategoriOperator extends StatelessWidget {
  KategoriOperator({Key? key}) : super(key: key);
  final List<Operator> operator = OperatorList.fetchOperators();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        height: 210,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: mainColor,
              child: Container(
                height: 60,
                child: Center(
                  child: ListTile(
                    leading: Container(
                      color: Colors.white,
                      width: 30,
                      height: 30,
                      child: Image.asset(operator[index].image),
                    ),
                    title: Text(operator[index].operator,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white)),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PulsaDataPage()));
                    },
                  ),
                ),
              ),
            );
          },
          itemCount: operator.length,
        ));
  }
}

class Operator {
  final String operator;
  final String image;

  Operator({required this.operator, required this.image});
}

class OperatorList {
  static final String xl = "assets/icon_voucher/xl.png";
  static final String telkomsel = "assets/icon_voucher/TELKOMSEL.jpg";
  static List<Operator> fetchOperators() {
    return [
      Operator(operator: "XL", image: xl),
      Operator(operator: "Telkomsel", image: telkomsel)
    ];
  }
}
