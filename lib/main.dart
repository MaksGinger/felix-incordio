import 'dart:async';

import 'package:felix_incordio/src/core/utils/logger.dart';
import 'package:felix_incordio/src/feature/app/logic/app_runner.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () => const AppRunner().initializeAndRun(),
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}
