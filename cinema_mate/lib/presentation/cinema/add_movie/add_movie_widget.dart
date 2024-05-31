import 'dart:io';

import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_provider.dart';
import 'package:cinema_mate/application/cinema/cinema_movie/add_movie/add_movie_state.dart';
import 'package:cinema_mate/presentation/core/widgets/app_color.dart';
import 'package:cinema_mate/presentation/core/widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

var newColor = AppColor();
final ImagePicker _picker = ImagePicker();

class AddMovieWidget extends ConsumerWidget {
  const AddMovieWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addMovieNotifier = ref.read(addMovieProvider.notifier);
    final addMovieState = ref.watch(addMovieProvider);

    ref.listen<AddMovieState>(addMovieProvider, (previous, next) {
      next.addFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failuer) => {},
          (either) {
            addMovieNotifier.onInitialized();

            return const ScaffoldMessenger(
              child: SnackBar(
                content: Text('Movie Added SuccessFully'),
              ),
            );
          },
        ),
      );
    });

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 80, // adjust as needed
                backgroundColor: Colors.grey[200], // default background color
                backgroundImage: addMovieState.image != null
                    ? FileImage(addMovieState.image!)
                    : null,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25, // adjust as needed
                    child: IconButton(
                      icon: Icon(
                        Icons.add_a_photo,
                        color: newColor.primary,
                      ),
                      onPressed: () async {
                        final pickedFile = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (pickedFile != null) {
                          final File file = File(pickedFile.path);
                          addMovieNotifier.onImageChanged(imagePath: file);
                        }
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onChanged: (value) {
                  addMovieNotifier.onTitleChanged(title: value);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'number of seats',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onChanged: (value) {
                  addMovieNotifier.onNumberOdSeatesChanged(
                      numberOfSeats: int.parse(value));
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Genre',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onChanged: (value) {
                  addMovieNotifier.onGenreChanged(value);
                },
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    children: [
                      const Text('Pick a date',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text(
                        addMovieState.date.value.fold(
                          (l) =>
                              'DD/MM/YY', // Display 'DD/MM/YY' if there's an error
                          (r) =>
                              '${r.day}/${r.month}/${r.year}', // Display the date if it's successful
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.black,
                    child: IconButton(
                      icon: const Icon(Icons.calendar_month,
                          size: 30, color: Colors.red),
                      onPressed: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null) {
                          addMovieNotifier.onDateChanged(date: pickedDate);
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Text('Pick a time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          const SizedBox(height: 2),
                          Text(
                            addMovieState.time.value.fold(
                              (l) =>
                                  'DD/MM/YY', // Display 'DD/MM/YY' if there's an error
                              (r) =>
                                  '${r.hour}:${r.minute}', // Display the date if it's successful
                            ),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.access_time, color: Colors.red),
                        onPressed: () async {
                          final TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (pickedTime != null) {
                            addMovieNotifier.onTimeChanged(time: pickedTime);
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
              AppButton(
                title: 'Add Movie',
                width: 300,
                onPressed: () {
                  addMovieNotifier.onAddMoviePressed();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
