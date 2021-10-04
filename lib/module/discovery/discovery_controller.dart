import 'package:flutter/material.dart';
import 'package:smart_city/module/discovery/bottom_sheet_content.dart';

class DiscoveryController {
  var isOpen = true;
  void alterisOpen() {
    isOpen != isOpen;
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        elevation: 10,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return BottomSheetContent();
        });
  }
}
