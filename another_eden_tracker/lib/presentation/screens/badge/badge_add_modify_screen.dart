import 'package:flutter/material.dart' hide Badge;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class BadgeAddModifyScreen extends StatelessWidget {
  final int? id;

  const BadgeAddModifyScreen({
    super.key,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return _BadgeAddModifyScreen(
      id: id,
    );
  }
}

class _BadgeAddModifyScreen extends StatefulWidget {
  final int? id;

  const _BadgeAddModifyScreen({
    this.id,
  });

  @override
  State<_BadgeAddModifyScreen> createState() => _BadgeAddModifyScreenState();
}

class _BadgeAddModifyScreenState extends State<_BadgeAddModifyScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      context.read<BadgeCubit>().getBadge(widget.id!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final name = context.watch<BadgeCubit>().state.name;

    return Scaffold(
      appBar: AppBar(
        title: (widget.id == null) ? const Text('Add Badge') : Text(name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              _BadgeFormView(id: widget.id),
            ],
          ),
        ),
      ),
    );
  }
}

class _BadgeFormView extends StatefulWidget {
  final int? id;

  const _BadgeFormView({
    this.id,
  });

  @override
  State<_BadgeFormView> createState() => _BadgeFormViewState();
}

class _BadgeFormViewState extends State<_BadgeFormView> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.id != null) {
      Future.delayed(const Duration(milliseconds: 500), () {
        String name = context.read<BadgeCubit>().state.name;

        _nameController.text = name;
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _clearForm() {
    _nameController.clear();
  }

  String? _validate(String? value) {
    if (value == null) return 'Cannot be empty';
    if (value.trim().isEmpty) return 'Cannot be empty';
    if (value.trim().length < 3) return 'Must have at least 3 characters';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final badgeCubit = context.watch<BadgeCubit>();

    return Form(
      key: _keyForm,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _nameController,
            label: 'Nombre',
            hintText: 'Agregue el nombre',
            icon: Icons.person,
            validator: _validate,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  bool isValid = _keyForm.currentState!.validate();
                  if (isValid) {
                    Badge badge = Badge()..name = _nameController.text;
                    if (widget.id != null) badge.id = widget.id;
                    badgeCubit.addBadge(badge);
                    _clearForm();
                    context.pop();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.save),
                      const SizedBox(
                        width: 10,
                      ),
                      Text((widget.id == null) ? 'Guardar' : 'Modificar')
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
