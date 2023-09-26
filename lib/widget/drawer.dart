import 'package:flutter/material.dart';

class TasktureDrawer extends StatelessWidget {
  const TasktureDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  child: const Icon(Icons.person),
                ),
                title: Text(
                  "Name",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                subtitle: const Text(
                  "example@gmail.com",
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 2.2,
              child: Card(
                color: Theme.of(context).colorScheme.primary.withAlpha(100),
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 3.0,
                        horizontal: 6.0,
                      ),
                      child: Card(
                        child: ListTile(
                          title: Text("Group $index"),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const OutlinedButton(
              onPressed: null,
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 5.0),
                  Text("New group"),
                ],
              ),
            ),
            const Spacer(),
            const OutlinedButton(
              onPressed: null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 8.0),
                  Text("Settings"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
