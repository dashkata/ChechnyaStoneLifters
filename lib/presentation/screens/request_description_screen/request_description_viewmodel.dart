import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:map_launcher/map_launcher.dart';

import '../../../domain/repositories/request_repo.dart';

class RequestDescriptionVM extends ChangeNotifier {
  final RequestRepo _requestRepo;

  bool _isAccepted = false;

  RequestDescriptionVM({required RequestRepo requestRepo})
      : _requestRepo = requestRepo;

  bool get isAccepted => _isAccepted;

  Future<void> acceptRequest({
    required int requestId,
    required int guardId,
  }) async {
    await _requestRepo.acceptRequest(
      requestId: requestId,
      guardId: guardId,
    );
    _isAccepted = true;
    notifyListeners();
  }

  Future<void> cancelRequest({
    required int requestId,
  }) async {
    await _requestRepo.cancelRequest(
      requestId: requestId,
    );
    _isAccepted = false;
    notifyListeners();
  }

  Future<void> launchMapFromAddress(
      {required String address, required BuildContext context}) async {
    final List<Location> locations = await locationFromAddress(address);
    final availableMaps = await MapLauncher.installedMaps;
    if (context.mounted) {
      await showModalBottomSheet(
        context: context,
        builder: (_) => SafeArea(
          child: SingleChildScrollView(
            child: Wrap(
              children: <Widget>[
                for (var map in availableMaps)
                  ListTile(
                    onTap: () => map.showMarker(
                      coords:
                          Coords(locations[0].latitude, locations[0].longitude),
                      title: address,
                    ),
                    title: Text(map.mapName),
                    leading: SvgPicture.asset(
                      map.icon,
                      height: 30.0,
                      width: 30.0,
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
