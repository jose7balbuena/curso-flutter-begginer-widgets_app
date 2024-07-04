import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget {
  const ThemeChangeScreen({super.key});

  static const name = 'theme_change_screen';
  @override
  Widget build(BuildContext context, ref) {
    final bool darkMode = ref.watch(isDarkmodeProdiver);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Theme changer'),
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
        body: _ThemeChangeView());
  }
}

class _ThemeChangeView extends ConsumerWidget {
  const _ThemeChangeView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int colorSelected = ref.watch(selectedColorProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
            title: Text(
              'Este color ',
              style: TextStyle(color: color),
            ),
            subtitle: Text('${color.value}'),
            activeColor: color,
            value: index,
            groupValue: colorSelected,
            onChanged: (value) {
              ref.read(selectedColorProvider.notifier).
                state =index; // esto en lugar del update porque no necesitamos saber el valor anterior
            });
      },
    );
  }
}
