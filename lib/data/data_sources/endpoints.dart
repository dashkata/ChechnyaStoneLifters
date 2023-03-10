class Endpoint {
  static const _address = 'https://9f34-78-83-77-155.eu.ngrok.io/';
  static const String requests = '${_address}requests/';
  static const String activeRequest = '${_address}requests/active';

  static String acceptRequest(String requestId, String guardId) =>
      '${_address}requests/$requestId/guard/$guardId';

  static String cancelRequest(String requestId) =>
      '${_address}requests/$requestId/active';

  static String usersRequests(String userId) =>
      '${_address}requests/users/$userId';
}
