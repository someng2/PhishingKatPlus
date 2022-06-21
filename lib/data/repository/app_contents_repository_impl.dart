import 'dart:convert';

import 'package:voskat/data/source/remote/appContents_api.dart';
import 'package:voskat/domain/model/contents.dart';
import 'package:voskat/domain/repository/appContents_repository.dart';

class AppContentsRepositoryImpl implements AppContentsRepository {
  AppContentsApi api;

  AppContentsRepositoryImpl(this.api);

  @override
  Future add(
      String ac_id,
      String aid,
      String sid,
      int order,
      String c_type,
      String contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date) async {
    await api.insert2(ac_id, aid, sid, order, c_type, contents, hasNextAction,
        reg_date, mod_date);
  }

  @override
  Future<List<Contents>> getContents() async {
    final response = await api.query2();
    var responseBody = utf8.decode(response.bodyBytes);
    print('response.body: $responseBody');
    final Iterable json = jsonDecode(responseBody);
    return json.map((e) => Contents.fromJson(e)).toList();
  }

  // @override
  // Future remove(int id) async {
  //   await api.delete(id);
  // }
  //
  // @override
  // Future update(int id, String content) async {
  //   await api.update(id, content);
  // }
}
