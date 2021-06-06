import 'package:riverpod/riverpod.dart';

import 'application/wearing_timer/find/find_input_port.dart';
import 'application/wearing_timer/find/find_interactor.dart';
import 'application/wearing_timer/find/find_output_presenter.dart';
import 'application/wearing_timer/register/register_input_port.dart';
import 'application/wearing_timer/register/register_interactor.dart';
import 'application/wearing_timer/register/register_output_presenter.dart';
import 'application/wearing_timer/wearing_timer_controller.dart';
import 'domain/datasources/app_shared_preferences.dart';
import 'domain/models/wearing_timer/wearing_timer_repository.dart';
import 'infrastructure/local/wearing_timer_repository_impl.dart';
import 'ui/timer/timer_view_model.dart';
import 'ui/timer/timer_view_state.dart';

/// No Doc
final appSharedPreferencesProvider =
    Provider<AppSharedPreferences>((ref) => AppSharedPreferences());

/// No Doc
final wearingTimerRepositoryProvider = Provider<WearingTimerRepository>((ref) {
  final dataSource = ref.read(appSharedPreferencesProvider);
  return WearingTimerRepositoryImpl(dataSource: dataSource);
});

/// No Doc
final findOutputPresenterProvider =
    Provider<FindOutputPresenter>((ref) => FindOutputPresenter.initialize());

/// No Doc
final findInteractorProvider = Provider<FindInputPort>((ref) {
  final wearingTimerRepository = ref.read(wearingTimerRepositoryProvider);
  final findOutputPort = ref.read(findOutputPresenterProvider);
  return FindInteractor(
      wbRepository: wearingTimerRepository, findOutputPort: findOutputPort);
});

/// No Doc
final registerOutputPresenterProvider = Provider<RegisterOutputPresenter>(
    (ref) => RegisterOutputPresenter.initialize());

/// No Doc
final registerInteractorProvider = Provider<RegisterInputPort>((ref) {
  final wearingTimerRepository = ref.read(wearingTimerRepositoryProvider);
  final registerOutputPort = ref.read(registerOutputPresenterProvider);
  return RegisterInteractor(
      wbRepository: wearingTimerRepository,
      registerOutputPort: registerOutputPort);
});

/// No Doc
final wearingTimerControllerProvider = Provider<WearingTimerController>((ref) {
  final findInputPort = ref.read(findInteractorProvider);
  final registerInputPort = ref.read(registerInteractorProvider);
  return WearingTimerController(
      findInputPort: findInputPort, registerInputPort: registerInputPort);
});

/// No Doc
final timerViewModelProvider =
    StateNotifierProvider<TimerViewModel, TimerViewState>((ref) {
  final findOutputPresenter = ref.watch(findOutputPresenterProvider);
  final wearingTimerController = ref.read(wearingTimerControllerProvider);
  return TimerViewModel(
      findOutputPresenter: findOutputPresenter,
      wearingTimerController: wearingTimerController);
});
