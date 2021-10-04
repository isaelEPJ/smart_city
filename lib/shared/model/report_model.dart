import 'package:flutter/widgets.dart';

class ReportModel {
  final String id;
  final String description;
  final Image? image;
  final String? pdf;
  final String status;
  final bool resolvido;
  ReportModel({
    required this.id,
    required this.description,
    this.image,
    this.pdf,
    required this.status,
    required this.resolvido,
  });
}
