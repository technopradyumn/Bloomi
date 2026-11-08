import 'package:flutter/foundation.dart';

/// Debug-only logger for Bloomi data integrity and sync operations.
/// All output is automatically stripped in release builds.
class AppLogger {
  AppLogger._();

  /// Logs a database or Drive operation with user ID, operation type, data type, and count.
  static void logOp({
    required String uid,
    required String operation, // 'READ' or 'WRITE'
    required String dataType,
    required int recordCount,
    String? details,
  }) {
    if (!kDebugMode) return;
    final extra = details != null ? ' ($details)' : '';
    debugPrint('[BloomiSync][$operation] uid: $uid | type: $dataType | count: $recordCount$extra');
  }

  /// Logs a critical warning (e.g. write attempted before first pull, empty upload, account mismatch).
  static void warn({
    required String uid,
    required String message,
  }) {
    if (!kDebugMode) return;
    debugPrint('⚠️ [BloomiSync:WARNING] uid: $uid | $message');
  }

  /// Logs a general debug message.
  static void debug(String message) {
    if (!kDebugMode) return;
    debugPrint('[Bloomi] $message');
  }
}

