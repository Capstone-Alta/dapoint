import 'package:dapoint/constants.dart';
import 'package:flutter/material.dart';

class StatusSukses extends StatelessWidget {
  const StatusSukses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      height: 140,
      child: Card(
        child: Column(
          children: [
            ListTile(
                title: Text(
                  "Pulsa",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                subtitle: Text(
                  "Minggu, 5 Mei 2022 - 17:45",
                  style: TextStyle(
                    color: date,
                  ),
                ),
                trailing: Text(
                  "Rp 50.000",
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
                  child: const Text(
                    'Sukses',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: suksesColor,
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
      ),
    );
  }
}
