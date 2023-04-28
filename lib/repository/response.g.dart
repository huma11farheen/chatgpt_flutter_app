// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessResponse _$$SuccessResponseFromJson(Map<String, dynamic> json) =>
    _$SuccessResponse(
      json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessResponseToJson(_$SuccessResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$ErrorResponse _$$ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$ErrorResponse(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorResponseToJson(_$ErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
