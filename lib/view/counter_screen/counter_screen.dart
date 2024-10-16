import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_samples/controller/counter_screen_controller.dart';
import 'package:provider_samples/view/second_screen/second_screen.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ))
        ],
      ),
      body: Center(
          child: Consumer<CounterScreenController>(
        builder: (context, counterProvider, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counterProvider.count.toString(),
              style: TextStyle(fontSize: 50),
            ),
            Text(
              counterProvider.name,
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterScreenController>().toIncreament();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
