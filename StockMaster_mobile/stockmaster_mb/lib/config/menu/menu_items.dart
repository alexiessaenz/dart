import 'package:flutter/material.dart';


class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Sign In',
    subTitle: 'Sign In Screen',
    link: '/signin',
    icon: Icons.add
  ),
  MenuItem(
    title: 'Stored',
    subTitle: 'Products in local storage',
    link: '/stored-screen',
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Inputs', 
    subTitle: 'Inputs of products', 
    link: '/input-screen', 
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'Outputs', 
    subTitle: 'Outputs of products', 
    link: '/output-screen', 
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'Admin Users',
    subTitle: 'Grants in table view',
    link: '/adminusers-screen',
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated container', 
    subTitle: 'Stateful widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded
  ),

  MenuItem(
    title: 'UI Controls + Tiles', 
    subTitle: 'Una serie de controles de Flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined
  ),

  MenuItem(
    title: 'Introducción a la aplicación', 
    subTitle: 'Pequeño tutorial introductorio', 
    link: '/tutorial', 
    icon: Icons.accessible_rounded
  ),

  MenuItem(
    title: 'InfiniteScroll y Pull', 
    subTitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite', 
    icon: Icons.list_alt_rounded
  ),
MenuItem(
    title: 'Cambiar tema', 
    subTitle: 'Cambiar tema de la aplicación', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
  ),

];



