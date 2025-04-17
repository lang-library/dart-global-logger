import 'package:output/output.dart';
import 'package:global_logger/global_logger.dart';

void main() {
  dump('start!');
  final list = [1, 2, 3];
  $logger.i(list);
}
