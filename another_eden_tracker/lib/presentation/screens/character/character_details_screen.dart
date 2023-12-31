import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';

class CharacterDetailsScreen extends StatelessWidget {
  final int id;

  const CharacterDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return _CharacterDetailsView(
      id: id,
    );
  }
}

class _CharacterDetailsView extends StatefulWidget {
  final int id;

  const _CharacterDetailsView({
    required this.id,
  });

  @override
  State<_CharacterDetailsView> createState() => _CharacterDetailsViewState();
}

class _CharacterDetailsViewState extends State<_CharacterDetailsView> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterCubit>().getCharacter(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final String name = context.watch<CharacterCubit>().state.name;

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details about $name'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Datos personales',
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
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text('Nombre'),
            subtitle: Text(name),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
