import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class WeaponAddModifyScreen extends StatelessWidget {
  final int? id;

  const WeaponAddModifyScreen({
    super.key,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return _WeaponAddModifyScreen(
      id: id,
    );
  }
}

class _WeaponAddModifyScreen extends StatefulWidget {
  final int? id;

  const _WeaponAddModifyScreen({
    this.id,
  });

  @override
  State<_WeaponAddModifyScreen> createState() => _WeaponAddModifyScreenState();
}

class _WeaponAddModifyScreenState extends State<_WeaponAddModifyScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      context.read<WeaponCubit>().getWeapon(widget.id!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final name = context.watch<WeaponCubit>().state.name;

    return Scaffold(
      appBar: AppBar(
        title: (widget.id == null) ? const Text('Add Weapon') : Text(name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              _WeaponFormView(id: widget.id),
            ],
          ),
        ),
      ),
    );
  }
}

class _WeaponFormView extends StatefulWidget {
  final int? id;

  const _WeaponFormView({
    this.id,
  });

  @override
  State<_WeaponFormView> createState() => _WeaponFormViewState();
}

class _WeaponFormViewState extends State<_WeaponFormView> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.id != null) {
      Future.delayed(const Duration(milliseconds: 500), () {
        String name = context.read<WeaponCubit>().state.name;

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
    final weaponCubit = context.watch<WeaponCubit>();

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
                    Weapon weapon = Weapon()..name = _nameController.text;
                    if (widget.id != null) weapon.id = widget.id;
                    weaponCubit.addWeapon(weapon);
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
