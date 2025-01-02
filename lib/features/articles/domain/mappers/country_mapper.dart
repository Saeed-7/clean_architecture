import 'package:clean_architecture/features/articles/domain/entities/country.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

class CountryMapper {
  CountryMapper._();

  static Country mapCountry(String inputCode) {
    switch (inputCode) {
      case "ae":
        return Country(name: "name", code: "ae", flag: "ae.png");
      case "ar":
        return Country(name: "name", code: "ar", flag: "ar.png");
      case "at":
        return Country(name: "name", code: "at", flag: "at.png");
      case "au":
        return Country(name: "name", code: "au", flag: "au.png");
      case "be":
        return Country(name: "name", code: "be", flag: "be.png");
      case "bg":
        return Country(name: "name", code: "bg", flag: "bg.png");
      case "br":
        return Country(name: "name", code: "br", flag: "br.png");
      case "ca":
        return Country(name: "Canada", code: inputCode, flag: "ca.png");
      case "ch":
        return Country(name: "name", code: "ch", flag: "ch.png");
      case "cn":
        return Country(name: "China", code: inputCode, flag: "cn.png");
      case "co":
        return Country(name: "name", code: "co", flag: "co.png");
      case "cu":
        return Country(name: "name", code: "cu", flag: "cu.png");
      case "cz":
        return Country(name: "name", code: "cz", flag: "cz.png");
      case "de":
        return Country(name: "name", code: "de", flag: "de.png");
      case "eg":
        return Country(name: "name", code: "eg", flag: "eg.png");
      case "fr":
        return Country(name: "name", code: "fr", flag: "fr.png");
      case "gb":
        return Country(name: "Great Britain", code: inputCode, flag: "gb.png");
      case "gr":
        return Country(name: "name", code: "gr", flag: "gr.png");
      case "hk":
        return Country(name: "name", code: "hk", flag: "hk.png");
      case "hu":
        return Country(name: "name", code: "hu", flag: "hu.png");
      case "id":
        return Country(name: "name", code: "id", flag: "id.png");
      case "ie":
        return Country(name: "name", code: "ie", flag: "ie.png");
      case "il":
        return Country(name: "name", code: "il", flag: "il.png");
      case "in":
        return Country(name: "name", code: "in", flag: "in.png");
      case "it":
        return Country(name: "name", code: "it", flag: "it.png");
      case "jp":
        return Country(name: "name", code: "jp", flag: "jp.png");
      case "kr":
        return Country(name: "name", code: "kr", flag: "kr.png");
      case "lt":
        return Country(name: "name", code: "lt", flag: "lt.png");
      case "lv":
        return Country(name: "name", code: "lv", flag: "lv.png");
      case "ma":
        return Country(name: "name", code: "ma", flag: "ma.png");
      case "mx":
        return Country(name: "name", code: "mx", flag: "mx.png");
      case "my":
        return Country(name: "name", code: "my", flag: "my.png");
      case "ng":
        return Country(name: "name", code: "ng", flag: "ng.png");
      case "nl":
        return Country(name: "name", code: "nl", flag: "nl.png");
      case "no":
        return Country(name: "name", code: "no", flag: "no.png");
      case "nz":
        return Country(name: "name", code: "nz", flag: "nz.png");
      case "ph":
        return Country(name: "name", code: "ph", flag: "ph.png");
      case "pl":
        return Country(name: "name", code: "pl", flag: "pl.png");
      case "pt":
        return Country(name: "name", code: "pt", flag: "pt.png");
      case "ro":
        return Country(name: "name", code: "ro", flag: "ro.png");
      case "rs":
        return Country(name: "name", code: "rs", flag: "rs.png");
      case "ru":
        return Country(name: "name", code: "ru", flag: "ru.png");
      case "sa":
        return Country(name: "name", code: "sa", flag: "sa.png");
      case "se":
        return Country(name: "name", code: "se", flag: "se.png");
      case "sg":
        return Country(name: "name", code: "sg", flag: "sg.png");
      case "si":
        return Country(name: "name", code: "si", flag: "si.png");
      case "sk":
        return Country(name: "name", code: "sk", flag: "sk.png");
      case "th":
        return Country(name: "name", code: "th", flag: "th.png");
      case "tr":
        return Country(name: "name", code: "tr", flag: "tr.png");
      case "tw":
        return Country(name: "name", code: "tw", flag: "tw.png");
      case "ua":
        return Country(name: "name", code: "ua", flag: "ua.png");
      case "us":
        return Country(name: "United State of America", code: inputCode, flag: "us.png");
      case "ve":
        return Country(name: "name", code: "ve", flag: "ve.png");
      case "za":
        return Country(name: "name", code: "za", flag: "za.png");
      default:
        return Country(name: "Unknown", code: inputCode, flag: "Unknown.png");
    }
  }
}
