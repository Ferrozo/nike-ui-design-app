import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(20),
        height: 70,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(10, 10),
              blurRadius: 20,
              color: Colors.grey.withOpacity(0.28),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search_outlined,
              color: Color.fromARGB(255, 1, 12, 50),
              size: 30,
            ),
          ),
        ));
  }
}
