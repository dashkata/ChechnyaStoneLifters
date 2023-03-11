import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../domain/models/request_model.dart';
import '../../resources/router.dart';
import '../../resources/themes.dart';
import 'request_description_viewmodel.dart';

class RequestDescriptionScreen extends StatelessWidget {
  const RequestDescriptionScreen({required this.guardRequest, super.key});

  final RequestModel guardRequest;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Description'),
          backgroundColor: Themes.complementaryColor,
          leading: context.watch<RequestDescriptionVM>().isAccepted
              ? null
              : IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pushReplacementNamed(
                    context,
                    Routes.availableRequestsScreen,
                  ),
                ),
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
                        Text(guardRequest.endAddress ?? ''),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 24,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.date_range),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        DateFormat('yyyy-MM-dd hh:mm')
                            .format(guardRequest.date),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    top: 24,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.price_change),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        '${guardRequest.totalCost} lv.',
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () =>
                      context.read<RequestDescriptionVM>().launchMapFromAddress(
                            address: guardRequest.startingAddress,
                            context: context,
                          ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Themes.complementaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  child: const Text(
                    'Get directions',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32.0,
                  ),
                  child: context.watch<RequestDescriptionVM>().isAccepted
                      ? Column(
                          children: [
                            ElevatedButton(
                              onPressed: null,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                              ),
                              child: const Text(
                                'Accepted',
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () => context
                                  .read<RequestDescriptionVM>()
                                  .cancelRequest(
                                    requestId: guardRequest.id,
                                  )
                                  .then(
                                    (value) => Navigator.pushReplacementNamed(
                                      context,
                                      Routes.availableRequestsScreen,
                                    ),
                                  ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              child: const Text(
                                'Cancel request',
                              ),
                            ),
                          ],
                        )
                      : ElevatedButton(
                          onPressed: () => context
                              .read<RequestDescriptionVM>()
                              .acceptRequest(
                                requestId: guardRequest.id,
                                guardId: 1,
                              ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Themes.complementaryColor,
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                              Text(
                                'Accept',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      );
}
