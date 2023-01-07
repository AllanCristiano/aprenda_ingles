import 'package:aprenda_ingles/screens/bichos.dart';
import 'package:aprenda_ingles/screens/numeros.dart';
import 'package:aprenda_ingles/screens/vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aprenda inglês"),
        centerTitle: true,
        bottom: TabBar(
            controller: _controller,
            labelStyle: const TextStyle(fontSize: 18),
            indicatorWeight: 4,
            tabs: const [
              Tab(
                text: "Bichos",
              ),
              Tab(
                text: "Números",
              ),
              Tab(
                text: "Vogais",
              ),
            ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [Bichos(), Numeros(), Vogais()],
      ),
    );
  }
}
