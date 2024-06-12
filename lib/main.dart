import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/bloc_observer.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/note_app/presentation/manager/add_note_cubit/add_note_cubit.dart';

import 'note_app/models/note_model.dart';
import 'note_app/presentation/views/notes_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(KnotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer= NoteBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=>AddNoteCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: KprimaryColor)
        ),
        home: NotesView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}



