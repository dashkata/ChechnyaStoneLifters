import 'package:flutter/material.dart';

import '../../../domain/models/guard_request.dart';

class RequestDescriptionScreen extends StatelessWidget {
  const RequestDescriptionScreen({required this.guardRequest, super.key});

  final RequestModel guardRequest;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Description'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(guardRequest.user.name),
            // Text(DateFormat.yMMMMEEEEd().format(guardRequest.date)),
            Text(guardRequest.startingAddress),
            Text(guardRequest.endingAddress ?? ''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
          ],
        ),
      );
}
