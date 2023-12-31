import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/infrastructure/database/isar_service.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final isarService = IsarService();

  CharacterCubit() : super(const CharacterState());

  Future<void> addCharacter(Character character) async {
    isarService.addCharacter(character);
  }

  Future<void> getCharacters() async {
    List<Character> characters = await isarService.getCharacters();
    emit(state.copyWith(characters: characters));
  }

  Future<void> getCharacter(int id) async {
    Character? character = await isarService.getCharacter(id);
    if (character == null) return;
    emit(
      state.copyWith(
        id: character.id,
        name: character.name,
        weapon: character.weapon,
        armor: character.armor,
        types: character.types,
        owned: character.owned,
      ),
    );
  }

  Future<void> deleteCharacter(int id) async {
    isarService.deleteCharacter(id);
  }
}
