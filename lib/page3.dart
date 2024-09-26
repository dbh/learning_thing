import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _page3State();
}

class _page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Hello Page 3"),
      ),
    );
  }
}
