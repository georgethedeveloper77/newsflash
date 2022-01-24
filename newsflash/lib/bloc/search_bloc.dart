import 'package:news_app_api/model/article_response.dart';
import 'package:news_app_api/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final NewsRepository _repository = NewsRepository();
  final BehaviorSubject<ArticleResponse> _subject =
      BehaviorSubject<ArticleResponse>();

  search(String value) async {
    ArticleResponse response = await _repository.search(value);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ArticleResponse> get subject => _subject;
}

final searchBloc = SearchBloc();
