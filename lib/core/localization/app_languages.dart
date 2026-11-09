/// Language definition representing an officially supported language in Bloomi.
class AppLanguage {
  final String code;
  final String name;
  final String nativeName;
  final String region;
  final String badge;
  final bool isRTL;

  const AppLanguage({
    required this.code,
    required this.name,
    required this.nativeName,
    required this.region,
    required this.badge,
    this.isRTL = false,
  });

  /// Check whether a language code uses Right-to-Left (RTL) text direction.
  static bool isRtlCode(String code) {
    const rtlCodes = {'ar', 'ur', 'he', 'fa', 'sd', 'ks', 'ps', 'yi', 'ku', 'ug', 'dv'};
    return rtlCodes.contains(code.toLowerCase());
  }

  /// Get languages associated with a given country code or name,
  /// placing the most relevant local languages first, followed by English.
  static List<AppLanguage> getLanguagesForCountry(String countryName, String countryCode) {
    final code = countryCode.toUpperCase();
    final name = countryName.toLowerCase();

    // 1. India
    if (code == 'IN' || name.contains('india')) {
      return supportedLanguages.where((l) {
        return l.region.toLowerCase().contains('india') || l.code == 'en';
      }).toList();
    }

    // 2. United States
    if (code == 'US' || name.contains('united states') || name.contains('usa')) {
      return supportedLanguages.where((l) {
        return l.code == 'en' || l.code == 'es' || l.code == 'nv' || l.code == 'chr';
      }).toList();
    }

    // 3. United Kingdom
    if (code == 'GB' || name.contains('united kingdom') || name.contains('britain')) {
      return supportedLanguages.where((l) {
        return l.code == 'en' || l.code == 'cy' || l.code == 'gd' || l.code == 'ga';
      }).toList();
    }

    // 4. Canada
    if (code == 'CA' || name.contains('canada')) {
      return supportedLanguages.where((l) {
        return l.code == 'en' || l.code == 'fr' || l.code == 'iu' || l.code == 'oj' || l.code == 'cr';
      }).toList();
    }

    // 5. Germany & Austria
    if (code == 'DE' || code == 'AT' || name.contains('germany') || name.contains('austria')) {
      return supportedLanguages.where((l) => l.code == 'de' || l.code == 'en').toList();
    }

    // 6. France
    if (code == 'FR' || name.contains('france')) {
      return supportedLanguages.where((l) {
        return l.code == 'fr' || l.code == 'br' || l.code == 'oc' || l.code == 'co' || l.code == 'en';
      }).toList();
    }

    // 7. Spain
    if (code == 'ES' || name.contains('spain')) {
      return supportedLanguages.where((l) {
        return l.code == 'es' || l.code == 'ca' || l.code == 'eu' || l.code == 'gl' || l.code == 'en';
      }).toList();
    }

    // 8. Italy
    if (code == 'IT' || name.contains('italy')) {
      return supportedLanguages.where((l) {
        return l.code == 'it' || l.code == 'sc' || l.code == 'fur' || l.code == 'lij' || l.code == 'vec' || l.code == 'en';
      }).toList();
    }

    // 9. Brazil & Portugal
    if (code == 'BR' || code == 'PT' || name.contains('brazil') || name.contains('portugal')) {
      return supportedLanguages.where((l) => l.code == 'pt' || l.code == 'en').toList();
    }

    // 10. Japan
    if (code == 'JP' || name.contains('japan')) {
      return supportedLanguages.where((l) => l.code == 'ja' || l.code == 'en').toList();
    }

    // 11. China & Taiwan
    if (code == 'CN' || code == 'TW' || code == 'HK' || name.contains('china') || name.contains('taiwan')) {
      return supportedLanguages.where((l) => l.code.startsWith('zh') || l.code == 'bo' || l.code == 'ug' || l.code == 'en').toList();
    }

    // 12. Indonesia
    if (code == 'ID' || name.contains('indonesia')) {
      return supportedLanguages.where((l) => l.code == 'id' || l.code == 'jv' || l.code == 'su' || l.code == 'en').toList();
    }

    // 13. Pakistan
    if (code == 'PK' || name.contains('pakistan')) {
      return supportedLanguages.where((l) => l.code == 'ur' || l.code == 'pa' || l.code == 'sd' || l.code == 'ps' || l.code == 'en').toList();
    }

    // 14. Bangladesh
    if (code == 'BD' || name.contains('bangladesh')) {
      return supportedLanguages.where((l) => l.code == 'bn' || l.code == 'en').toList();
    }

    // 15. Philippines
    if (code == 'PH' || name.contains('philippines')) {
      return supportedLanguages.where((l) {
        return l.code == 'fil' || l.code == 'ceb' || l.code == 'ilo' || l.code == 'war' ||
               l.code == 'pam' || l.code == 'bcl' || l.code == 'hil' || l.code == 'pag' || l.code == 'en';
      }).toList();
    }

    // 16. Nigeria
    if (code == 'NG' || name.contains('nigeria')) {
      return supportedLanguages.where((l) => l.code == 'yo' || l.code == 'ig' || l.code == 'ha' || l.code == 'en').toList();
    }

    // 17. South Africa
    if (code == 'ZA' || name.contains('south africa')) {
      return supportedLanguages.where((l) {
        return l.code == 'zu' || l.code == 'xh' || l.code == 'af' || l.code == 'st' ||
               l.code == 'ts' || l.code == 'tn' || l.code == 've' || l.code == 'ss' || l.code == 'nr' || l.code == 'en';
      }).toList();
    }

    // 18. Russia
    if (code == 'RU' || name.contains('russia')) {
      return supportedLanguages.where((l) {
        return l.code == 'ru' || l.code == 'tt' || l.code == 'ba' || l.code == 'cv' ||
               l.code == 'sah' || l.code == 'tyv' || l.code == 'bua' || l.code == 'ce' || l.code == 'av' || l.code == 'os' || l.code == 'en';
      }).toList();
    }

    // 19. Arab World / Middle East
    const arabCodes = {'SA', 'AE', 'EG', 'IQ', 'JO', 'LB', 'KW', 'QA', 'OM', 'BH', 'YE'};
    if (arabCodes.contains(code) || name.contains('arab') || name.contains('emirates') || name.contains('egypt')) {
      return supportedLanguages.where((l) => l.code == 'ar' || l.code == 'en').toList();
    }

    // 20. Generic fallback matching region string
    final matches = supportedLanguages.where((l) {
      return l.region.toLowerCase().contains(name);
    }).toList();

    if (matches.isNotEmpty) {
      if (!matches.any((l) => l.code == 'en')) {
        final en = supportedLanguages.firstWhere((l) => l.code == 'en');
        matches.insert(0, en);
      }
      return matches;
    }

    // Default global top languages if unmapped
    return [
      supportedLanguages.firstWhere((l) => l.code == 'en'),
      supportedLanguages.firstWhere((l) => l.code == 'hi'),
      supportedLanguages.firstWhere((l) => l.code == 'es'),
      supportedLanguages.firstWhere((l) => l.code == 'fr'),
      supportedLanguages.firstWhere((l) => l.code == 'ar'),
      supportedLanguages.firstWhere((l) => l.code == 'zh-CN'),
    ];
  }

  /// Complete list of 150+ supported languages including:
  /// - All 22 Scheduled Indian languages
  /// - Hinglish (Conversational Hindi in Latin script)
  /// - Non-scheduled regional Indian languages
  /// - Major languages across all world countries and continents
  static const List<AppLanguage> supportedLanguages = [
    // ----------------------------------------------------
    // POPULAR & HIGHLIGHTED INDIAN & CONVERSATIONAL
    // ----------------------------------------------------
    AppLanguage(code: 'en', name: 'English', nativeName: 'English (Global)', region: 'International', badge: 'EN'),
    AppLanguage(code: 'en_IN', name: 'Hinglish', nativeName: 'Conversational Mix (Latin script)', region: 'India', badge: 'MIX'),
    AppLanguage(code: 'hi', name: 'Hindi', nativeName: 'हिन्दी', region: 'India', badge: 'HI'),
    AppLanguage(code: 'bn', name: 'Bengali', nativeName: 'বাংলা', region: 'India & Bangladesh', badge: 'BN'),
    AppLanguage(code: 'te', name: 'Telugu', nativeName: 'తెలుగు', region: 'India (Andhra & Telangana)', badge: 'TE'),
    AppLanguage(code: 'mr', name: 'Marathi', nativeName: 'मराठी', region: 'India (Maharashtra)', badge: 'MR'),
    AppLanguage(code: 'ta', name: 'Tamil', nativeName: 'தமிழ்', region: 'India & Sri Lanka', badge: 'TA'),
    AppLanguage(code: 'ur', name: 'Urdu', nativeName: 'اردو', region: 'India & Pakistan', badge: 'UR', isRTL: true),
    AppLanguage(code: 'gu', name: 'Gujarati', nativeName: 'ગુજરાતી', region: 'India (Gujarat)', badge: 'GU'),
    AppLanguage(code: 'kn', name: 'Kannada', nativeName: 'ಕನ್ನಡ', region: 'India (Karnataka)', badge: 'KN'),
    AppLanguage(code: 'or', name: 'Odia', nativeName: 'ଓଡ଼ିଆ', region: 'India (Odisha)', badge: 'OR'),
    AppLanguage(code: 'ml', name: 'Malayalam', nativeName: 'മലയാളം', region: 'India (Kerala)', badge: 'ML'),
    AppLanguage(code: 'pa', name: 'Punjabi', nativeName: 'ਪੰਜਾਬੀ', region: 'India & Pakistan', badge: 'PA'),
    AppLanguage(code: 'as', name: 'Assamese', nativeName: 'অসমীয়া', region: 'India (Assam)', badge: 'AS'),
    AppLanguage(code: 'mai', name: 'Maithili', nativeName: 'मैथिली', region: 'India (Bihar) & Nepal', badge: 'MAI'),
    AppLanguage(code: 'sa', name: 'Sanskrit', nativeName: 'संस्कृतम्', region: 'India', badge: 'SA'),
    AppLanguage(code: 'kok', name: 'Konkani', nativeName: 'कोंकणी', region: 'India (Goa & Maharashtra)', badge: 'KOK'),
    AppLanguage(code: 'ne', name: 'Nepali', nativeName: 'नेपाली', region: 'India (Sikkim) & Nepal', badge: 'NE'),
    AppLanguage(code: 'sd', name: 'Sindhi', nativeName: 'سنڌي', region: 'India & Pakistan', badge: 'SD', isRTL: true),
    AppLanguage(code: 'ks', name: 'Kashmiri', nativeName: 'کٲشُر', region: 'India (Jammu & Kashmir)', badge: 'KS', isRTL: true),
    AppLanguage(code: 'doi', name: 'Dogri', nativeName: 'डोगरी', region: 'India (Jammu)', badge: 'DOI'),
    AppLanguage(code: 'mni', name: 'Manipuri', nativeName: 'মৈতৈলোন্ (Meitei)', region: 'India (Manipur)', badge: 'MNI'),
    AppLanguage(code: 'brx', name: 'Bodo', nativeName: 'बड़ो', region: 'India (Assam)', badge: 'BRX'),
    AppLanguage(code: 'sat', name: 'Santali', nativeName: 'ᱥᱟᱱᱛᱟᱲᱤ', region: 'India (Jharkhand & Bengal)', badge: 'SAT'),

    // ----------------------------------------------------
    // ADDITIONAL INDIAN REGIONAL LANGUAGES
    // ----------------------------------------------------
    AppLanguage(code: 'bho', name: 'Bhojpuri', nativeName: 'भोजपुरी', region: 'India (UP & Bihar)', badge: 'BHO'),
    AppLanguage(code: 'raj', name: 'Rajasthani', nativeName: 'राजस्थानी', region: 'India (Rajasthan)', badge: 'RAJ'),
    AppLanguage(code: 'hne', name: 'Chhattisgarhi', nativeName: 'छत्तीसगढ़ी', region: 'India (Chhattisgarh)', badge: 'HNE'),
    AppLanguage(code: 'bgc', name: 'Haryanvi', nativeName: 'हरियाणवी', region: 'India (Haryana)', badge: 'BGC'),
    AppLanguage(code: 'mag', name: 'Magahi', nativeName: 'मगही', region: 'India (Bihar)', badge: 'MAG'),
    AppLanguage(code: 'mwr', name: 'Marwari', nativeName: 'मारवाड़ी', region: 'India (Rajasthan)', badge: 'MWR'),
    AppLanguage(code: 'awa', name: 'Awadhi', nativeName: 'अवधी', region: 'India (Uttar Pradesh)', badge: 'AWA'),
    AppLanguage(code: 'tcy', name: 'Tulu', nativeName: 'ತುಳು', region: 'India (Karnataka & Kerala)', badge: 'TCY'),
    AppLanguage(code: 'gbm', name: 'Garhwali', nativeName: 'गढ़वाली', region: 'India (Uttarakhand)', badge: 'GBM'),
    AppLanguage(code: 'kfy', name: 'Kumaoni', nativeName: 'कुमाऊँनी', region: 'India (Uttarakhand)', badge: 'KFY'),
    AppLanguage(code: 'kha', name: 'Khasi', nativeName: 'Khasi', region: 'India (Meghalaya)', badge: 'KHA'),
    AppLanguage(code: 'grt', name: 'Garo', nativeName: 'A·chik', region: 'India (Meghalaya)', badge: 'GRT'),
    AppLanguage(code: 'lus', name: 'Mizo', nativeName: 'Mizo ṭawng', region: 'India (Mizoram)', badge: 'LUS'),
    AppLanguage(code: 'trp', name: 'Kokborok', nativeName: 'Kokborok', region: 'India (Tripura)', badge: 'TRP'),
    AppLanguage(code: 'lbj', name: 'Ladakhi', nativeName: 'ལ་དྭགས་སྐད་', region: 'India (Ladakh)', badge: 'LBJ'),
    AppLanguage(code: 'new', name: 'Newari', nativeName: 'नेपाल भाषा', region: 'India & Nepal', badge: 'NEW'),

    // ----------------------------------------------------
    // ASIA & PACIFIC
    // ----------------------------------------------------
    AppLanguage(code: 'zh-CN', name: 'Chinese (Simplified)', nativeName: '简体中文', region: 'China & Singapore', badge: 'ZH'),
    AppLanguage(code: 'zh-TW', name: 'Chinese (Traditional)', nativeName: '繁體中文', region: 'Taiwan & Hong Kong', badge: 'ZHT'),
    AppLanguage(code: 'ja', name: 'Japanese', nativeName: '日本語', region: 'Japan', badge: 'JA'),
    AppLanguage(code: 'ko', name: 'Korean', nativeName: '한국어', region: 'South Korea', badge: 'KO'),
    AppLanguage(code: 'vi', name: 'Vietnamese', nativeName: 'Tiếng Việt', region: 'Vietnam', badge: 'VI'),
    AppLanguage(code: 'th', name: 'Thai', nativeName: 'ไทย', region: 'Thailand', badge: 'TH'),
    AppLanguage(code: 'id', name: 'Indonesian', nativeName: 'Bahasa Indonesia', region: 'Indonesia', badge: 'ID'),
    AppLanguage(code: 'ms', name: 'Malay', nativeName: 'Bahasa Melayu', region: 'Malaysia & Brunei', badge: 'MS'),
    AppLanguage(code: 'fil', name: 'Filipino / Tagalog', nativeName: 'Wikang Filipino', region: 'Philippines', badge: 'FIL'),
    AppLanguage(code: 'my', name: 'Burmese', nativeName: 'မြန်မာစာ', region: 'Myanmar', badge: 'MY'),
    AppLanguage(code: 'km', name: 'Khmer', nativeName: 'ភាសាខ្មែរ', region: 'Cambodia', badge: 'KM'),
    AppLanguage(code: 'lo', name: 'Lao', nativeName: 'ພາສາລາວ', region: 'Laos', badge: 'LO'),
    AppLanguage(code: 'si', name: 'Sinhala', nativeName: 'සිංහල', region: 'Sri Lanka', badge: 'SI'),
    AppLanguage(code: 'bo', name: 'Tibetan', nativeName: 'བོད་སྐད་', region: 'Tibet', badge: 'BO'),
    AppLanguage(code: 'dz', name: 'Dzongkha', nativeName: 'རྫོང་ཁ', region: 'Bhutan', badge: 'DZ'),
    AppLanguage(code: 'mn', name: 'Mongolian', nativeName: 'Монгол хэл', region: 'Mongolia', badge: 'MN'),
    AppLanguage(code: 'jv', name: 'Javanese', nativeName: 'Basa Jawa', region: 'Indonesia', badge: 'JV'),
    AppLanguage(code: 'su', name: 'Sundanese', nativeName: 'Basa Sunda', region: 'Indonesia', badge: 'SU'),
    AppLanguage(code: 'ceb', name: 'Cebuano', nativeName: 'Sinugboanon', region: 'Philippines', badge: 'CEB'),
    AppLanguage(code: 'ilo', name: 'Ilocano', nativeName: 'Ilokano', region: 'Philippines', badge: 'ILO'),
    AppLanguage(code: 'war', name: 'Waray', nativeName: 'Winaray', region: 'Philippines', badge: 'WAR'),
    AppLanguage(code: 'pam', name: 'Kapampangan', nativeName: 'Kapampangan', region: 'Philippines', badge: 'PAM'),
    AppLanguage(code: 'bcl', name: 'Bikol', nativeName: 'Bikol', region: 'Philippines', badge: 'BCL'),
    AppLanguage(code: 'hil', name: 'Hiligaynon', nativeName: 'Ilonggo', region: 'Philippines', badge: 'HIL'),
    AppLanguage(code: 'pag', name: 'Pangasinan', nativeName: 'Pangasinan', region: 'Philippines', badge: 'PAG'),
    AppLanguage(code: 'hmn', name: 'Hmong', nativeName: 'Hmoob', region: 'Southeast Asia', badge: 'HMN'),
    AppLanguage(code: 'shn', name: 'Shan', nativeName: 'လိၵ်ႈတႆး', region: 'Myanmar', badge: 'SHN'),
    AppLanguage(code: 'ksw', name: 'S\'gaw Karen', nativeName: 'ကညီကျိာ်', region: 'Myanmar & Thailand', badge: 'KSW'),
    AppLanguage(code: 'mnw', name: 'Mon', nativeName: 'ဘာသာမန်', region: 'Myanmar & Thailand', badge: 'MNW'),
    AppLanguage(code: 'mi', name: 'Maori', nativeName: 'Te Reo Māori', region: 'New Zealand', badge: 'MI'),
    AppLanguage(code: 'sm', name: 'Samoan', nativeName: 'Gagana Samoa', region: 'Samoa', badge: 'SM'),
    AppLanguage(code: 'haw', name: 'Hawaiian', nativeName: 'ʻŌlelo Hawaiʻi', region: 'Hawaii', badge: 'HAW'),
    AppLanguage(code: 'fj', name: 'Fijian', nativeName: 'Na Vosa Vakaviti', region: 'Fiji', badge: 'FJ'),
    AppLanguage(code: 'to', name: 'Tongan', nativeName: 'Lea Fakatonga', region: 'Tonga', badge: 'TO'),
    AppLanguage(code: 'tpi', name: 'Tok Pisin', nativeName: 'Tok Pisin', region: 'Papua New Guinea', badge: 'TPI'),
    AppLanguage(code: 'bi', name: 'Bislama', nativeName: 'Bislama', region: 'Vanuatu', badge: 'BI'),
    AppLanguage(code: 'ch', name: 'Chamorro', nativeName: 'Finu\' Chamorro', region: 'Guam & Marianas', badge: 'CH'),
    AppLanguage(code: 'mh', name: 'Marshallese', nativeName: 'Kajin M̧ajeļ', region: 'Marshall Islands', badge: 'MH'),

    // ----------------------------------------------------
    // MIDDLE EAST & CENTRAL ASIA (INCLUDING RTL)
    // ----------------------------------------------------
    AppLanguage(code: 'ar', name: 'Arabic', nativeName: 'العربية', region: 'Middle East & North Africa', badge: 'AR', isRTL: true),
    AppLanguage(code: 'fa', name: 'Persian / Farsi', nativeName: 'فارسی', region: 'Iran & Afghanistan', badge: 'FA', isRTL: true),
    AppLanguage(code: 'he', name: 'Hebrew', nativeName: 'עברית', region: 'Israel', badge: 'HE', isRTL: true),
    AppLanguage(code: 'tr', name: 'Turkish', nativeName: 'Türkçe', region: 'Turkey', badge: 'TR'),
    AppLanguage(code: 'az', name: 'Azerbaijani', nativeName: 'Azərbaycan dili', region: 'Azerbaijan', badge: 'AZ'),
    AppLanguage(code: 'kk', name: 'Kazakh', nativeName: 'Қазақ тілі', region: 'Kazakhstan', badge: 'KK'),
    AppLanguage(code: 'uz', name: 'Uzbek', nativeName: 'Oʻzbekcha', region: 'Uzbekistan', badge: 'UZ'),
    AppLanguage(code: 'tk', name: 'Turkmen', nativeName: 'Türkmençe', region: 'Turkmenistan', badge: 'TK'),
    AppLanguage(code: 'ky', name: 'Kyrgyz', nativeName: 'Кыргызча', region: 'Kyrgyzstan', badge: 'KY'),
    AppLanguage(code: 'tg', name: 'Tajik', nativeName: 'Тоҷикӣ', region: 'Tajikistan', badge: 'TG'),
    AppLanguage(code: 'ps', name: 'Pashto', nativeName: 'پښتو', region: 'Afghanistan & Pakistan', badge: 'PS', isRTL: true),
    AppLanguage(code: 'ku', name: 'Kurdish', nativeName: 'Kurdî / کوردی', region: 'Kurdistan & Iraq', badge: 'KU', isRTL: true),
    AppLanguage(code: 'ug', name: 'Uyghur', nativeName: 'ئۇيغۇرچە', region: 'Xinjiang', badge: 'UG', isRTL: true),
    AppLanguage(code: 'dv', name: 'Dhivehi', nativeName: 'ދިވެހި', region: 'Maldives', badge: 'DV', isRTL: true),
    AppLanguage(code: 'hy', name: 'Armenian', nativeName: 'Հայերեն', region: 'Armenia', badge: 'HY'),
    AppLanguage(code: 'ka', name: 'Georgian', nativeName: 'ქართული', region: 'Georgia', badge: 'KA'),
    AppLanguage(code: 'tt', name: 'Tatar', nativeName: 'Татар теле', region: 'Tatarstan', badge: 'TT'),
    AppLanguage(code: 'ba', name: 'Bashkir', nativeName: 'Башҡорт теле', region: 'Bashkortostan', badge: 'BA'),
    AppLanguage(code: 'cv', name: 'Chuvash', nativeName: 'Чӑвашла', region: 'Chuvashia', badge: 'CV'),
    AppLanguage(code: 'sah', name: 'Sakha / Yakut', nativeName: 'Саха тыла', region: 'Yakutia', badge: 'SAH'),
    AppLanguage(code: 'tyv', name: 'Tuvan', nativeName: 'Тыва дыл', region: 'Tuva', badge: 'TYV'),
    AppLanguage(code: 'bua', name: 'Buryat', nativeName: 'Буряад хэлэн', region: 'Buryatia', badge: 'BUA'),
    AppLanguage(code: 'ce', name: 'Chechen', nativeName: 'Нохчийн мотт', region: 'Chechnya', badge: 'CE'),
    AppLanguage(code: 'av', name: 'Avar', nativeName: 'Авар мацӏ', region: 'Dagestan', badge: 'AV'),
    AppLanguage(code: 'os', name: 'Ossetian', nativeName: 'Ирон ӕвзаг', region: 'Ossetia', badge: 'OS'),

    // ----------------------------------------------------
    // EUROPE
    // ----------------------------------------------------
    AppLanguage(code: 'es', name: 'Spanish', nativeName: 'Español', region: 'Spain & Latin America', badge: 'ES'),
    AppLanguage(code: 'fr', name: 'French', nativeName: 'Français', region: 'France & Canada', badge: 'FR'),
    AppLanguage(code: 'de', name: 'German', nativeName: 'Deutsch', region: 'Germany & Austria', badge: 'DE'),
    AppLanguage(code: 'it', name: 'Italian', nativeName: 'Italiano', region: 'Italy & Switzerland', badge: 'IT'),
    AppLanguage(code: 'pt', name: 'Portuguese', nativeName: 'Português', region: 'Brazil & Portugal', badge: 'PT'),
    AppLanguage(code: 'ru', name: 'Russian', nativeName: 'Русский', region: 'Russia & Eastern Europe', badge: 'RU'),
    AppLanguage(code: 'pl', name: 'Polish', nativeName: 'Polski', region: 'Poland', badge: 'PL'),
    AppLanguage(code: 'uk', name: 'Ukrainian', nativeName: 'Українська', region: 'Ukraine', badge: 'UK'),
    AppLanguage(code: 'nl', name: 'Dutch', nativeName: 'Nederlands', region: 'Netherlands & Belgium', badge: 'NL'),
    AppLanguage(code: 'el', name: 'Greek', nativeName: 'Ελληνικά', region: 'Greece & Cyprus', badge: 'EL'),
    AppLanguage(code: 'cs', name: 'Czech', nativeName: 'Čeština', region: 'Czech Republic', badge: 'CS'),
    AppLanguage(code: 'sv', name: 'Swedish', nativeName: 'Svenska', region: 'Sweden', badge: 'SV'),
    AppLanguage(code: 'hu', name: 'Hungarian', nativeName: 'Magyar', region: 'Hungary', badge: 'HU'),
    AppLanguage(code: 'ro', name: 'Romanian', nativeName: 'Română', region: 'Romania & Moldova', badge: 'RO'),
    AppLanguage(code: 'da', name: 'Danish', nativeName: 'Dansk', region: 'Denmark', badge: 'DA'),
    AppLanguage(code: 'fi', name: 'Finnish', nativeName: 'Suomi', region: 'Finland', badge: 'FI'),
    AppLanguage(code: 'no', name: 'Norwegian', nativeName: 'Norsk', region: 'Norway', badge: 'NO'),
    AppLanguage(code: 'sk', name: 'Slovak', nativeName: 'Slovenčina', region: 'Slovakia', badge: 'SK'),
    AppLanguage(code: 'bg', name: 'Bulgarian', nativeName: 'Български', region: 'Bulgaria', badge: 'BG'),
    AppLanguage(code: 'hr', name: 'Croatian', nativeName: 'Hrvatski', region: 'Croatia', badge: 'HR'),
    AppLanguage(code: 'sr', name: 'Serbian', nativeName: 'Српски / Srpski', region: 'Serbia', badge: 'SR'),
    AppLanguage(code: 'lt', name: 'Lithuanian', nativeName: 'Lietuvių', region: 'Lithuania', badge: 'LT'),
    AppLanguage(code: 'sl', name: 'Slovenian', nativeName: 'Slovenščina', region: 'Slovenia', badge: 'SL'),
    AppLanguage(code: 'lv', name: 'Latvian', nativeName: 'Latviešu', region: 'Latvia', badge: 'LV'),
    AppLanguage(code: 'et', name: 'Estonian', nativeName: 'Eesti', region: 'Estonia', badge: 'ET'),
    AppLanguage(code: 'eu', name: 'Basque', nativeName: 'Euskara', region: 'Spain (Basque)', badge: 'EU'),
    AppLanguage(code: 'ca', name: 'Catalan', nativeName: 'Català', region: 'Spain (Catalonia)', badge: 'CA'),
    AppLanguage(code: 'gl', name: 'Galician', nativeName: 'Galego', region: 'Spain (Galicia)', badge: 'GL'),
    AppLanguage(code: 'ga', name: 'Irish', nativeName: 'Gaeilge', region: 'Ireland', badge: 'GA'),
    AppLanguage(code: 'cy', name: 'Welsh', nativeName: 'Cymraeg', region: 'Wales (UK)', badge: 'CY'),
    AppLanguage(code: 'gd', name: 'Scottish Gaelic', nativeName: 'Gàidhlig', region: 'Scotland (UK)', badge: 'GD'),
    AppLanguage(code: 'is', name: 'Icelandic', nativeName: 'Íslenska', region: 'Iceland', badge: 'IS'),
    AppLanguage(code: 'mt', name: 'Maltese', nativeName: 'Malti', region: 'Malta', badge: 'MT'),
    AppLanguage(code: 'sq', name: 'Albanian', nativeName: 'Shqip', region: 'Albania & Kosovo', badge: 'SQ'),
    AppLanguage(code: 'mk', name: 'Macedonian', nativeName: 'Македонски', region: 'North Macedonia', badge: 'MK'),
    AppLanguage(code: 'bs', name: 'Bosnian', nativeName: 'Bosanski', region: 'Bosnia & Herzegovina', badge: 'BS'),
    AppLanguage(code: 'be', name: 'Belarusian', nativeName: 'Беларуская', region: 'Belarus', badge: 'BE'),
    AppLanguage(code: 'lb', name: 'Luxembourgish', nativeName: 'Lëtzebuergesch', region: 'Luxembourg', badge: 'LB'),
    AppLanguage(code: 'fo', name: 'Faroese', nativeName: 'Føroyskt', region: 'Faroe Islands', badge: 'FO'),
    AppLanguage(code: 'yi', name: 'Yiddish', nativeName: 'ייִדיש', region: 'Europe', badge: 'YI', isRTL: true),
    AppLanguage(code: 'la', name: 'Latin', nativeName: 'Latina', region: 'Vatican & Historical', badge: 'LA'),
    AppLanguage(code: 'eo', name: 'Esperanto', nativeName: 'Esperanto', region: 'International', badge: 'EO'),
    AppLanguage(code: 'br', name: 'Breton', nativeName: 'Brezhoneg', region: 'France (Brittany)', badge: 'BR'),
    AppLanguage(code: 'oc', name: 'Occitan', nativeName: 'Occitan', region: 'France (Occitania)', badge: 'OC'),
    AppLanguage(code: 'co', name: 'Corsican', nativeName: 'Corsu', region: 'France (Corsica)', badge: 'CO'),
    AppLanguage(code: 'rm', name: 'Romansh', nativeName: 'Rumantsch', region: 'Switzerland', badge: 'RM'),
    AppLanguage(code: 'fy', name: 'Western Frisian', nativeName: 'Frysk', region: 'Netherlands (Friesland)', badge: 'FY'),
    AppLanguage(code: 'sc', name: 'Sardinian', nativeName: 'Sardu', region: 'Italy (Sardinia)', badge: 'SC'),
    AppLanguage(code: 'fur', name: 'Friulian', nativeName: 'Furlan', region: 'Italy (Friuli)', badge: 'FUR'),
    AppLanguage(code: 'lij', name: 'Ligurian', nativeName: 'Lìgure', region: 'Italy (Liguria)', badge: 'LIJ'),
    AppLanguage(code: 'vec', name: 'Venetian', nativeName: 'Vèneto', region: 'Italy (Veneto)', badge: 'VEC'),
    AppLanguage(code: 'szl', name: 'Silesian', nativeName: 'Ślōnski', region: 'Poland (Silesia)', badge: 'SZL'),
    AppLanguage(code: 'csb', name: 'Kashubian', nativeName: 'Kaszëbsczi', region: 'Poland (Pomerania)', badge: 'CSB'),

    // ----------------------------------------------------
    // AFRICA
    // ----------------------------------------------------
    AppLanguage(code: 'sw', name: 'Swahili', nativeName: 'Kiswahili', region: 'East Africa (Kenya, Tanzania)', badge: 'SW'),
    AppLanguage(code: 'am', name: 'Amharic', nativeName: 'አማርኛ', region: 'Ethiopia', badge: 'AM'),
    AppLanguage(code: 'yo', name: 'Yoruba', nativeName: 'Èdè Yorùbá', region: 'Nigeria', badge: 'YO'),
    AppLanguage(code: 'ig', name: 'Igbo', nativeName: 'Ásụ̀sụ́ Ìgbò', region: 'Nigeria', badge: 'IG'),
    AppLanguage(code: 'ha', name: 'Hausa', nativeName: 'Harshen Hausa', region: 'Nigeria & Niger', badge: 'HA'),
    AppLanguage(code: 'zu', name: 'Zulu', nativeName: 'isiZulu', region: 'South Africa', badge: 'ZU'),
    AppLanguage(code: 'xh', name: 'Xhosa', nativeName: 'isiXhosa', region: 'South Africa', badge: 'XH'),
    AppLanguage(code: 'af', name: 'Afrikaans', nativeName: 'Afrikaans', region: 'South Africa & Namibia', badge: 'AF'),
    AppLanguage(code: 'so', name: 'Somali', nativeName: 'Soomaaliga', region: 'Somalia', badge: 'SO'),
    AppLanguage(code: 'om', name: 'Oromo', nativeName: 'Afaan Oromoo', region: 'Ethiopia & Kenya', badge: 'OM'),
    AppLanguage(code: 'ti', name: 'Tigrinya', nativeName: 'ትግርኛ', region: 'Eritrea & Ethiopia', badge: 'TI'),
    AppLanguage(code: 'sn', name: 'Shona', nativeName: 'chiShona', region: 'Zimbabwe', badge: 'SN'),
    AppLanguage(code: 'mg', name: 'Malagasy', nativeName: 'Fiteny Malagasy', region: 'Madagascar', badge: 'MG'),
    AppLanguage(code: 'st', name: 'Sesotho', nativeName: 'Sesotho', region: 'Lesotho & South Africa', badge: 'ST'),
    AppLanguage(code: 'rw', name: 'Kinyarwanda', nativeName: 'Ikinyarwanda', region: 'Rwanda', badge: 'RW'),
    AppLanguage(code: 'ny', name: 'Chichewa / Nyanja', nativeName: 'Chichewa', region: 'Malawi & Zambia', badge: 'NY'),
    AppLanguage(code: 'ln', name: 'Lingala', nativeName: 'Lingála', region: 'DR Congo', badge: 'LN'),
    AppLanguage(code: 'wo', name: 'Wolof', nativeName: 'Wolof', region: 'Senegal', badge: 'WO'),
    AppLanguage(code: 'lg', name: 'Luganda', nativeName: 'Oluganda', region: 'Uganda', badge: 'LG'),
    AppLanguage(code: 'ak', name: 'Akan / Twi', nativeName: 'Akan', region: 'Ghana', badge: 'AK'),
    AppLanguage(code: 'bm', name: 'Bambara', nativeName: 'Bamanankan', region: 'Mali', badge: 'BM'),
    AppLanguage(code: 'ff', name: 'Fula / Fulfulde', nativeName: 'Fulfulde', region: 'West Africa', badge: 'FF'),
    AppLanguage(code: 'ee', name: 'Ewe', nativeName: 'Eʋegbe', region: 'Ghana & Togo', badge: 'EE'),
    AppLanguage(code: 'ts', name: 'Tsonga', nativeName: 'Xitsonga', region: 'South Africa & Mozambique', badge: 'TS'),
    AppLanguage(code: 'tn', name: 'Tswana', nativeName: 'Setswana', region: 'Botswana & South Africa', badge: 'TN'),
    AppLanguage(code: 've', name: 'Venda', nativeName: 'Tshivenḓa', region: 'South Africa', badge: 'VE'),
    AppLanguage(code: 'ss', name: 'Swati', nativeName: 'SiSwati', region: 'Eswatini & South Africa', badge: 'SS'),
    AppLanguage(code: 'nr', name: 'Southern Ndebele', nativeName: 'isiNdebele', region: 'South Africa', badge: 'NR'),

    // ----------------------------------------------------
    // AMERICAS & INDIGENOUS
    // ----------------------------------------------------
    AppLanguage(code: 'qu', name: 'Quechua', nativeName: 'Runa Simi', region: 'Peru & Bolivia', badge: 'QU'),
    AppLanguage(code: 'gn', name: 'Guarani', nativeName: 'Avañeʼẽ', region: 'Paraguay & Argentina', badge: 'GN'),
    AppLanguage(code: 'ay', name: 'Aymara', nativeName: 'Aymar aru', region: 'Bolivia & Peru', badge: 'AY'),
    AppLanguage(code: 'nah', name: 'Nahuatl', nativeName: 'Nāhuatl', region: 'Mexico', badge: 'NAH'),
    AppLanguage(code: 'kl', name: 'Greenlandic', nativeName: 'Kalaallisut', region: 'Greenland', badge: 'KL'),
    AppLanguage(code: 'iu', name: 'Inuktitut', nativeName: 'ᐃᓄᒃᑎᑐᑦ', region: 'Canada (Nunavut)', badge: 'IU'),
    AppLanguage(code: 'chr', name: 'Cherokee', nativeName: 'ᏣᎳᎩ (Tsalagi)', region: 'United States', badge: 'CHR'),
    AppLanguage(code: 'nv', name: 'Navajo', nativeName: 'Diné bizaad', region: 'United States', badge: 'NV'),
    AppLanguage(code: 'ht', name: 'Haitian Creole', nativeName: 'Kreyòl Ayisyen', region: 'Haiti', badge: 'HT'),
    AppLanguage(code: 'pap', name: 'Papiamento', nativeName: 'Papiamentu', region: 'Curaçao & Aruba', badge: 'PAP'),
    AppLanguage(code: 'yua', name: 'Yucatec Maya', nativeName: 'Màaya t\'àan', region: 'Mexico & Belize', badge: 'YUA'),
    AppLanguage(code: 'oj', name: 'Ojibwe', nativeName: 'Anishinaabemowin', region: 'Canada & USA', badge: 'OJ'),
    AppLanguage(code: 'cr', name: 'Cree', nativeName: 'Nēhiyawēwin', region: 'Canada', badge: 'CR'),
  ];
}
