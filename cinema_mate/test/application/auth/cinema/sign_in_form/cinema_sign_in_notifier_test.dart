import 'package:cinema_mate/application/auth/cinema/sign_in_form/cinema_sign_in_notifier.dart';
import 'package:cinema_mate/domain/auth/cinema/cinema_auth_failure.dart';
import 'package:cinema_mate/domain/auth/cinema/i_cinema_auth_repository.dart';
import 'package:cinema_mate/domain/auth/cinema/value_objects.dart';
import 'package:cinema_mate/domain/auth/user/user_token.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockICinemaAuthRepository extends Mock implements ICinemaAuthRepository {}

class FakeEmailAddress extends Fake implements EmailAddress {}

class FakePassword extends Fake implements Password {}

void main() {
  late MockICinemaAuthRepository mockCinemaAuthRepository;
  late CinemaSignInNotifier notifier;

  setUpAll(() {
    registerFallbackValue(FakeEmailAddress());
    registerFallbackValue(FakePassword());
  });

  setUp(() {
    mockCinemaAuthRepository = MockICinemaAuthRepository();
    notifier = CinemaSignInNotifier(mockCinemaAuthRepository);
  });

  group('SignInFormNotifier', () {
    test('initial state is correct', () {
      expect(notifier.testState.isSubmitting, false);
      expect(notifier.testState.showErrorMessages, false);
      expect(notifier.testState.authFailureOrSuccessOption, none());
    });

    test('onEmailChanged updates email and clears errors', () {
      const newEmail = 'test@example.com';
      notifier.onEmailChanged(email: newEmail);

      final emailValue = notifier.testState.email.value.fold(
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
        'onSignInWithEmailAndPasswordPressed with invalid credentials calls repository and sets state on failure',
        () async {
      when(() => mockCinemaAuthRepository.signInWithEmailAndPassword(
                email: any(named: 'email'),
                password: any(named: 'password'),
              ))
          .thenAnswer((_) async =>
              const Left(CinemaAuthFailure.invalidEmailOrPassword()));

      notifier.onEmailChanged(email: 'test@example.com');
      notifier.onPasswordChanged(password: 'password123');
      await notifier.onSignInWithEmailAndPasswordPressed();

      expect(notifier.testState.isSubmitting, equals(false));
      expect(notifier.testState.showErrorMessages, equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption.isSome(), equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption.fold(
            () => null,
            (result) => result,
          ),
          equals(left(const CinemaAuthFailure.invalidEmailOrPassword())));
    });

    test(
        'onSignInWithEmailAndPasswordPressed with valid credentials '
        'calls repository and sets state on success', () async {
      when(() => mockCinemaAuthRepository.signInWithEmailAndPassword(
                email: any(named: 'email'),
                password: any(named: 'password'),
              ))
          .thenAnswer(
              (_) async => const Right(UserToken(token: "dd;d;d;d;d;")));

      notifier.onEmailChanged(email: 'test@example.com');
      notifier.onPasswordChanged(password: 'password123');

      await notifier.onSignInWithEmailAndPasswordPressed();

      expect(notifier.testState.isSubmitting, equals(false));
      expect(notifier.testState.showErrorMessages, equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption.isSome(), equals(true));
      expect(
          notifier.testState.authFailureOrSuccessOption
              .getOrElse(() => const Left(
                    CinemaAuthFailure.invalidEmailOrPassword(),
                  )),
          equals(const Right(unit)));
    });
  });
}
