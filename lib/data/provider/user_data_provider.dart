import 'package:riverpod/riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../local/user_data.dart';

/// Provider for LocalUserData
final prefsProvider = Provider<UserData>((ref) => UserData());
