import 'package:cinema_mate/application/auth/user/register_form/register_form_norifier.dart';
import 'package:cinema_mate/application/auth/user/register_form/register_form_state.dart';
import 'package:cinema_mate/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerFormProvider =
    StateNotifierProvider<RegisterFormNorifier, RegisterFormState>((ref) {
  return getIt<RegisterFormNorifier>();
});
