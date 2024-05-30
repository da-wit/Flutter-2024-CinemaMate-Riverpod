import 'package:cinema_mate/application/sign_in_form/sign_in_form_notifier.dart';
import 'package:cinema_mate/application/sign_in_form/sign_in_form_state.dart';

import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signInFormProvider =
    StateNotifierProvider<SignInFormNotifier, SignInFormState>((ref) {
  return getIt<SignInFormNotifier>();
});
