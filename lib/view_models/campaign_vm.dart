import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_test/models/campaign_model.dart';

import '../common/enums.dart';
import '../common/helper.dart';

final campaignModelProvider =
    StateNotifierProvider<CampaignModelNotifier, CampaignModel>((ref) {
  return CampaignModelNotifier();
});

class CampaignModelNotifier extends StateNotifier<CampaignModel> {
  CampaignModelNotifier() : super(const CampaignModel()){
    load();
  }
     Future<void> load() async {
    final data = await Helper.fromDB(); 
    if (data != null) {
      state = data; 
    }
  }


  void resetForm() {
    state = const CampaignModel();
  }

  void updateSubject(String? subject) {
    state = state.copyWith(subject: subject);
  }

  void updatePrevText(String? prevText) {
    state = state.copyWith(prevText: prevText);
  }

  void updateName(String? name) {
    state = state.copyWith(name: name);
  }

  void updateEmail(String? email) {
    state = state.copyWith(email: email);
  }

  void toggleRunOnce() {
    state = state.copyWith(runOnce: !state.runOnce);
  }

  void toggleCustAud() {
    state = state.copyWith(custAud: !state.custAud);
  }

  void saveDraft(CampaignModel campaignModel) async {
    await Helper.saveToHive(campaignModel);
  }
}

final campaignStepListProvider =
    StateNotifierProvider<CampaignStepListNotifier, CampaignStepList>((ref) {
  return CampaignStepListNotifier();
});

class CampaignStepListNotifier extends StateNotifier<CampaignStepList> {
  CampaignStepListNotifier()
      : super(const CampaignStepList(data: [
          CampaignStep(
              number: 1,
              title: 'Create New Campaign',
              description:
                  'Fill out these details and get your campaign ready'),
          CampaignStep(
              number: 2,
              title: 'Create Segments',
              description: 'Get the correct demographic for your campaign'),
          CampaignStep(
              number: 3,
              title: 'Bidding strategy',
              description: 'Optimize your campaign reach with potential'),
          CampaignStep(
              number: 4,
              title: 'Site Links',
              description: 'Setup your customer journey flow'),
          CampaignStep(
              number: 5,
              title: 'Review Campaign',
              description: 'Double check your campaign is ready to go'),
        ]));
  int currentStep = 1;

  void updateStepStatus() {
    state = state.copyWith(
      data: state.data.map((step) {
        if (step.number == currentStep) {
          return step.copyWith(status: CampaignStepStatus.completed);
        }
        return step;
      }).toList(),
    );
  }

  void incrementStep() {
    if (currentStep < state.data.length) {
      currentStep++;
      state = state.copyWith(
        data: state.data.map((step) {
          if (step.number == currentStep) {
            return step.copyWith(status: CampaignStepStatus.pending);
          }
          return step;
        }).toList(),
      );
    }
  }
}
