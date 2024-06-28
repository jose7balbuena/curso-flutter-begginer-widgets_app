import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static const name = 'snackbar_screen';

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas Seguro'),
        content: const Text('Exercitation dolor amet sunt ad velit excepteur cillum consectetur in ex ipsum adipisicing.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child:  const Text('cancelar')),
          
          FilledButton(onPressed: () => context.pop(), child:  const Text('Aceptar'))
        ],
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Aliqua velit cupidatat duis ullamco esse incididunt. Ea irure non nisi ea reprehenderit amet. Aliqua nostrud irure sint magna nisi quis consequat. Do pariatur anim nulla laboris est labore irure. Ullamco amet nisi ad ut nostrud ullamco excepteur laboris reprehenderit dolor labore reprehenderit sint. Proident duis anim magna reprehenderit.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
              onPressed: () =>openDialog(context), 
              child: const Text('Dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackBar(context),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}
