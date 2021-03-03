import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/workshop/i_workshop_facade.dart';
import 'package:creatispace/domain/workshop/value_objects.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'workshop_form_event.dart';
part 'workshop_form_state.dart';
part 'workshop_form_bloc.freezed.dart';

@injectable
class WorkshopFormBloc extends Bloc<WorkshopFormEvent, WorkshopFormState> {
  final IWorkshopFacade iWorkshopFacade;

  WorkshopFormBloc(this.iWorkshopFacade) : super(WorkshopFormState.initial());

  @override
  Stream<WorkshopFormState> mapEventToState(
    WorkshopFormEvent event,
  ) async* {
    yield* event.map(
        nameChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(workshopName: WorkshopName(e.name)),
            saveFailureOrSuccessOption: none(),
          );
        },
        descriptionChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(workshopDescription: WorkshopDescription(e.description)),
            saveFailureOrSuccessOption: none(),
          );
        },
        priceChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(workshopPrice: WorkshopPrice(e.price)),
            saveFailureOrSuccessOption: none(),
          );
        },
        durationChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(workshopDuration: WorkshopDuration(e.duration)),
            saveFailureOrSuccessOption: none(),
          );
        },
        dateChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(workshopDate: WorkshopDate(e.date)),
            saveFailureOrSuccessOption: none(),
          );
        },
      timeChanged: (e) async* {
        yield state.copyWith(
          item: state.item.copyWith(workshopTime: WorkshopTime(e.time)),
          saveFailureOrSuccessOption: none(),
        );
      },
        requirementsChanged: (e) async* {
          yield state.copyWith(
            item: state.item.copyWith(workshopRequirements: WorkshopRequirements(e.requirements)),
            saveFailureOrSuccessOption: none(),
          );
        },
        saved: (e) async* {
          Either<WorkshopErrorFailures, Unit> failureOrSuccess;

          yield state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          );

          if (state.item.failureOption.isNone()) {
            failureOrSuccess = await iWorkshopFacade.create(state.item);
          }

          yield state.copyWith(
            isSaving: false,
            showErrorMessages: AutovalidateMode.always,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        },
    );
  }
}
