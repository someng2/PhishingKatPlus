import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:voskat/model/simulation/appContentsDB.dart';

class AppContentsControllerDB {
  static const ROOT = 'http://localhost/capstone/AppContents.php';
  static const String _GET_ACTION = 'GET_ALL';
  static const String _CREATE_TABLE = 'CREATE_TABLE';
  static const String _ADD_EMP_ACTION = 'ADD_CONT';
  static const String _UPDATE_EMP_ACTION = 'UPDATE_CONT';
  static const String _DELETE_EMP_ACTION = 'DELETE_CONT';

  static Future<List<AppContentsDB>> getContents() async {
    try {
      var map = new Map<String, dynamic>();
      map["action"] = _GET_ACTION;

      print('before');
      final response = await http.post(Uri.parse(ROOT), body: map);

      print(response);
      print("getEmployees >> Response:: ${response.body}");
      if (response.statusCode == 200) {
        List<AppContentsDB> list = parseResponse(response.body);
        return list;
      } else {
        throw <AppContentsDB>[];
      }
    } catch (e) {
      return <AppContentsDB>[];
    }
  }

  static List<AppContentsDB> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<AppContentsDB>((json) => AppContentsDB.fromJson(json)).toList();
  }

  static Future<String> createTable() async {
    try {
      var map = new Map<String, dynamic>();
      map["action"] = _CREATE_TABLE;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print("createTable >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }

  static Future<String> addContents(
  String ac_id,
  String sid,
  String aid,
  int order,
  String c_type,
  String contents,
  bool hasNextAction,
      DateTime reg_date, DateTime mod_date
      ) async {
    try {
      var map = new Map<String, dynamic>();
      map["action"] = _ADD_EMP_ACTION;
      map['ac_id'] = ac_id;
      map['sid'] = sid;
      map['aid'] = aid;
      map['order'] = order;
      map['c_type'] = c_type;
      map['contents'] = contents;
      map['hasNextAction'] = hasNextAction;
      map['reg_date'] = reg_date;
      map['mod_date'] = mod_date;

      final response = await http.post(Uri.parse(ROOT), body: map);
      print(response);
      print("addContents >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }

  static Future<String> updateEmployee(
      String empId, String firstName, String lastName) async {
    try {
      var map = new Map<String, dynamic>();
      map["action"] = _UPDATE_EMP_ACTION;
      map["emp_id"] = empId;
      map["first_name"] = firstName;
      map["last_name"] = lastName;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print("deleteEmployee >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }

  static Future<String> deleteEmployee(String empId) async {
    try {
      var map = new Map<String, dynamic>();
      map["action"] = _DELETE_EMP_ACTION;
      map["emp_id"] = empId;
      final response = await http.post(Uri.parse(ROOT), body: map);
      print("deleteEmployee >> Response:: ${response.body}");
      return response.body;
    } catch (e) {
      return 'error';
    }
  }
}
