import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subtitle,
      required this.url,
      required this.icon});

  
}

const appMenuItems = <MenuItems>[
  MenuItems(title: 'Botones', subtitle: 'Varios botones en flutter', url: '/buttons', icon: Icons.smart_button_outlined),
  
  MenuItems(title: 'Tarjetas', subtitle: 'Un contenerdor estilizado', url: '/cards', icon: Icons.credit_card),
  
  MenuItems(title: 'Progress', subtitle: 'Generales y controlados', url: '/progress', icon: Icons.refresh_rounded),
  
  MenuItems(title: 'SnackBars y diálogos', subtitle: 'Indicadores en pantalla', url: '/snackbars', icon: Icons.info_outline),

  MenuItems(title: 'Animated Container', subtitle: 'Stateful widget animado', url: '/animated', icon: Icons.check_box_outline_blank_rounded),  

  MenuItems(title: 'UI Controls + Tiles', subtitle: 'Serie de controles de Flutter', url: '/ui_controls', icon: Icons.car_rental_outlined),  

  MenuItems(title: 'Introducción a la aplicación', subtitle: 'Pequeño tutorial introductorio', url: '/app_tutorial', icon: Icons.accessible_rounded),  
  
  ];
