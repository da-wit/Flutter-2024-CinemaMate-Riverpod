import 'package:cinema_mate/application/cinema/cinema_profile/change_cinema_name/change_cinema_name_provider.dart';
import 'package:cinema_mate/application/cinema/cinema_profile/change_cinema_name/change_cinema_name_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ChangeCinemaName extends ConsumerWidget {
  const ChangeCinemaName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cinemaChangeNameNotifier =
        ref.read(changeCinemaNameProvider.notifier);
    final cinemaChangeNameState = ref.watch(changeCinemaNameProvider);

    ref.listen<ChangeCinemaNameState>(changeCinemaNameProvider,
        (previous, next) {
      next.maybeMap(changeCinemaName: (state) {
        state.profileFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            return ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: failure.maybeMap(
                  serverError: (_) => const Text('Server Error'),
                  orElse: () {
                    return const Text('Something is went wrong');
                  },
                ),
              ),
            );
          }, (unit) {
            context.go('/cinema/home');
            return ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Cinema Name Changed Successfully'),
              ),
            );
          }),
        );
      }, orElse: () {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Server Error'),
          ),
        );
      });
    });

    return Scaffold(
      appBar: AppBar(
          title: const Text('Change Cinema Name'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/cinema/home');
            },
          )),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Form(
              autovalidateMode: cinemaChangeNameState.map(
                  changeCinemaName: (state) => state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'New Cinema Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onChanged: (value) => cinemaChangeNameNotifier
                        .onChangeCinemaName(cinemaName: value),
                    validator: (_) => cinemaChangeNameState.map(
                      changeCinemaName: (state) => state.cinemaName.value.fold(
                        (failure) => failure.maybeMap(
                          shortUsername: (_) => 'Short Cinema Name',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 224, 67, 56),
                        minimumSize: const Size(180, 60),
                        maximumSize: const Size(200, 90)),
                    onPressed: () {
                      cinemaChangeNameNotifier.onChangeCinemaNameSubmitted();
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
