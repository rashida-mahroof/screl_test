// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignModelImpl _$$CampaignModelImplFromJson(Map<String, dynamic> json) =>
    _$CampaignModelImpl(
      subject: json['subject'] as String?,
      prevText: json['prev_text'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      runOnce: json['run_once'] as bool? ?? false,
      custAud: json['cust_aud'] as bool? ?? false,
    );

Map<String, dynamic> _$$CampaignModelImplToJson(_$CampaignModelImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'prev_text': instance.prevText,
      'name': instance.name,
      'email': instance.email,
      'run_once': instance.runOnce,
      'cust_aud': instance.custAud,
    };

_$CampaignStepListImpl _$$CampaignStepListImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignStepListImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CampaignStep.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CampaignStepListImplToJson(
        _$CampaignStepListImpl instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$CampaignStepImpl _$$CampaignStepImplFromJson(Map<String, dynamic> json) =>
    _$CampaignStepImpl(
      number: (json['number'] as num?)?.toInt() ?? 1,
      title: json['title'] as String?,
      description: json['description'] as String?,
      status: $enumDecodeNullable(_$CampaignStepStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$CampaignStepImplToJson(_$CampaignStepImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.title,
      'description': instance.description,
      'status': _$CampaignStepStatusEnumMap[instance.status],
    };

const _$CampaignStepStatusEnumMap = {
  CampaignStepStatus.completed: 'completed',
  CampaignStepStatus.pending: 'pending',
};
