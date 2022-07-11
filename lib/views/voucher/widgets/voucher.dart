import 'package:flutter/material.dart';

class Voucher extends StatelessWidget {
  Voucher({Key? key}) : super(key: key);
  final list = [
    {'images': 'assets/icon_voucher/gopay.png'},
    {'images': 'assets/icon_voucher/shopeepay.png'},
    {'images': 'assets/icon_voucher/telkomsel.png'},
    {'images': 'assets/icon_voucher/xl axiata.png'},
  ];
  final payList = [
    {'images': 'assets/icon_voucher/gopay.png'},
    {'images': 'assets/icon_voucher/gopay.png'},
    {'images': 'assets/icon_voucher/gopay.png'},
    {'images': 'assets/icon_voucher/shopeepay.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        _buildTitle("Voucher"),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/gopay.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/shopeepay.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/telkomsel.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/xl axiata.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/BNI.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/BRI.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/BCA.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            width: 91,
            height: 92,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: const Image(
                image: AssetImage('assets/icon_voucher/Mandiri.png'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.2,
                  blurRadius: 9,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
          ),
        )
        // Container(
        //   height: 200,
        //   padding: EdgeInsets.only(top: 10, left: 25, right: 25),
        //   child: ListView.separated(
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (_, index) => Column(
        //             children: [
        //               Container(
        //                 padding: EdgeInsets.all(15),
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   color: Colors.white,
        //                   boxShadow: [
        //                     BoxShadow(
        //                       color: Colors.grey.withOpacity(0.3),
        //                       spreadRadius: 3,
        //                       blurRadius: 8,
        //                       offset:
        //                           Offset(0, 5), // changes position of shadow
        //                     ),
        //                   ],
        //                 ),
        //                 child: Image(
        //                   image: AssetImage(list[index]['images'] as String),
        //                 ),
        //               ),
        //             ],
        //           ),
        //       separatorBuilder: (_, index) => SizedBox(
        //             width: 10,
        //           ),
        //       itemCount: list.length),
        // ),
      ],
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
