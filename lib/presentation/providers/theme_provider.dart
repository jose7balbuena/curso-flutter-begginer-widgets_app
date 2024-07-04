import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Bandera que indica si esta activado el modo Oscuro
final isDarkmodeProdiver = StateProvider((ref) => false);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Bandera que indica si esta activado el modo Oscuro
final selectedColorProvider = StateProvider((ref) => 0);

//objeto de tipo Apptheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifer, AppTheme>(
  (ref) => ThemeNotifer(),
);

//COntroller o Notifier
class ThemeNotifer extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppTheme();
  ThemeNotifer() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
