/// enum that holds all the languages options
enum WeatherLangs {
  afrikaans,
  albanian,
  arabic,
  azerbaijani,
  bulgarian,
  catalan,
  czech,
  danish,
  german,
  greek,
  english,
  basque,
  persianFarsi,
  finnish,
  french,
  galician,
  hebrew,
  hindi,
  croatian,
  hungarian,
  indonesian,
  italian,
  japanese,
  korean,
  latvian,
  lithuanian,
  macedonian,
  norwegian,
  dutch,
  polish,
  portuguese,
  portuguesBrasil,
  romanian,
  russian,
  swedish,
  slovak,
  slovenian,
  spanish,
  serbian,
  thai,
  turkish,
  ukrainian,
  vietnamese,
  chineseSimplified,
  chineseTraditional,
  zulu,
}

/// Maps enum [WeatherLangs] to their String languages codes
Map<WeatherLangs, String> weatherLangsString = {
  WeatherLangs.afrikaans: 'af',
  WeatherLangs.albanian: 'al',
  WeatherLangs.arabic: 'ar',
  WeatherLangs.azerbaijani: 'az',
  WeatherLangs.bulgarian: 'bg',
  WeatherLangs.catalan: 'ca',
  WeatherLangs.czech: 'cz',
  WeatherLangs.danish: 'da',
  WeatherLangs.german: 'de',
  WeatherLangs.greek: 'el',
  WeatherLangs.english: 'en',
  WeatherLangs.basque: 'eu',
  WeatherLangs.persianFarsi: 'fa',
  WeatherLangs.french: 'fr',
  WeatherLangs.finnish: 'fi',
  WeatherLangs.galician: 'gl',
  WeatherLangs.hebrew: 'he',
  WeatherLangs.hindi: 'hi',
  WeatherLangs.croatian: 'hr',
  WeatherLangs.hungarian: 'hu',
  WeatherLangs.indonesian: 'id',
  WeatherLangs.italian: 'it',
  WeatherLangs.japanese: 'ja',
  WeatherLangs.korean: 'kr',
  WeatherLangs.latvian: 'la',
  WeatherLangs.lithuanian: 'lt',
  WeatherLangs.macedonian: 'mk',
  WeatherLangs.norwegian: 'no',
  WeatherLangs.dutch: 'nl',
  WeatherLangs.polish: 'pl',
  WeatherLangs.portuguese: 'pt',
  WeatherLangs.portuguesBrasil: 'pt_br',
  WeatherLangs.russian: 'ru',
  WeatherLangs.swedish: 'sv', // or 'se'
  WeatherLangs.slovak: 'sk',
  WeatherLangs.slovenian: 'sv',
  WeatherLangs.spanish: 'sp', //or 'es'
  WeatherLangs.serbian: 'sr',
  WeatherLangs.thai: 'th',
  WeatherLangs.turkish: 'tr',
  WeatherLangs.ukrainian: 'ua', //or 'uk'
  WeatherLangs.vietnamese: 'vi',
  WeatherLangs.chineseSimplified: 'zh_cn',
  WeatherLangs.chineseTraditional: 'zh_tw',
  WeatherLangs.zulu: 'zu',
};

/// Maps all String languages codes to their enum [WeatherLangs]
Map<String, WeatherLangs> weatherLangsStringReversed = Map.fromEntries(
    weatherLangsString.entries.map((e) => MapEntry(e.value, e.key)));
