import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(86, 102, 15, 10, 8);
  assert(Policy.score(signalcase_1) == 188);
  assert(Policy.classify(signalcase_1) == 'accept');
  const signalcase_2 = Signal(97, 89, 18, 18, 4);
  assert(Policy.score(signalcase_2) == 133);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(67, 79, 27, 16, 6);
  assert(Policy.score(signalcase_3) == 43);
  assert(Policy.classify(signalcase_3) == 'review');
}
