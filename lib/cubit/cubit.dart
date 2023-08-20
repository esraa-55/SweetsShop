import 'package:esraanewsweetmarket/cubit/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitState());
}
