import 'dart:convert';

import 'package:PhishingKatPlus/controller/Etc./notice_api.dart';
import 'package:PhishingKatPlus/controller/Etc./notice_repository.dart';

import 'package:PhishingKatPlus/model/Etc./noticeDB.dart';

class NoticeRepositoryImpl implements NoticeRepository {
  NoticeApi api;

  NoticeRepositoryImpl(this.api);

  @override
  Future<List<NoticeDB>> getNotice() async {
    final response = await api.getAllNotice();
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => NoticeDB.fromJson(e)).toList();
  }

  // @override
  // Future addUser(String name, int birthYear, String gender, String interest) async {
  //   await api.insertUser(name, birthYear, gender, interest);
  // }

}
