import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        _buildTitle("Penawaran Terbaik"),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: 120,
            height: 110,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: Column(
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                          
                        ),
                        color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "2%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "50.000",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Point : 49.539",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 143, 191),
                        fontSize: 12),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(
                
              ),
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
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 120,
            height: 110,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: Column(
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                          
                        ),
                        color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "2%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "100.000",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Point : 98.980",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 143, 191),
                        fontSize: 12),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(
                
              ),
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
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 120,
            height: 110,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              child: Column(
                children: [
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Card(
                        shape: RoundedRectangleBorder(
                          
                        ),
                        color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "3%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "6 GB",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "Point : 43.615",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 143, 191),
                        fontSize: 12),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(
                
              ),
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
