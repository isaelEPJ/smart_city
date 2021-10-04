import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_city/shared/model/categories.dart';

const CategoriesData = const [
  Categories(
    id: 1,
    name: 'Alimentação',
    imageUrl: 'imageUrl',
    linkUrl: '/educacao',
    icon: Icon(Icons.fastfood),
  ),
  Categories(
    id: 1,
    name: 'Animais',
    imageUrl: 'imageUrl',
    linkUrl: '/educacao',
    icon: Icon(Icons.pets),
  ),
  Categories(
    id: 7,
    name: 'Assistência social',
    imageUrl: 'imageUrl',
    linkUrl: '/assistencia-social',
    icon: Icon(Icons.people_alt_outlined),
  ),
  Categories(
    id: 6,
    name: 'Cultura e lazer',
    imageUrl: 'imageUrl',
    linkUrl: '/cultura',
    icon: Icon(Icons.beach_access_sharp),
  ),
  Categories(
    id: 8,
    name: 'Economia',
    imageUrl: 'imageUrl',
    linkUrl: '/economia',
    icon: Icon(CupertinoIcons.money_dollar),
  ),
  Categories(
    id: 1,
    name: 'Educação',
    imageUrl: 'imageUrl',
    linkUrl: '/educacao',
    icon: Icon(Icons.chrome_reader_mode),
  ),
  Categories(
      id: 2,
      name: 'Energia',
      imageUrl: 'imageUrl',
      linkUrl: '/saneamento',
      icon: Icon(Icons.battery_charging_full_outlined)),
  Categories(
    id: 2,
    name: 'Habitaçao',
    imageUrl: 'imageUrl',
    linkUrl: '/saneamento',
    icon: Icon(Icons.home),
  ),
  Categories(
    id: 2,
    name: 'Mobilidade',
    imageUrl: 'imageUrl',
    linkUrl: '/saneamento',
    icon: Icon(Icons.traffic_rounded),
  ),
  Categories(
    id: 2,
    name: 'Residuos',
    imageUrl: 'imageUrl',
    linkUrl: '/saneamento',
    icon: Icon(Icons.delete_outline_outlined),
  ),
  Categories(
    id: 2,
    name: 'Saneamento',
    imageUrl: 'imageUrl',
    linkUrl: '/saneamento',
    icon: Icon(Icons.emoji_transportation_outlined),
  ),
  Categories(
    id: 3,
    name: 'Turismo',
    imageUrl: 'imageUrl',
    linkUrl: '/turismo',
    icon: Icon(Icons.travel_explore),
  ),
  Categories(
    id: 4,
    name: 'Segurança',
    imageUrl: 'imageUrl',
    linkUrl: '/seguranca',
    icon: Icon(Icons.security),
  ),
  Categories(
    id: 5,
    name: 'Tecnologia e inovação',
    imageUrl: 'imageUrl',
    linkUrl: '/tech-inovacao',
    icon: Icon(Icons.table_chart),
  ),
];
