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
  MenuItems(title: 'Tarjetas', subtitle: 'Un contenerdor estilizado', url: '/cards', icon: Icons.credit_card)
    
  ];
