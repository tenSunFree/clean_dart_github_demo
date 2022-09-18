class HomeCommentsEntity {
  HomeCommentsEntity({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    _postId = postId;
    _id = id;
    _name = name;
    _email = email;
    _body = body;
  }

  HomeCommentsEntity.fromJson(dynamic json) {
    _postId = json['postId'];
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _body = json['body'];
  }

  int? _postId;
  int? _id;
  String? _name;
  String? _email;
  String? _body;

  int? get postId => _postId;

  int? get id => _id;

  String? get name => _name;

  String? get email => _email;

  String? get body => _body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['postId'] = _postId;
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['body'] = _body;
    return map;
  }
}

extension CommentsEntityExtension on HomeCommentsEntity {
  HomeCommentsEntity copyWith({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    return HomeCommentsEntity(
      postId: postId ?? _postId,
      id: id ?? _id,
      name: name ?? _name,
      email: name ?? _name,
      body: body ?? _body,
    );
  }
}
