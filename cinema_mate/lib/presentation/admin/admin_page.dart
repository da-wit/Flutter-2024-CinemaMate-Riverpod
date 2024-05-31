import 'package:cinema_mate/application/admin/accounts_actor/admin_account_actor_provider.dart';
import 'package:cinema_mate/application/admin/accounts_actor/admin_account_actor_state.dart';
import 'package:cinema_mate/application/admin/accounts_watcher/admin_account_watcher_provider.dart';
import 'package:cinema_mate/application/admin/accounts_watcher/admin_account_watcher_state.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPage extends ConsumerWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adminAccountWatcherNotifier =
        ref.read(adminAccountWatcherProvider.notifier);
    final adminAccountWatcherState = ref.watch(adminAccountWatcherProvider);

    final adminAccountActorNotifier =
        ref.watch(adminAccountActorProvider.notifier);

    ref.listen<AdminAccountsActorState>(adminAccountActorProvider,
        (previous, next) {
      next.maybeMap(suspendSuccess: (_) {}, orElse: () {});
    });

    Color userButtonColor = Colors.white;
    Color userTextColor = Colors.black;

    Color cinemaButtonColor = Colors.white;
    Color cinemaTextColor = Colors.black;

    if (adminAccountWatcherState is UserLoadSuccess) {
      userButtonColor = Colors.red;
      userTextColor = Colors.white;
    } else if (adminAccountWatcherState is CinemaLoadSuccess) {
      cinemaButtonColor = Colors.red;
      cinemaTextColor = Colors.white;
    }
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.go('/registration');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'CinemaMate',
            style: GoogleFonts.josefinSans(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Welcome Admin',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                title: 'Users',
                width: 150,
                onPressed: () {
                  adminAccountWatcherNotifier.onWatchUserAccoountsStarted();
                },
                buttonColor: userButtonColor,
                textColor: userTextColor,
              ),
              const SizedBox(width: 10),
              AppButton(
                title: 'Cinemas',
                width: 150,
                buttonColor: cinemaButtonColor,
                textColor: cinemaTextColor,
                onPressed: () {
                  adminAccountWatcherNotifier.onWatchCinemaAccountsStarted();
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: ListView.builder(
                itemCount: adminAccountWatcherState.maybeMap(
                  userLoadSuccess: (state) =>
                      state.failureOrUsers.fold((l) => 0, (r) => r.length),
                  cinemaLoadSuccess: (state) =>
                      state.failureOrCinemas.fold((l) => 0, (r) => r.length),
                  orElse: () => 0,
                ),
                itemBuilder: (context, index) {
                  return adminAccountWatcherState.map(
                    initial: (_) => const SizedBox.shrink(),
                    loading: (_) => const CircularProgressIndicator(),
                    userLoadSuccess: (state) => state.failureOrUsers.fold(
                      (l) => Text('User load failure: ${l.toString()}'),
                      (r) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  r[index].username.getOrCrash(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Text(r[index].email.getOrCrash()),
                                const SizedBox(height: 5),
                                const Divider(
                                  color: Colors.black,
                                )
                              ],
                            ),
                            const Spacer(),
                            if (r[index].isSuspended)
                              ElevatedButton(
                                onPressed: () {
                                  adminAccountActorNotifier.onUserUnSuspended(
                                      userId: r[index].id.toString());
                                  Future.delayed(
                                          const Duration(milliseconds: 500))
                                      .then((_) {
                                    adminAccountWatcherNotifier
                                        .onWatchUserAccoountsStarted();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF4CAF50),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text('Activate'),
                              )
                            else
                              ElevatedButton(
                                onPressed: () {
                                  adminAccountActorNotifier.onUserSuspended(
                                      userId: r[index].id.toString());
                                  Future.delayed(
                                          const Duration(milliseconds: 500))
                                      .then((_) {
                                    adminAccountWatcherNotifier
                                        .onWatchUserAccoountsStarted();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFFF9800),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text('Suspend'),
                              ),
                            const SizedBox(width: 10),
                            IconButton(
                              onPressed: () {
                                adminAccountActorNotifier.onUserDeleted(
                                    userId: r[index].id.toString());
                                Future.delayed(
                                        const Duration(milliseconds: 500))
                                    .then((_) {
                                  adminAccountWatcherNotifier
                                      .onWatchUserAccoountsStarted();
                                });
                              },
                              icon: const Icon(Icons.delete),
                            )
                          ],
                        );
                      },
                    ),
                    cinemaLoadSuccess: (state) => state.failureOrCinemas.fold(
                      (l) => Text('Cinema load failure: ${l.toString()}'),
                      (r) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  r[index].cinemaName.getOrCrash(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                Text(r[index].email.getOrCrash()),
                                const SizedBox(height: 5),
                                const Divider(
                                  color: Colors.black,
                                )
                              ],
                            ),
                            const Spacer(),
                            if (r[index].isSuspended)
                              ElevatedButton(
                                onPressed: () {
                                  adminAccountActorNotifier.onCinemaUnSuspended(
                                      cinemaId: r[index].id.toString());
                                  Future.delayed(
                                          const Duration(milliseconds: 500))
                                      .then((_) {
                                    adminAccountWatcherNotifier
                                        .onWatchCinemaAccountsStarted();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF4CAF50),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text('Activate'),
                              )
                            else
                              ElevatedButton(
                                onPressed: () {
                                  adminAccountActorNotifier.onCinemaSuspended(
                                      cinemaId: r[index].id.toString());
                                  Future.delayed(
                                          const Duration(milliseconds: 500))
                                      .then((_) {
                                    adminAccountWatcherNotifier
                                        .onWatchCinemaAccountsStarted();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFFF9800),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text('Suspend'),
                              ),
                            const SizedBox(width: 10),
                            IconButton(
                              onPressed: () {
                                adminAccountActorNotifier.onCinemaDeleted(
                                    cinemaId: r[index].id.toString());

                                Future.delayed(
                                        const Duration(milliseconds: 500))
                                    .then((_) {
                                  adminAccountWatcherNotifier
                                      .onWatchCinemaAccountsStarted();
                                });
                              },
                              icon: const Icon(Icons.delete),
                            )
                          ],
                        );
                      },
                    ),
                    loadFailure: (_) => const Text('Load failure'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
