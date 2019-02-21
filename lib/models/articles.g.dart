// GENERATED CODE - DO NOT MODIFY BY HAND

part of posts;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Posts> _$postsSerializer = new _$PostsSerializer();
Serializer<Title> _$titleSerializer = new _$TitleSerializer();
Serializer<Content> _$contentSerializer = new _$ContentSerializer();

class _$PostsSerializer implements StructuredSerializer<Posts> {
  @override
  final Iterable<Type> types = const [Posts, _$Posts];
  @override
  final String wireName = 'Posts';

  @override
  Iterable serialize(Serializers serializers, Posts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(Title)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(Content)));
    }

    return result;
  }

  @override
  Posts deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
              specifiedType: const FullType(Title)) as Title);
          break;
        case 'content':
          result.content.replace(serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content);
          break;
      }
    }

    return result.build();
  }
}

class _$TitleSerializer implements StructuredSerializer<Title> {
  @override
  final Iterable<Type> types = const [Title, _$Title];
  @override
  final String wireName = 'Title';

  @override
  Iterable serialize(Serializers serializers, Title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rendered != null) {
      result
        ..add('rendered')
        ..add(serializers.serialize(object.rendered,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Title deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TitleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rendered':
          result.rendered = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContentSerializer implements StructuredSerializer<Content> {
  @override
  final Iterable<Type> types = const [Content, _$Content];
  @override
  final String wireName = 'Content';

  @override
  Iterable serialize(Serializers serializers, Content object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.rendered != null) {
      result
        ..add('rendered')
        ..add(serializers.serialize(object.rendered,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Content deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rendered':
          result.rendered = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Posts extends Posts {
  @override
  final int id;
  @override
  final String date;
  @override
  final String link;
  @override
  final Title title;
  @override
  final Content content;

  factory _$Posts([void updates(PostsBuilder b)]) =>
      (new PostsBuilder()..update(updates)).build();

  _$Posts._({this.id, this.date, this.link, this.title, this.content})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Posts', 'id');
    }
  }

  @override
  Posts rebuild(void updates(PostsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsBuilder toBuilder() => new PostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Posts &&
        id == other.id &&
        date == other.date &&
        link == other.link &&
        title == other.title &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), date.hashCode), link.hashCode),
            title.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Posts')
          ..add('id', id)
          ..add('date', date)
          ..add('link', link)
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class PostsBuilder implements Builder<Posts, PostsBuilder> {
  _$Posts _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _link;
  String get link => _$this._link;
  set link(String link) => _$this._link = link;

  TitleBuilder _title;
  TitleBuilder get title => _$this._title ??= new TitleBuilder();
  set title(TitleBuilder title) => _$this._title = title;

  ContentBuilder _content;
  ContentBuilder get content => _$this._content ??= new ContentBuilder();
  set content(ContentBuilder content) => _$this._content = content;

  PostsBuilder();

  PostsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _date = _$v.date;
      _link = _$v.link;
      _title = _$v.title?.toBuilder();
      _content = _$v.content?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Posts;
  }

  @override
  void update(void updates(PostsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Posts build() {
    _$Posts _$result;
    try {
      _$result = _$v ??
          new _$Posts._(
              id: id,
              date: date,
              link: link,
              title: _title?.build(),
              content: _content?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'content';
        _content?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Title extends Title {
  @override
  final String rendered;

  factory _$Title([void updates(TitleBuilder b)]) =>
      (new TitleBuilder()..update(updates)).build();

  _$Title._({this.rendered}) : super._();

  @override
  Title rebuild(void updates(TitleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TitleBuilder toBuilder() => new TitleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Title && rendered == other.rendered;
  }

  @override
  int get hashCode {
    return $jf($jc(0, rendered.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Title')..add('rendered', rendered))
        .toString();
  }
}

class TitleBuilder implements Builder<Title, TitleBuilder> {
  _$Title _$v;

  String _rendered;
  String get rendered => _$this._rendered;
  set rendered(String rendered) => _$this._rendered = rendered;

  TitleBuilder();

  TitleBuilder get _$this {
    if (_$v != null) {
      _rendered = _$v.rendered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Title other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Title;
  }

  @override
  void update(void updates(TitleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Title build() {
    final _$result = _$v ?? new _$Title._(rendered: rendered);
    replace(_$result);
    return _$result;
  }
}

class _$Content extends Content {
  @override
  final String rendered;

  factory _$Content([void updates(ContentBuilder b)]) =>
      (new ContentBuilder()..update(updates)).build();

  _$Content._({this.rendered}) : super._();

  @override
  Content rebuild(void updates(ContentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentBuilder toBuilder() => new ContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Content && rendered == other.rendered;
  }

  @override
  int get hashCode {
    return $jf($jc(0, rendered.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Content')..add('rendered', rendered))
        .toString();
  }
}

class ContentBuilder implements Builder<Content, ContentBuilder> {
  _$Content _$v;

  String _rendered;
  String get rendered => _$this._rendered;
  set rendered(String rendered) => _$this._rendered = rendered;

  ContentBuilder();

  ContentBuilder get _$this {
    if (_$v != null) {
      _rendered = _$v.rendered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Content other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Content;
  }

  @override
  void update(void updates(ContentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Content build() {
    final _$result = _$v ?? new _$Content._(rendered: rendered);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
