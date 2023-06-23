

const Duration defaultDuration = Duration(milliseconds: 1300);
const Duration defaultDurationF = Duration(milliseconds: 800);
const Duration defaultDurationVF = Duration(milliseconds: 400);
const Duration defaultDurationS = Duration(milliseconds: 1500);
const Duration defaultDurationVS = Duration(milliseconds: 3000);

Future defaultDelay() async =>
    Future.delayed(const Duration(milliseconds: 800));
Future defaultDelayVF() async =>
    Future.delayed(const Duration(milliseconds: 30));
