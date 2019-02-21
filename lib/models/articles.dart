library posts;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:convert';
import 'package:dvbnews_app/models/serializers.dart';

part 'articles.g.dart';

abstract class Posts implements Built<Posts, PostsBuilder> {
  Posts._();

  factory Posts([updates(PostsBuilder b)]) = _$Posts;

  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'date')
  String get date;

  @nullable
  @BuiltValueField(wireName: 'link')
  String get link;

  @nullable
  @BuiltValueField(wireName: 'title')
  Title get title;

  @nullable
  @BuiltValueField(wireName: 'content')
  Content get content;

  String toJson() {
    return json.encode(serializers.serializeWith(Posts.serializer, this));
  }

  static Posts fromJson(String jsonString) {
    return serializers.deserializeWith(
        Posts.serializer, json.decode(jsonString));
  }

  static Serializer<Posts> get serializer => _$postsSerializer;
}

abstract class Title implements Built<Title, TitleBuilder> {
  Title._();

  factory Title([updates(TitleBuilder b)]) = _$Title;

  @nullable
  @BuiltValueField(wireName: 'rendered')
  String get rendered;

  String toJson() {
    return json.encode(serializers.serializeWith(Title.serializer, this));
  }

  static Title fromJson(String jsonString) {
    return serializers.deserializeWith(
        Title.serializer, json.decode(jsonString));
  }

  static Serializer<Title> get serializer => _$titleSerializer;
}

abstract class Content implements Built<Content, ContentBuilder> {
  Content._();

  factory Content([updates(ContentBuilder b)]) = _$Content;

  @nullable
  @BuiltValueField(wireName: 'rendered')
  String get rendered;

  String toJson() {
    return json.encode(serializers.serializeWith(Content.serializer, this));
  }

  static Content fromJson(String jsonString) {
    return serializers.deserializeWith(
        Content.serializer, json.decode(jsonString));
  }

  static Serializer<Content> get serializer => _$contentSerializer;
}
