import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Taskture"),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const TasktureDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              children: [
                const Text(
                  "All tasks",
                  style: TextStyle(color: Colors.black),
                ),
                const Spacer(),
                Text(
                  "${DateTime.now().month}/${DateTime.now().day}",
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text("Task $index"),
                    subtitle: const Text("Task detail"),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
