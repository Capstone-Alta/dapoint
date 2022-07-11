import 'package:flutter/material.dart';

class Pilihan extends StatelessWidget {
  const Pilihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTitle("Reedem Point mu"),
          const SizedBox(
            height: 11,
          ),
          _buildTitle1("Pilih Metode Pencairan Point "),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildTitle1(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}

class Pilihan1 extends StatelessWidget {
  const Pilihan1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildTitle("Pilih Jenis Kartu"),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildTitle1(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
