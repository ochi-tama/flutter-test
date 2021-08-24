import 'package:riverpod/riverpod.dart';

import 'application/wearing_timer/cancel/cancel_interactor.dart';
import 'application/wearing_timer/cancel/interface/cancel_input_port.dart';
import 'application/wearing_timer/find/data/find_presenter_data.dart';
import 'application/wearing_timer/find/find_input_port.dart';
import 'application/wearing_timer/find/find_interactor.dart';
import 'application/wearing_timer/find/find_presenter_notifier.dart';
import 'application/wearing_timer/register/register_input_port.dart';
import 'application/wearing_timer/register/register_interactor.dart';
import 'application/wearing_timer/register/register_output_presenter.dart';
import 'application/wearing_timer/wearing_timer_controller.dart';
import 'domain/datasources/app_shared_preferences.dart';
import 'domain/models/wearing_timer/wearing_timer_repository.dart';
import 'infrastructure/local/wearing_timer_repository_impl.dart';
import 'ui/timer/model/timer_view_model.dart';
import 'ui/timer/model/timer_view_state.dart';
import 'utils/local_notification.dart';
import 'utils/notification_plugin.dart';

/// No Doc
final localNotificationProvider =
    Provider<NotificationPlugin>((ref) => LocalNotification());

/// No Doc
final appSharedPreferencesProvider =
    Provider<AppSharedPreferences>((ref) => AppSharedPreferences());

/// No Doc
final wearingTimerRepositoryProvider = Provider<WearingTimerRepository>((ref) {
  final dataSource = ref.read(appSharedPreferencesProvider);
  return WearingTimerRepositoryImpl(dataSource: dataSource);
});

/// No Doc
final findPresenterNotifierProvider =
    StateNotifierProvider<FindPresenterNotifier, FindPresenterData>(
        (ref) => FindPresenterNotifier());

/// No Doc
final findInteractorProvider = Provider<FindInputPort>((ref) {
  final wearingTimerRepository = ref.read(wearingTimerRepositoryProvider);
  final findOutputPort = ref.read(findPresenterNotifierProvider.notifier);
  return FindInteractor(
      wbRepository: wearingTimerRepository, findOutputPort: findOutputPort);
});

/// No Doc
final registerOutputPresenterProvider = Provider<RegisterOutputPresenter>(
    (ref) => RegisterOutputPresenter.initialize());

/// No Doc
final registerInteractorProvider = Provider<RegisterInputPort>((ref) {
  final wearingTimerRepository = ref.read(wearingTimerRepositoryProvider);
  final registerOutputPort = ref.read(findPresenterNotifierProvider.notifier);
  return RegisterInteractor(
      repository: wearingTimerRepository,
      registerOutputPort: registerOutputPort);
});

/// No Doc
final cancelInteractorProvider = Provider<CancelInputPort>((ref) {
  final wearingTimerRepository = ref.read(wearingTimerRepositoryProvider);
  final findOutputPort = ref.read(findPresenterNotifierProvider.notifier);
  return CancelInteractor(
      repository: wearingTimerRepository, findOutputPort: findOutputPort);
});

/// No Doc
final wearingTimerControllerProvider = Provider<WearingTimerController>((ref) {
  final findInputPort = ref.read(findInteractorProvider);
  final registerInputPort = ref.read(registerInteractorProvider);
  final cancelInputPort = ref.read(cancelInteractorProvider);
  return WearingTimerController(
      findInputPort: findInputPort,
      registerInputPort: registerInputPort,
      cancelInputPort: cancelInputPort);
});

/// No Doc
final timerViewModelProvider =
    StateNotifierProvider<TimerViewModel, TimerViewState>(
        (ref) => TimerViewModel(ref: ref));
