import 'package:reto_28_05_2024/src/global/controller/base_controller.dart';

class MovieController extends BaseController {
  Future<void> getMoviesNowPlaying() async {
    notifyListeners();
  }
}
