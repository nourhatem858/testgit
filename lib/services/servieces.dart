import 'package:nwes/models/modelsss.dart';
import 'package:dio/dio.dart';

class news_ser {
  models?data;
  static Dio dio = Dio();

  static Future<models> get() async {
    Response response = await dio.get(
        "https://techcrunch.com/2024/05/08/bye-bye-bots-alteras-game-playing-ai-agents-get-backing-from-eric-schmidt/");
    return models.Fomjson(response.data);
  }
}