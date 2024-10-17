import 'package:auto_route/auto_route.dart';
import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/core/router/router.dart';
import 'package:clario_test_flutter/shared/app_elevated_button/app_elevated_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Clario Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            AppElevatedButton(
              onPressed: () {
                locator<AppRouter>().replaceNamed('/sign_in');
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
