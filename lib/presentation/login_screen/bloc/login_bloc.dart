// // import 'dart:ffi';
// import 'package:equatable/equatable.dart';
// import '../models/login_model.dart';
// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';

// class LoginBloc extends Bloc<> {
//   LoginBloc() : super(initialState) {
//     on<LoginInitialEvent>(_onInitial);
//     on<ChangeCheckBoxEvent>(_chanCheckBox);
//   }

//   _changeCheckBox(
//     ChangeCheckBoxEvent event,
//     Emittable<LoginState> emit,
//   ) {
//     emit(state.copyWith(
//       // abideByOurTandC: event.value,
//     ));
//   }

//   _onInitialize(
//     LoginInitialEvent event,
//     Emitter<LoginState> emit,
//   ) async {
//     emit(state.copyWith(
//       phoneController: TextEditingController(),
//       abideByOurTandC: false,
//     ));
//   }
// }