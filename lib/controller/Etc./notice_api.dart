import 'package:http/http.dart' as http;

class NoticeApi {
  final http.Client _client;

  NoticeApi({http.Client? client}) : _client = (client ?? http.Client());

  // 에뮬레이터 ip: 10.0.2.2
  // 실제 기기 -> 실제 pc의 ip
  static const baseUrl = 'http://10.0.2.2:9001';

  // 소망 맥북 ip
  // static const baseUrl = 'http://192.168.0.32:9001';

  Future<http.Response> getAllNotice() async {
    String table = 'Notice';
    final response = await _client.get(Uri.parse('$baseUrl/selectNotice.php?table=$table'));
    return response;
  }

  // Future<http.Response> insertUser(String name, int birthYear, String gender, String interest) async {
  //   final response = await _client
  //       .get(Uri.parse('$baseUrl/insertUser.php?name=$name&birthYear=$birthYear&gender=$gender&interest=$interest'));
  //   return response;
  // }
}
