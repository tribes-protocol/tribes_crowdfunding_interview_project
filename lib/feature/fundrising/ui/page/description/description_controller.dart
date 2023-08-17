import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tribes_crowdfunding_interview_project/feature/fundrising/ui/page/description/description_state.dart';

class DescriptionController extends StateNotifier<DescriptionState> {
  DescriptionController(): super(const DescriptionState());

  Future<void> init() async {

  }

  void setDescription(String value) {
    state = state.copyWith(description: value);
  }
  
}