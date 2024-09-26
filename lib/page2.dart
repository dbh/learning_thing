import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _page2State();
}

class _page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Hello Page 2"),
      ),
    );
  }
}
