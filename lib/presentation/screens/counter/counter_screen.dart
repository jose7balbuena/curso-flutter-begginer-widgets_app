import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static const name = 'counter_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool darkMode = ref.watch(isDarkmodeProdiver);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkmodeProdiver.notifier).
                update((darkMode)=> !darkMode);
              },
              icon: !darkMode
                  ? const Icon(Icons.light_mode_outlined)
                  : const Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier).update(
          //       (state) => state + 1,
          //     );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
