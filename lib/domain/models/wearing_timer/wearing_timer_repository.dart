import './wearing_timer.dart';

/// 今の所1つしか値を保存しない(履歴は考慮しない)
abstract class WearingTimerRepository {
  /// find WearingTimer from repository
  Future<WearingTimer?> find();

  /// Save WearingTimer to repository
  Future<bool> save(WearingTimer wb);

  /// remove WearingTimer to repository
  Future<bool> delete();
}
