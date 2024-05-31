import 'package:cinema_mate/application/auth/user/user_auth_state.dart';
import 'package:cinema_mate/domain/auth/user/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:cinema_mate/application/auth/user/user_auth_notifier.dart';
import 'package:cinema_mate/domain/auth/user/i_auth_repository.dart';

class MockIAuthRepository extends Mock implements IAuthRepository {}

class FakeUser extends Fake implements User {}

class FakeIAuthRepository extends Mock implements IAuthRepository {}

void main() {
  late MockIAuthRepository mockAuthRepository;
  late UserAuthNotifier notifier;

  // const id = 1;
  // const username = 'testuser';
  // const email = 'test@example.com';

  setUp(() {
    mockAuthRepository = MockIAuthRepository();
    notifier = UserAuthNotifier(mockAuthRepository);
  });

  group('UserAuthNotifier', () {
    test('initial state is correct', () {
      expect(notifier.testState, equals(const Initial()));
    });

    test(
        'onAuthCheckRequested updates state to authenticated when user is signed in',
        () async {
      when(() => mockAuthRepository.getSignedInUser())
          .thenAnswer((_) async => Some(FakeUser()));

      await notifier.onAuthCheckRequested();

      expect(notifier.testState, equals(const UserAuthState.authenticated()));
    });

    test(
        'onAuthCheckRequested updates state to unauthenticated when user is not signed in',
        () async {
      when(() => mockAuthRepository.getSignedInUser())
          .thenAnswer((_) async => const None());

      await notifier.onAuthCheckRequested();

      expect(notifier.testState, equals(const UserAuthState.unauthenticated()));
    });

    // test('onSignedOut updates state to unauthenticated', () async {
    //   await notifier.onSignedOut();

    //   expect(notifier.testState, equals(const UserAuthState.unauthenticated()));
    // });
    group('UserAuthNotifier', () {
      test('onSignedOut updates state to unauthenticated', () async {
        // Arrange: Mocking signOut() method to return success
        when(() => mockAuthRepository.signOut()).thenAnswer((_) async {});

        // Act: Call onSignedOut() method
        await notifier.onSignedOut();

        // Assert: Expect the state to transition to unauthenticated
        expect(
            notifier.testState, equals(const UserAuthState.unauthenticated()));
      });

      // test('deletedAccount does not change the authenticated state', () async {
      //   when(() => mockAuthRepository.deleteAccount()).thenAnswer((_) async {});

      //   await notifier.deletedAccount();

      //   expect(
      //       notifier.testState, equals(const UserAuthState.unauthenticated()));
      // });
    });
  });
}
