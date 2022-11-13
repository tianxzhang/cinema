import 'package:cinema/api/api.dart';
import 'package:cinema/api/repository.dart';

class Application {
  late Repository repository;
  late AppApi _api;

  setup() async {
    _api = AppApi();
    final restClient = _api.getRestClient();
    repository = Repository(api: _api, restClient: restClient);
  }
}