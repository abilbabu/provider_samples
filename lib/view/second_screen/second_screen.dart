import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_samples/controller/counter_screen_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterScreenController>().toIncreament();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
