// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstCategoryModel _$FirstCategoryModelFromJson(Map<String, dynamic> json) {
  return FirstCategoryModel(
    json['id'] as int,
    json['name'] as String,
    json['keywords'] as String,
    json['desc'] as String,
    json['pid'] as int,
    json['iconUrl'] as String,
    json['picUrl'] as String,
    json['level'] as String,
    json['sortOrder'] as int,
    json['addTime'] as String,
    json['updateTime'] as String,
    json['deleted'] as bool,
  );
}

Map<String, dynamic> _$FirstCategoryModelToJson(FirstCategoryModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'keywords': instance.keywords,
      'desc': instance.desc,
      'pid': instance.pid,
      'iconUrl': instance.iconUrl,
      'picUrl': instance.picUrl,
      'level': instance.level,
      'sortOrder': instance.sortOrder,
      'addTime': instance.addTime,
      'updateTime': instance.updateTime,
      'deleted': instance.deleted,
    };
