import 'package:get/route_manager.dart';

class LocalizationMessages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
        },
        'de_DE': {
          'hello': 'Hallo',
        },
        'tr_TR': {
          'hello': 'Merhaba',
        }
      };
}
