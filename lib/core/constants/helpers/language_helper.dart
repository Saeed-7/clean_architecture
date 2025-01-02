import 'package:clean_architecture/core/constants/enums/language.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class LanguageHelper {
  LanguageHelper._();

  static Language getEnum(String value) {
    switch (value) {
      case 'ar':
        return Language.ar;
      case 'de':
        return Language.de;
      case 'es':
        return Language.es;
      case 'fr':
        return Language.fr;
      case 'he':
        return Language.he;
      case 'it':
        return Language.it;
      case 'nl':
        return Language.nl;
      case 'no':
        return Language.no;
      case 'pt':
        return Language.pt;
      case 'ru':
        return Language.ru;
      case 'sv':
        return Language.sv;
      case 'ud':
        return Language.ud;
      case 'zh':
        return Language.zh;
      case 'en':
      default:
        return Language.en;
    }
  }

  static String getString(Language input) {
    switch (input) {
      case Language.ar:
        return 'ar';
      case Language.de:
        return 'de';
      case Language.en:
        return 'en';
      case Language.es:
        return 'es';
      case Language.fr:
        return 'fr';
      case Language.he:
        return 'he';
      case Language.it:
        return 'it';
      case Language.nl:
        return 'nl';
      case Language.no:
        return 'no';
      case Language.pt:
        return 'pt';
      case Language.ru:
        return 'ru';
      case Language.sv:
        return 'sv';
      case Language.ud:
        return 'ud';
      case Language.zh:
        return 'zh';
    }
  }
}
