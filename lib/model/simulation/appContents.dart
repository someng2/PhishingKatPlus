// ignore_for_file: file_names

class AppContents {
  String ac_id;
  String sid;
  String aid;
  int order;
  String c_type;
  String contents;
  bool hasNextAction;

  AppContents(
      {required this.ac_id,
      required this.sid,
      required this.aid,
      required this.order,
      required this.c_type,
      required this.contents,
      required this.hasNextAction});
}
