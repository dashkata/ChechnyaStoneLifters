import 'package:flutter/material.dart';

import '../../../domain/models/request_model.dart';
import '../../resources/themes.dart';

class RequestDescriptionScreen extends StatelessWidget {
  const RequestDescriptionScreen({required this.guardRequest, super.key});

  final RequestModel guardRequest;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Description'),
          backgroundColor: Themes.complementaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 120),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  32,
                ),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                  ),
                  child: Text(
                    guardRequest.user.name,
                    style: TextStyle(
                      color: Themes.accentColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                // Text(DateFormat.yMMMMEEEEd().format(guardRequest.date)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: Text(
                    guardRequest.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Themes.accentColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 24,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.location_pin),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(guardRequest.startingAddress),
                    ],
                  ),
                ),
                if (guardRequest.endAddress != null)
                  Row(
                    children: [
                      const Icon(Icons.location_pin),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(guardRequest.endAddress ?? ''),
                    ],
                  ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Themes.complementaryColor,
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(Icons.check),
                            SizedBox(width: 8.0),
                            Text('Accept', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(Icons.close),
                            SizedBox(width: 8.0),
                            Text('Reject', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
