import 'package:hive/hive.dart';

import '../models/campaign_model.dart';

class Helper{
   static Future<void> saveToHive(CampaignModel campaignModel) async {
    final box = await Hive.openBox<CampaignModel>('campaign_drafts');
    await box.add(campaignModel);
    await box.close();
  }
    static Future<CampaignModel?> fromDB() async {
    final box = await Hive.openBox<CampaignModel>('campaign_drafts');
    if (box.isNotEmpty) {
      final campaignModel = box.getAt(0); 
      await box.close();
      return campaignModel;
    } else {
      await box.close();
      return null; 
    }
  }
}