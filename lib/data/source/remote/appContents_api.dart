// ignore_for_file: file_names
import 'package:http/http.dart' as http;

class AppContentsApi {
  final http.Client _client;

  AppContentsApi({http.Client? client}) : _client = (client ?? http.Client());

  // 에뮬레이터 ip: 10.0.2.2
  // 실제 기기 -> 실제 pc의 ip
  static const baseUrl = 'http://10.0.2.2:9001';

  Future<http.Response> query2() async {
    final response = await _client.get(Uri.parse('$baseUrl/query2.php'));
    print('query2() - Response status: ${response.statusCode}');
    return response;
  }

  Future<http.Response> insert2(
      String ac_id,
      String aid,
      String sid,
      int order,
      String c_type,
      String contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date) async {
    final response = await _client.get(Uri.parse(
        '$baseUrl/insert2.php?ac_id=$ac_id&aid=$aid&sid=$sid&order=$order&c_type=$c_type&contents=$contents&hasNextAction=$hasNextAction&reg_date=$reg_date&mod_date=$mod_date'));
    return response;
  }

  // Future<http.Response> update(int id, String content) async {
  //   final response = await _client
  //       .get(Uri.parse('$baseUrl/update.php?id=$id&content=$content'));
  //   return response;
  // }
  //
  // Future<http.Response> delete(int id) async {
  //   final response = await _client.get(Uri.parse('$baseUrl/delete.php?id=$id'));
  //   return response;
  // }
}
