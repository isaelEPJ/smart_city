import 'package:flutter/material.dart';

class Categories {
  final int id;
  final String name;
  final String imageUrl;
  final String linkUrl;
  final Icon icon;
  const Categories({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.linkUrl,
    required this.icon,
  });
}
