import 'package:flutter/material.dart';

class AddInvoice extends StatelessWidget {
  const AddInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24,
      backgroundColor: Color(0xffFAFAFA),
      child: Center(
          child: Icon(
        Icons.add,
        color: Color(0xff4EB7F2),
        size: 18,
      )),
    );
  }
}
