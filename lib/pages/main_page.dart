import 'package:flutter/material.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView example"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: ListView.builder(itemBuilder: itemBuilder),
    );
  }
}
