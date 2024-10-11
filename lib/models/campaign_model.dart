import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/enums.dart';

part '../gen/campaign_model.freezed.dart';
part '../gen/campaign_model.g.dart';

@freezed
class CampaignModel with _$CampaignModel {
  const factory CampaignModel({
    String? subject,
    String? prevText,
    String? name,
    String? email,
    @Default(false) bool runOnce,
    @Default(false) bool custAud,

  }) = _CampaignModel;

  factory CampaignModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignModelFromJson(json);
}

@freezed
class CampaignStepList with _$CampaignStepList {
  const factory CampaignStepList({
   @Default([]) List<CampaignStep> data
  }) = _CampaignStepList;

  factory CampaignStepList.fromJson(Map<String, dynamic> json) =>
      _$CampaignStepListFromJson(json);
}
@freezed
class CampaignStep with _$CampaignStep {
  const factory CampaignStep({
    @Default(1) int number,
    String? title,
    String? description,
    CampaignStepStatus? status,
  }) = _CampaignStep;

  factory CampaignStep.fromJson(Map<String, dynamic> json) =>
      _$CampaignStepFromJson(json);
}
