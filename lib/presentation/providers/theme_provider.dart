import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//Bandera que indica si esta activado el modo Oscuro
final isDarkmodeProdiver = StateProvider((ref) => false);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Bandera que indica si esta activado el modo Oscuro
final selectedColorProvider = StateProvider((ref) => 0);
