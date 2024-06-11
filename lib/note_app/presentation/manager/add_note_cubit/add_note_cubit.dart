import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import '../../../models/note_model.dart';
part 'add_note_state.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  void addNote(NoteModel note){
    emit(AddNoteLoading());
    try{
      var noteBox=Hive.box<NoteModel>(KnotesBox);
      noteBox.add(note);
      emit(AddNoteSucess());

    }catch (e){
      emit(AddNoteError(e.toString()));
    }

  }
}
