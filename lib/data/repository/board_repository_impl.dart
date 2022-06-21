import 'dart:convert';

import 'package:voskat/data/source/remote/board_api.dart';
import 'package:voskat/domain/model/post.dart';
import 'package:voskat/domain/repository/board_repository.dart';

class BoardRepositoryImpl implements BoardRepository {
  BoardApi api;

  BoardRepositoryImpl(this.api);

  @override
  Future add(String content) async {
    await api.insert(content);
  }

  @override
  Future<List<Post>> getPosts() async {
    final response = await api.query();
    final Iterable json = jsonDecode(response.body);
    return json.map((e) => Post.fromJson(e)).toList();
  }

  @override
  Future remove(int id) async {
    await api.delete(id);
  }

  @override
  Future update(int id, String content) async {
    await api.update(id, content);
  }
}