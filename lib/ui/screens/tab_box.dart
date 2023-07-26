import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/provider.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NumProvider>(context, listen: false);
    return Scaffold(
      body: Consumer<NumProvider>(
        builder: (context, value, Widget? child) =>
            provider.screens[provider.getIndex],
      ),
      bottomNavigationBar: Consumer<NumProvider>(
        builder: (context, value, Widget? child) => BottomNavigationBar(
          onTap: (value) {
            provider.setCount(value);
          },
          currentIndex: provider.getIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "First"),
            BottomNavigationBarItem(icon: Icon(Icons.apple), label: "Second"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Third"),
          ],
        ),
      ),
    );
  }
}
