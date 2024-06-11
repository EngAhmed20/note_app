part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}
class AddNoteLoading extends AddNoteState {}
class AddNoteSucess extends AddNoteState {}
class AddNoteError extends AddNoteState {
  final String errMessage;
  AddNoteError(this.errMessage);
}


