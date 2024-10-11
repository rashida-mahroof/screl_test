
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_test/common/enums.dart';
import 'package:screl_test/view_models/campaign_vm.dart';
import 'package:screl_test/widgets/common_widgets.dart';



class EmailCampaignForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();

  EmailCampaignForm({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignModel = ref.watch(campaignModelProvider);
    final campaignModelNotifier = ref.read(campaignModelProvider.notifier);
    final campaignStepListNotifier =
        ref.read(campaignStepListProvider.notifier);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  Container(
                    width: 600,
                    height: 700,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  'Create New Email Campaign',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Fill out these details to build your broadcast',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const SizedBox(height: 20),
                                CustomTextField(
                                  hintText: 'Enter Subject',
                                  label: 'Campaign Subject',
                                  value: campaignModel.subject,
                                  onChanged: (value) => campaignModelNotifier
                                      .updateSubject(value),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter a campaign subject';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                CustomTextField(
                                  maxLength: 50,
                                  maxLines: 4,
                                  hintText: 'Enter text here...',
                                  label: 'Preview text',
                                  value: campaignModel.prevText,
                                  onChanged: (value) => campaignModelNotifier
                                      .updatePrevText(value),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter preview text';
                                    }
                                    return null;
                                  },
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                     Text('Keep this simple of 50 characters'),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextField(
                                        hintText: 'From ANNE',
                                        label: '"From" Name',
                                        value: campaignModel.name,
                                        onChanged: (value) =>
                                            campaignModelNotifier
                                                .updateName(value),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter a name';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: CustomTextField(
                                        hintText: 'Anne@example.com',
                                        label: '"From" Email',
                                        value: campaignModel.email,
                                        onChanged: (value) =>
                                            campaignModelNotifier
                                                .updateEmail(value),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter an email';
                                          }
                                          if (!value.contains('@')) {
                                            return 'Please enter a valid email';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                CustomSwitch(
                                  label: 'Run only once per customer',
                                  value: campaignModel.runOnce,
                                  onChanged: (_) =>
                                      campaignModelNotifier.toggleRunOnce(),
                                ),
                                const SizedBox(height: 20),
                                CustomSwitch(
                                  label: 'Custom audience',
                                  value: campaignModel.custAud,
                                  onChanged: (_) =>
                                      campaignModelNotifier.toggleCustAud(),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                        child: OutlinedButton(
                                           style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          side:  BorderSide(color:Theme.of(context).colorScheme.primary), 
        ),
                                            onPressed: () async {
                                              campaignModelNotifier.saveDraft(campaignModel);
                                               ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                  content: Text(
                                                      'Draft Saved')),
                                            );
                                            },
                                            child: const Text('Save Draft'))),
                                            const SizedBox(width:20),
                                    Expanded(
                                      child: ElevatedButton(
                                        
                                         style:  ElevatedButton.styleFrom(
                                         
                                          backgroundColor: Colors.deepOrange,
                                          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            campaignStepListNotifier
                                                .updateStepStatus();

                                            campaignStepListNotifier
                                                .incrementStep();
                                            campaignModelNotifier.resetForm();
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                  content: Text(
                                                      'Please fill out all required fields correctly')),
                                            );
                                          }
                                        },
                                       
                                        child: const Text('Next Step'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 400,
                      height: 700,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CampaignStepsPage(),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CampaignStepsPage extends ConsumerWidget {
  const CampaignStepsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignSteps = ref.watch(campaignStepListProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: campaignSteps.data
              .map((data) => StepItem(
                  number: data.number,
                  title: data.title ?? '',
                  subtitle: data.description ?? '',
                  status: data.status ?? CampaignStepStatus.pending))
              .toList(),
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Get to know how your campaign \ncan reach a wider audience.'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
               
              },
              child: const Text('Contact Us'),
            ),
          ],
        ),
      ],
    );
  }
}

class StepItem extends StatelessWidget {
  final int number;
  final String title;
  final String subtitle;
  final CampaignStepStatus status;
  const StepItem({
    super.key,
    required this.number,
    required this.title,
    required this.subtitle,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: status == CampaignStepStatus.completed
                ? Theme.of(context).colorScheme.primary
                : Colors.grey.shade200,
            foregroundColor: status == CampaignStepStatus.completed
                ? Colors.white
                : Colors.black,
            child: Text(number.toString()),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
