import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class CharacterListView extends StatefulWidget {
  const CharacterListView({super.key});

  @override
  State<CharacterListView> createState() => _CharacterListViewState();
}

class _CharacterListViewState extends State<CharacterListView> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterCubit>().getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final characters = context.watch<CharacterCubit>().state.characters;

    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Character list',
                style: TextStyle(
                  fontSize: 22,
                  color: colors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, index) {
              return CustomCard(
                title: '${characters[index].name}',
                elevation: 2,
                onPressedDelete: () {
                  context
                      .read<CharacterCubit>()
                      .deleteCharacter(characters[index].id!)
                      .then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<CharacterCubit>().getCharacters(),
                        ),
                      );
                },
                onPressedEdit: () {
                  context
                      .push('/modify-character/${characters[index].id}')
                      .then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<CharacterCubit>().getCharacters(),
                        ),
                      );
                },
                onPressedView: () {
                  context.push('/character/${characters[index].id}');
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FilledButton.icon(
          onPressed: () {
            context.push('/add-character').then(
                  (value) => Future.delayed(
                    const Duration(milliseconds: 500),
                    () => context.read<CharacterCubit>().getCharacters(),
                  ),
                );
          },
          icon: const Icon(Icons.add),
          label: const Text('Add character'),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
