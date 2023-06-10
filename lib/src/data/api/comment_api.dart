import 'package:dio/dio.dart';
import 'package:template_app_bloc_pattern/src/data/http/http_constants.dart';
import 'package:template_app_bloc_pattern/src/data/models/comment.dart';

class CommentApi {
  final Dio _dio = Dio();

  Future<Comment> getComment(int postId) async {
    final result = await _dio.get('${HttpConstant.baseUrl}$postId');
    return Comment.fromJson(result.data);
  }
}
