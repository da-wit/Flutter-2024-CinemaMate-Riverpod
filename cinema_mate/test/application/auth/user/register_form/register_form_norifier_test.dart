import 'package:cinema_mate/application/auth/user/register_form/register_form_norifier.dart';
import 'package:cinema_mate/domain/auth/user/auth_failure.dart';
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';
import 'package:cinema_mate/domain/auth/user/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockIAuthRepository extends Mock implements IAuthRepository {}

class FakeEmailAddress extends Fake implements EmailAddress {}

class FakePassword extends Fake implements Password {}

class FakeUsername extends Fake implements Username {}

class FakeFullname extends Fake implements Fullname {}

void main() {
  late MockIAuthRepository mockAuthRepository;
  late RegisterFormNorifier notifier;

  setUpAll(() {
    registerFallbackValue(FakeEmailAddress());
    registerFallbackValue(FakePassword());
    registerFallbackValue(FakeUsername());
    registerFallbackValue(FakeFullname());
  });

  setUp(() {
    mockAuthRepository = MockIAuthRepository();
    notifier = RegisterFormNorifier(mockAuthRepository);
  });

  group('RegisterFormNotifier', () {
    test('initial state is correct', () {
      expect(notifier.testState.isSubmitting, false);
      expect(notifier.testState.showErrorMessages, false);
      expect(notifier.testState.authFailureOrSuccessOption, none());
    });

    test('onEmailChanged updates email and clears errors', () {
      const newEmail = 'test@example.com';
      notifier.onEmailChanged(email: newEmail);

      final emailValue = notifier.testState.emailAddress.value.fold(
        (l) => null,
        (r) => r,
      );

      expect(emailValue, equals(newEmail));
      expect(notifier.testState.authFailureOrSuccessOption, equals(none()));
    });

    test('onPasswordChanged updates password and clears errors', () {
      const newPassword = 'password123';
      notifier.onPasswordChanged(password: newPassword);

      final passwordValue = notifier.testState.password.value.fold(
        (l) => null,
        (r) => r,
      );

      expect(passwordValue, equals(newPassword));
      expect(notifier.testState.authFailureOrSuccessOption, equals(none()));
    });

    test(
        'onRegisterWithEmailAndPasswordPressed with invalid credentials calls repository and sets state on failure',
        () async {
      when(() => mockAuthRepository.registerWithEmailAndPassword(
                email: any(named: 'email'),
                password: any(named: 'password'),
                username: any(named: 'username'),
                fullname: any(named: 'fullname'),
              ))
          .thenAnswer(
              (_) async => const Left(AuthFailure.invalidEmailOrPassword()));

      notifier.onEmailChanged(email: 'test@example.com');
      notifier.onPasswordChanged(password: 'password123');
      notifier.onUserNameChnaged(userName: 'testuser');
      notifier.onFullNameChnaged(fullName: 'Test User');
      await notifier.onRegisterWithEmailAndPasswordPressed();

      expect(notifier.testState.isSubmitting, equals(false));
      expect(notifier.testState.showErrorMessages, equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption.isSome(), equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption.fold(
            () => null,
            (result) => result,
          ),
          equals(left(const AuthFailure.invalidEmailOrPassword())));
    });

    test(
        'onRegisterWithEmailAndPasswordPressed with valid credentials '
        'calls repository and sets state on success', () async {
      when(() => mockAuthRepository.registerWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
            username: any(named: 'username'),
            fullname: any(named: 'fullname'),
          )).thenAnswer((_) async => const Right(unit));

      notifier.onEmailChanged(email: 'test@example.com');
      notifier.onPasswordChanged(password: 'password123');
      notifier.onUserNameChnaged(userName: 'testuser');
      notifier.onFullNameChnaged(fullName: 'Test User');

      await notifier.onRegisterWithEmailAndPasswordPressed();

      expect(notifier.testState.isSubmitting, equals(false));
      expect(notifier.testState.showErrorMessages, equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption.isSome(), equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption
              .getOrElse(() => const Left(
                    AuthFailure.invalidEmailOrPassword(),
                  )),
          equals(const Right(unit)));
    });
  });
}
