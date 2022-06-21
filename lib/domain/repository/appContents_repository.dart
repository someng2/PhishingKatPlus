// ignore_for_file: file_names
import 'package:voskat/domain/model/contents.dart';

abstract class AppContentsRepository {
  Future<List<Contents>> getContents();

  Future add(
      String ac_id,
      String aid,
      String sid,
      int order,
      String c_type,
      String contents,
      int hasNextAction,
      DateTime reg_date,
      DateTime mod_date);

  // Future update(int id, String content);

  // Future remove(int id);

}
