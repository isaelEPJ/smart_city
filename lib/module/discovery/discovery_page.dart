import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:smart_city/module/discovery/bottom_sheet_content.dart';
import 'package:smart_city/module/discovery/discovery_controller.dart';
import 'package:smart_city/shared/themes/app_colors.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        elevation: 10,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            height: 500,
            color: Colors.red,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final controller = DiscoveryController();
    @override
    void initState() {
      super.initState();
      () {
        print('object');
      };
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            new FlutterMap(
              options: new MapOptions(
                center: new LatLng(-8.06606467182694, -34.88909430804391),
                zoom: 10.0,
              ),
              layers: [
                new TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c']),
                new MarkerLayerOptions(
                  markers: [
                    new Marker(
                      width: 80.0,
                      height: 80.0,
                      point: new LatLng(-8.06606467182694, -34.88909430804391),
                      builder: (ctx) => Icon(
                        Icons.location_on_sharp,
                        color: AppColors.redDefault,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(bottom: 0, child: BottomSheetContent()),
          ],
        ),
      ),
    );
  }
}
