import 'api_keys.dart';

class API {
  API({this.apiKey});
  final String apiKey;

  factory API.sandbox() => API(apiKey: APIkeys.sandboxKeys);

  //dividing url in parts ie called uri conteining host https path
  static final host = "ncov2019-admin.firebaseapp.com";
  Uri tokenUri() => Uri(scheme: 'https', host: host, path: 'token');
}
