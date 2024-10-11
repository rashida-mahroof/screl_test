import 'package:flutter/material.dart';

enum CampaignStepStatus {
  completed,
  pending
}

extension CampaignStepStatusColor on CampaignStepStatus {
  Color get color {
    switch (this) {
      case CampaignStepStatus.completed:
        return Colors.green;
      case CampaignStepStatus.pending:
        return Colors.orange;
    }
  }
}