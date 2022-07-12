import 'package:voskat/model/Etc./noticeDB.dart';

abstract class NoticeRepository{

  Future<List<NoticeDB>> getNotice();
  // Future addNotice(String name, int birthYear, String gender, String interest);

}