import 'package:template_app_bloc_pattern/src/data/api/comment_api.dart';
import 'package:template_app_bloc_pattern/src/data/models/comment.dart';

class HomeRepository {
  final commentApi = CommentApi();

  Future<Comment> getComment(int postId) async {
    final result = await commentApi.getComment(postId);
    return result;
  }
}
