import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_ak.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_av.dart';
import 'app_localizations_awa.dart';
import 'app_localizations_ay.dart';
import 'app_localizations_az.dart';
import 'app_localizations_ba.dart';
import 'app_localizations_bcl.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bgc.dart';
import 'app_localizations_bho.dart';
import 'app_localizations_bi.dart';
import 'app_localizations_bm.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_br.dart';
import 'app_localizations_brx.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_bua.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_ce.dart';
import 'app_localizations_ceb.dart';
import 'app_localizations_ch.dart';
import 'app_localizations_chr.dart';
import 'app_localizations_co.dart';
import 'app_localizations_cr.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_csb.dart';
import 'app_localizations_cv.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_doi.dart';
import 'app_localizations_dv.dart';
import 'app_localizations_dz.dart';
import 'app_localizations_ee.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_ff.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fj.dart';
import 'app_localizations_fo.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_fur.dart';
import 'app_localizations_fy.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gbm.dart';
import 'app_localizations_gd.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gn.dart';
import 'app_localizations_grt.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_haw.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hil.dart';
import 'app_localizations_hmn.dart';
import 'app_localizations_hne.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ig.dart';
import 'app_localizations_ilo.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_iu.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kfy.dart';
import 'app_localizations_kha.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_kl.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_kok.dart';
import 'app_localizations_ks.dart';
import 'app_localizations_ksw.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_la.dart';
import 'app_localizations_lb.dart';
import 'app_localizations_lbj.dart';
import 'app_localizations_lg.dart';
import 'app_localizations_lij.dart';
import 'app_localizations_ln.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lus.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mag.dart';
import 'app_localizations_mai.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_mh.dart';
import 'app_localizations_mi.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mni.dart';
import 'app_localizations_mnw.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_mwr.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nah.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_new.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_nr.dart';
import 'app_localizations_nv.dart';
import 'app_localizations_ny.dart';
import 'app_localizations_oc.dart';
import 'app_localizations_oj.dart';
import 'app_localizations_om.dart';
import 'app_localizations_or.dart';
import 'app_localizations_os.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pag.dart';
import 'app_localizations_pam.dart';
import 'app_localizations_pap.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_qu.dart';
import 'app_localizations_raj.dart';
import 'app_localizations_rm.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_rw.dart';
import 'app_localizations_sa.dart';
import 'app_localizations_sah.dart';
import 'app_localizations_sat.dart';
import 'app_localizations_sc.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_shn.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sm.dart';
import 'app_localizations_sn.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_ss.dart';
import 'app_localizations_st.dart';
import 'app_localizations_su.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_szl.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_tcy.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_th.dart';
import 'app_localizations_ti.dart';
import 'app_localizations_tk.dart';
import 'app_localizations_tn.dart';
import 'app_localizations_to.dart';
import 'app_localizations_tpi.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_trp.dart';
import 'app_localizations_ts.dart';
import 'app_localizations_tt.dart';
import 'app_localizations_tyv.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_ve.dart';
import 'app_localizations_vec.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_war.dart';
import 'app_localizations_wo.dart';
import 'app_localizations_xh.dart';
import 'app_localizations_yi.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_yua.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('ak'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('av'),
    Locale('awa'),
    Locale('ay'),
    Locale('az'),
    Locale('ba'),
    Locale('bcl'),
    Locale('be'),
    Locale('bg'),
    Locale('bgc'),
    Locale('bho'),
    Locale('bi'),
    Locale('bm'),
    Locale('bn'),
    Locale('bo'),
    Locale('br'),
    Locale('brx'),
    Locale('bs'),
    Locale('bua'),
    Locale('ca'),
    Locale('ce'),
    Locale('ceb'),
    Locale('ch'),
    Locale('chr'),
    Locale('co'),
    Locale('cr'),
    Locale('cs'),
    Locale('csb'),
    Locale('cv'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('doi'),
    Locale('dv'),
    Locale('dz'),
    Locale('ee'),
    Locale('el'),
    Locale('en'),
    Locale('en', 'IN'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('ff'),
    Locale('fi'),
    Locale('fil'),
    Locale('fj'),
    Locale('fo'),
    Locale('fr'),
    Locale('fur'),
    Locale('fy'),
    Locale('ga'),
    Locale('gbm'),
    Locale('gd'),
    Locale('gl'),
    Locale('gn'),
    Locale('grt'),
    Locale('gu'),
    Locale('ha'),
    Locale('haw'),
    Locale('he'),
    Locale('hi'),
    Locale('hil'),
    Locale('hmn'),
    Locale('hne'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('ig'),
    Locale('ilo'),
    Locale('is'),
    Locale('it'),
    Locale('iu'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('kfy'),
    Locale('kha'),
    Locale('kk'),
    Locale('kl'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('kok'),
    Locale('ks'),
    Locale('ksw'),
    Locale('ku'),
    Locale('ky'),
    Locale('la'),
    Locale('lb'),
    Locale('lbj'),
    Locale('lg'),
    Locale('lij'),
    Locale('ln'),
    Locale('lo'),
    Locale('lt'),
    Locale('lus'),
    Locale('lv'),
    Locale('mag'),
    Locale('mai'),
    Locale('mg'),
    Locale('mh'),
    Locale('mi'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mni'),
    Locale('mnw'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('mwr'),
    Locale('my'),
    Locale('nah'),
    Locale('ne'),
    Locale('new'),
    Locale('nl'),
    Locale('no'),
    Locale('nr'),
    Locale('nv'),
    Locale('ny'),
    Locale('oc'),
    Locale('oj'),
    Locale('om'),
    Locale('or'),
    Locale('os'),
    Locale('pa'),
    Locale('pag'),
    Locale('pam'),
    Locale('pap'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('qu'),
    Locale('raj'),
    Locale('rm'),
    Locale('ro'),
    Locale('ru'),
    Locale('rw'),
    Locale('sa'),
    Locale('sah'),
    Locale('sat'),
    Locale('sc'),
    Locale('sd'),
    Locale('shn'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sm'),
    Locale('sn'),
    Locale('so'),
    Locale('sq'),
    Locale('sr'),
    Locale('ss'),
    Locale('st'),
    Locale('su'),
    Locale('sv'),
    Locale('sw'),
    Locale('szl'),
    Locale('ta'),
    Locale('tcy'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('ti'),
    Locale('tk'),
    Locale('tn'),
    Locale('to'),
    Locale('tpi'),
    Locale('tr'),
    Locale('trp'),
    Locale('ts'),
    Locale('tt'),
    Locale('tyv'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('ve'),
    Locale('vec'),
    Locale('vi'),
    Locale('war'),
    Locale('wo'),
    Locale('xh'),
    Locale('yi'),
    Locale('yo'),
    Locale('yua'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('zu'),
  ];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'Bloomi'**
  String get app_name;

  /// No description provided for @nav_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get nav_home;

  /// No description provided for @nav_today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get nav_today;

  /// No description provided for @nav_plan.
  ///
  /// In en, this message translates to:
  /// **'Plan'**
  String get nav_plan;

  /// No description provided for @nav_food.
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get nav_food;

  /// No description provided for @nav_food_diary.
  ///
  /// In en, this message translates to:
  /// **'Food Diary'**
  String get nav_food_diary;

  /// No description provided for @nav_workout.
  ///
  /// In en, this message translates to:
  /// **'Workout Log'**
  String get nav_workout;

  /// No description provided for @nav_health.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get nav_health;

  /// No description provided for @nav_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get nav_profile;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @continue_btn.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_btn;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @no_data.
  ///
  /// In en, this message translates to:
  /// **'No data available'**
  String get no_data;

  /// No description provided for @offline.
  ///
  /// In en, this message translates to:
  /// **'Offline Mode'**
  String get offline;

  /// No description provided for @offline_sub.
  ///
  /// In en, this message translates to:
  /// **'Changes will sync once reconnected'**
  String get offline_sub;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @portion.
  ///
  /// In en, this message translates to:
  /// **'Portion'**
  String get portion;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @unit.
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get unit;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @calories.
  ///
  /// In en, this message translates to:
  /// **'Calories'**
  String get calories;

  /// No description provided for @protein.
  ///
  /// In en, this message translates to:
  /// **'Protein'**
  String get protein;

  /// No description provided for @carbs.
  ///
  /// In en, this message translates to:
  /// **'Carbs'**
  String get carbs;

  /// No description provided for @fat.
  ///
  /// In en, this message translates to:
  /// **'Fat'**
  String get fat;

  /// No description provided for @fiber.
  ///
  /// In en, this message translates to:
  /// **'Fiber'**
  String get fiber;

  /// No description provided for @water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get water;

  /// No description provided for @steps.
  ///
  /// In en, this message translates to:
  /// **'Steps'**
  String get steps;

  /// No description provided for @kcal.
  ///
  /// In en, this message translates to:
  /// **'kcal'**
  String get kcal;

  /// No description provided for @grams.
  ///
  /// In en, this message translates to:
  /// **'g'**
  String get grams;

  /// No description provided for @milliliters.
  ///
  /// In en, this message translates to:
  /// **'ml'**
  String get milliliters;

  /// No description provided for @kilograms.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kilograms;

  /// No description provided for @pounds.
  ///
  /// In en, this message translates to:
  /// **'lbs'**
  String get pounds;

  /// No description provided for @centimeters.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get centimeters;

  /// No description provided for @inches.
  ///
  /// In en, this message translates to:
  /// **'in'**
  String get inches;

  /// No description provided for @bpm.
  ///
  /// In en, this message translates to:
  /// **'bpm'**
  String get bpm;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'hrs'**
  String get hours;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'mins'**
  String get minutes;

  /// No description provided for @serving.
  ///
  /// In en, this message translates to:
  /// **'Serving'**
  String get serving;

  /// No description provided for @servings.
  ///
  /// In en, this message translates to:
  /// **'Servings'**
  String get servings;

  /// No description provided for @serving_size.
  ///
  /// In en, this message translates to:
  /// **'Serving Size'**
  String get serving_size;

  /// No description provided for @per_100g.
  ///
  /// In en, this message translates to:
  /// **'per 100g'**
  String get per_100g;

  /// No description provided for @india.
  ///
  /// In en, this message translates to:
  /// **'India'**
  String get india;

  /// No description provided for @asia.
  ///
  /// In en, this message translates to:
  /// **'Asia'**
  String get asia;

  /// No description provided for @europe.
  ///
  /// In en, this message translates to:
  /// **'Europe'**
  String get europe;

  /// No description provided for @middle_east.
  ///
  /// In en, this message translates to:
  /// **'Middle East'**
  String get middle_east;

  /// No description provided for @africa.
  ///
  /// In en, this message translates to:
  /// **'Africa'**
  String get africa;

  /// No description provided for @americas.
  ///
  /// In en, this message translates to:
  /// **'Americas'**
  String get americas;

  /// No description provided for @home_title.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_title;

  /// No description provided for @home_greeting_morning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get home_greeting_morning;

  /// No description provided for @home_greeting_afternoon.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon'**
  String get home_greeting_afternoon;

  /// No description provided for @home_greeting_evening.
  ///
  /// In en, this message translates to:
  /// **'Good Evening'**
  String get home_greeting_evening;

  /// No description provided for @home_streak_title.
  ///
  /// In en, this message translates to:
  /// **'Blossom Streak'**
  String get home_streak_title;

  /// No description provided for @home_streak_days.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{0 days streak} =1{1 day streak} other{{count} days streak}}'**
  String home_streak_days(num count);

  /// No description provided for @home_calories_burned.
  ///
  /// In en, this message translates to:
  /// **'Burned'**
  String get home_calories_burned;

  /// No description provided for @home_calories_budget.
  ///
  /// In en, this message translates to:
  /// **'Calorie Budget'**
  String get home_calories_budget;

  /// No description provided for @home_calories_remaining.
  ///
  /// In en, this message translates to:
  /// **'{kcal} kcal remaining'**
  String home_calories_remaining(Object kcal);

  /// No description provided for @home_water_title.
  ///
  /// In en, this message translates to:
  /// **'Daily Hydration'**
  String get home_water_title;

  /// No description provided for @home_water_goal.
  ///
  /// In en, this message translates to:
  /// **'{current} / {target} ml'**
  String home_water_goal(Object current, Object target);

  /// No description provided for @home_steps_title.
  ///
  /// In en, this message translates to:
  /// **'Steps Walked'**
  String get home_steps_title;

  /// No description provided for @home_quick_actions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get home_quick_actions;

  /// No description provided for @home_log_meal.
  ///
  /// In en, this message translates to:
  /// **'Log Meal'**
  String get home_log_meal;

  /// No description provided for @home_log_water.
  ///
  /// In en, this message translates to:
  /// **'Log Water'**
  String get home_log_water;

  /// No description provided for @home_log_workout.
  ///
  /// In en, this message translates to:
  /// **'Log Workout'**
  String get home_log_workout;

  /// No description provided for @home_log_weight.
  ///
  /// In en, this message translates to:
  /// **'Log Weight'**
  String get home_log_weight;

  /// No description provided for @home_insights_title.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Insights'**
  String get home_insights_title;

  /// No description provided for @home_quote.
  ///
  /// In en, this message translates to:
  /// **'Small healthy choices create blooming transformations.'**
  String get home_quote;

  /// No description provided for @home_ai_coach_tip.
  ///
  /// In en, this message translates to:
  /// **'Bloomi AI Coach'**
  String get home_ai_coach_tip;

  /// No description provided for @home_surroundings.
  ///
  /// In en, this message translates to:
  /// **'Surroundings & Air'**
  String get home_surroundings;

  /// No description provided for @home_notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get home_notifications;

  /// No description provided for @home_daily_score.
  ///
  /// In en, this message translates to:
  /// **'Daily Wellness Score'**
  String get home_daily_score;

  /// No description provided for @home_view_all.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get home_view_all;

  /// No description provided for @food_diary_title.
  ///
  /// In en, this message translates to:
  /// **'Food Diary'**
  String get food_diary_title;

  /// No description provided for @food_breakfast.
  ///
  /// In en, this message translates to:
  /// **'Breakfast'**
  String get food_breakfast;

  /// No description provided for @food_lunch.
  ///
  /// In en, this message translates to:
  /// **'Lunch'**
  String get food_lunch;

  /// No description provided for @food_dinner.
  ///
  /// In en, this message translates to:
  /// **'Dinner'**
  String get food_dinner;

  /// No description provided for @food_snacks.
  ///
  /// In en, this message translates to:
  /// **'Snacks'**
  String get food_snacks;

  /// No description provided for @food_add_food.
  ///
  /// In en, this message translates to:
  /// **'Add Food'**
  String get food_add_food;

  /// No description provided for @food_edit_food.
  ///
  /// In en, this message translates to:
  /// **'Edit Food'**
  String get food_edit_food;

  /// No description provided for @food_add_breakfast.
  ///
  /// In en, this message translates to:
  /// **'Add Breakfast'**
  String get food_add_breakfast;

  /// No description provided for @food_add_lunch.
  ///
  /// In en, this message translates to:
  /// **'Add Lunch'**
  String get food_add_lunch;

  /// No description provided for @food_add_dinner.
  ///
  /// In en, this message translates to:
  /// **'Add Dinner'**
  String get food_add_dinner;

  /// No description provided for @food_add_snack.
  ///
  /// In en, this message translates to:
  /// **'Add Snack'**
  String get food_add_snack;

  /// No description provided for @food_total_calories.
  ///
  /// In en, this message translates to:
  /// **'Total Calories'**
  String get food_total_calories;

  /// No description provided for @food_empty_meal.
  ///
  /// In en, this message translates to:
  /// **'No foods logged for this meal yet'**
  String get food_empty_meal;

  /// No description provided for @food_empty_diary.
  ///
  /// In en, this message translates to:
  /// **'No meals logged for this day'**
  String get food_empty_diary;

  /// No description provided for @food_log_first_meal.
  ///
  /// In en, this message translates to:
  /// **'Tap + to log your first delicious meal'**
  String get food_log_first_meal;

  /// No description provided for @food_quick_add.
  ///
  /// In en, this message translates to:
  /// **'Quick Add'**
  String get food_quick_add;

  /// No description provided for @food_search_hint.
  ///
  /// In en, this message translates to:
  /// **'Search dishes, fruits, dal, roti...'**
  String get food_search_hint;

  /// No description provided for @food_custom_recipe.
  ///
  /// In en, this message translates to:
  /// **'Custom Food & Recipe'**
  String get food_custom_recipe;

  /// No description provided for @food_scan_barcode.
  ///
  /// In en, this message translates to:
  /// **'Scan Barcode'**
  String get food_scan_barcode;

  /// No description provided for @food_camera_scan.
  ///
  /// In en, this message translates to:
  /// **'AI Food Scanner'**
  String get food_camera_scan;

  /// No description provided for @food_recent.
  ///
  /// In en, this message translates to:
  /// **'Recent Foods'**
  String get food_recent;

  /// No description provided for @food_favourites.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get food_favourites;

  /// No description provided for @food_macro_summary.
  ///
  /// In en, this message translates to:
  /// **'Macronutrient Breakdown'**
  String get food_macro_summary;

  /// No description provided for @food_delete_meal_confirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove this item?'**
  String get food_delete_meal_confirm;

  /// No description provided for @food_item_deleted.
  ///
  /// In en, this message translates to:
  /// **'Food item removed'**
  String get food_item_deleted;

  /// No description provided for @food_remaining.
  ///
  /// In en, this message translates to:
  /// **'remaining'**
  String get food_remaining;

  /// No description provided for @food_consumed.
  ///
  /// In en, this message translates to:
  /// **'consumed'**
  String get food_consumed;

  /// No description provided for @food_of_target.
  ///
  /// In en, this message translates to:
  /// **'of {target} kcal'**
  String food_of_target(Object target);

  /// No description provided for @foodSearch_title.
  ///
  /// In en, this message translates to:
  /// **'Search Foods'**
  String get foodSearch_title;

  /// No description provided for @foodSearch_scan_barcode.
  ///
  /// In en, this message translates to:
  /// **'Scan Barcode'**
  String get foodSearch_scan_barcode;

  /// No description provided for @foodSearch_take_photo.
  ///
  /// In en, this message translates to:
  /// **'Snap Food Photo'**
  String get foodSearch_take_photo;

  /// No description provided for @foodSearch_custom_food.
  ///
  /// In en, this message translates to:
  /// **'Create Custom Food'**
  String get foodSearch_custom_food;

  /// No description provided for @foodSearch_recent_searches.
  ///
  /// In en, this message translates to:
  /// **'Recent Searches'**
  String get foodSearch_recent_searches;

  /// No description provided for @foodSearch_popular.
  ///
  /// In en, this message translates to:
  /// **'Popular Dishes'**
  String get foodSearch_popular;

  /// No description provided for @foodSearch_no_results.
  ///
  /// In en, this message translates to:
  /// **'No foods matching your search'**
  String get foodSearch_no_results;

  /// No description provided for @barcode_title.
  ///
  /// In en, this message translates to:
  /// **'Barcode Scanner'**
  String get barcode_title;

  /// No description provided for @barcode_align.
  ///
  /// In en, this message translates to:
  /// **'Align barcode inside the camera frame'**
  String get barcode_align;

  /// No description provided for @barcode_not_found.
  ///
  /// In en, this message translates to:
  /// **'Product not found in database'**
  String get barcode_not_found;

  /// No description provided for @barcode_premium_feature.
  ///
  /// In en, this message translates to:
  /// **'Barcode scanning is available with Bloomi Pro'**
  String get barcode_premium_feature;

  /// No description provided for @camera_title.
  ///
  /// In en, this message translates to:
  /// **'AI Food Scanner'**
  String get camera_title;

  /// No description provided for @camera_tap_hint.
  ///
  /// In en, this message translates to:
  /// **'Take a clear photo of your dish'**
  String get camera_tap_hint;

  /// No description provided for @camera_analysing.
  ///
  /// In en, this message translates to:
  /// **'Analysing food plate...'**
  String get camera_analysing;

  /// No description provided for @camera_detected.
  ///
  /// In en, this message translates to:
  /// **'Detected items'**
  String get camera_detected;

  /// No description provided for @camera_flash.
  ///
  /// In en, this message translates to:
  /// **'Toggle Flash'**
  String get camera_flash;

  /// No description provided for @camera_retake.
  ///
  /// In en, this message translates to:
  /// **'Retake Photo'**
  String get camera_retake;

  /// No description provided for @camera_confirm_food.
  ///
  /// In en, this message translates to:
  /// **'Confirm Items'**
  String get camera_confirm_food;

  /// No description provided for @customFood_title.
  ///
  /// In en, this message translates to:
  /// **'Custom Food & Recipe'**
  String get customFood_title;

  /// No description provided for @customFood_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Dish or ingredient name'**
  String get customFood_name_hint;

  /// No description provided for @customFood_calories_hint.
  ///
  /// In en, this message translates to:
  /// **'Calories (kcal)'**
  String get customFood_calories_hint;

  /// No description provided for @customFood_protein_hint.
  ///
  /// In en, this message translates to:
  /// **'Protein (g)'**
  String get customFood_protein_hint;

  /// No description provided for @customFood_carbs_hint.
  ///
  /// In en, this message translates to:
  /// **'Carbs (g)'**
  String get customFood_carbs_hint;

  /// No description provided for @customFood_fat_hint.
  ///
  /// In en, this message translates to:
  /// **'Fat (g)'**
  String get customFood_fat_hint;

  /// No description provided for @customFood_save.
  ///
  /// In en, this message translates to:
  /// **'Save Recipe'**
  String get customFood_save;

  /// No description provided for @water_tracker_title.
  ///
  /// In en, this message translates to:
  /// **'Water Tracker'**
  String get water_tracker_title;

  /// No description provided for @water_daily_target.
  ///
  /// In en, this message translates to:
  /// **'Daily Hydration Goal'**
  String get water_daily_target;

  /// No description provided for @water_logged_today.
  ///
  /// In en, this message translates to:
  /// **'Logged Today'**
  String get water_logged_today;

  /// No description provided for @water_add_glass.
  ///
  /// In en, this message translates to:
  /// **'+250 ml Glass'**
  String get water_add_glass;

  /// No description provided for @water_add_bottle.
  ///
  /// In en, this message translates to:
  /// **'+500 ml Bottle'**
  String get water_add_bottle;

  /// No description provided for @water_custom_amount.
  ///
  /// In en, this message translates to:
  /// **'Custom Amount'**
  String get water_custom_amount;

  /// No description provided for @water_reminder_tip.
  ///
  /// In en, this message translates to:
  /// **'Drink water regularly throughout the day for steady energy.'**
  String get water_reminder_tip;

  /// No description provided for @water_logged_toast.
  ///
  /// In en, this message translates to:
  /// **'Logged {amount} ml of water 💧'**
  String water_logged_toast(Object amount);

  /// No description provided for @workout_title.
  ///
  /// In en, this message translates to:
  /// **'Workout Log'**
  String get workout_title;

  /// No description provided for @workout_add_exercise.
  ///
  /// In en, this message translates to:
  /// **'Add Workout'**
  String get workout_add_exercise;

  /// No description provided for @workout_cardio.
  ///
  /// In en, this message translates to:
  /// **'Cardio'**
  String get workout_cardio;

  /// No description provided for @workout_strength.
  ///
  /// In en, this message translates to:
  /// **'Strength'**
  String get workout_strength;

  /// No description provided for @workout_yoga.
  ///
  /// In en, this message translates to:
  /// **'Yoga & Flexibility'**
  String get workout_yoga;

  /// No description provided for @workout_duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get workout_duration;

  /// No description provided for @workout_intensity.
  ///
  /// In en, this message translates to:
  /// **'Intensity'**
  String get workout_intensity;

  /// No description provided for @workout_calories_burned.
  ///
  /// In en, this message translates to:
  /// **'Calories Burned'**
  String get workout_calories_burned;

  /// No description provided for @workout_empty.
  ///
  /// In en, this message translates to:
  /// **'No workouts logged today'**
  String get workout_empty;

  /// No description provided for @workout_save_success.
  ///
  /// In en, this message translates to:
  /// **'Workout saved successfully!'**
  String get workout_save_success;

  /// No description provided for @workout_type.
  ///
  /// In en, this message translates to:
  /// **'Workout Type'**
  String get workout_type;

  /// No description provided for @workout_notes.
  ///
  /// In en, this message translates to:
  /// **'Notes & Reflections'**
  String get workout_notes;

  /// No description provided for @health_overview_title.
  ///
  /// In en, this message translates to:
  /// **'Health & Vitals'**
  String get health_overview_title;

  /// No description provided for @health_heart_rate.
  ///
  /// In en, this message translates to:
  /// **'Heart Rate'**
  String get health_heart_rate;

  /// No description provided for @health_blood_oxygen.
  ///
  /// In en, this message translates to:
  /// **'Blood Oxygen (SpO2)'**
  String get health_blood_oxygen;

  /// No description provided for @health_blood_pressure.
  ///
  /// In en, this message translates to:
  /// **'Blood Pressure'**
  String get health_blood_pressure;

  /// No description provided for @health_blood_glucose.
  ///
  /// In en, this message translates to:
  /// **'Blood Glucose'**
  String get health_blood_glucose;

  /// No description provided for @health_body_temperature.
  ///
  /// In en, this message translates to:
  /// **'Body Temperature'**
  String get health_body_temperature;

  /// No description provided for @health_sleep_tracking.
  ///
  /// In en, this message translates to:
  /// **'Sleep Tracking'**
  String get health_sleep_tracking;

  /// No description provided for @health_weight_tracking.
  ///
  /// In en, this message translates to:
  /// **'Weight & Body Composition'**
  String get health_weight_tracking;

  /// No description provided for @health_waist_hip.
  ///
  /// In en, this message translates to:
  /// **'Waist-to-Hip Ratio'**
  String get health_waist_hip;

  /// No description provided for @health_devices_hub.
  ///
  /// In en, this message translates to:
  /// **'Devices & Smartwatch Hub'**
  String get health_devices_hub;

  /// No description provided for @health_sync_now.
  ///
  /// In en, this message translates to:
  /// **'Sync Health Data'**
  String get health_sync_now;

  /// No description provided for @health_last_synced.
  ///
  /// In en, this message translates to:
  /// **'Last synced: {time}'**
  String health_last_synced(Object time);

  /// No description provided for @health_manual_entry.
  ///
  /// In en, this message translates to:
  /// **'Manual Health Entry'**
  String get health_manual_entry;

  /// No description provided for @health_metric_detail.
  ///
  /// In en, this message translates to:
  /// **'Metric Details'**
  String get health_metric_detail;

  /// No description provided for @health_connected_sensors.
  ///
  /// In en, this message translates to:
  /// **'Connected Health Sensors'**
  String get health_connected_sensors;

  /// No description provided for @plan_title.
  ///
  /// In en, this message translates to:
  /// **'Daily Plan'**
  String get plan_title;

  /// No description provided for @plan_weekly_title.
  ///
  /// In en, this message translates to:
  /// **'Weekly Wellness Plan'**
  String get plan_weekly_title;

  /// No description provided for @plan_calorie_target.
  ///
  /// In en, this message translates to:
  /// **'Calorie Target'**
  String get plan_calorie_target;

  /// No description provided for @plan_water_target.
  ///
  /// In en, this message translates to:
  /// **'Hydration Target'**
  String get plan_water_target;

  /// No description provided for @plan_step_target.
  ///
  /// In en, this message translates to:
  /// **'Step Target'**
  String get plan_step_target;

  /// No description provided for @plan_sleep_target.
  ///
  /// In en, this message translates to:
  /// **'Sleep Target'**
  String get plan_sleep_target;

  /// No description provided for @plan_meal_suggestions.
  ///
  /// In en, this message translates to:
  /// **'Meal Suggestions'**
  String get plan_meal_suggestions;

  /// No description provided for @plan_healthy_habits.
  ///
  /// In en, this message translates to:
  /// **'Healthy Habits & Tips'**
  String get plan_healthy_habits;

  /// No description provided for @plan_coach_advice.
  ///
  /// In en, this message translates to:
  /// **'Bloomi AI Coach Recommendations'**
  String get plan_coach_advice;

  /// No description provided for @plan_generated_title.
  ///
  /// In en, this message translates to:
  /// **'Personalized Daily Schedule'**
  String get plan_generated_title;

  /// No description provided for @profile_title.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile_title;

  /// No description provided for @profile_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profile_edit;

  /// No description provided for @profile_name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get profile_name;

  /// No description provided for @profile_age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get profile_age;

  /// No description provided for @profile_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get profile_gender;

  /// No description provided for @profile_height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get profile_height;

  /// No description provided for @profile_weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get profile_weight;

  /// No description provided for @profile_goal.
  ///
  /// In en, this message translates to:
  /// **'Primary Goal'**
  String get profile_goal;

  /// No description provided for @profile_activity_level.
  ///
  /// In en, this message translates to:
  /// **'Activity Level'**
  String get profile_activity_level;

  /// No description provided for @profile_stats.
  ///
  /// In en, this message translates to:
  /// **'My Wellness Stats'**
  String get profile_stats;

  /// No description provided for @profile_saved.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profile_saved;

  /// No description provided for @profile_bmi.
  ///
  /// In en, this message translates to:
  /// **'Body Mass Index (BMI)'**
  String get profile_bmi;

  /// No description provided for @profile_membership.
  ///
  /// In en, this message translates to:
  /// **'Membership'**
  String get profile_membership;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @preferences_habits.
  ///
  /// In en, this message translates to:
  /// **'PREFERENCES & HABITS'**
  String get preferences_habits;

  /// No description provided for @appearance_theme.
  ///
  /// In en, this message translates to:
  /// **'Appearance & Theme'**
  String get appearance_theme;

  /// No description provided for @appearance_theme_sub.
  ///
  /// In en, this message translates to:
  /// **'Dark, Light, System Mode & App Background Options'**
  String get appearance_theme_sub;

  /// No description provided for @permissions.
  ///
  /// In en, this message translates to:
  /// **'Permissions & System Access'**
  String get permissions;

  /// No description provided for @permissions_sub.
  ///
  /// In en, this message translates to:
  /// **'Health Connect, Step Sensors, GPS, Notifications & Camera'**
  String get permissions_sub;

  /// No description provided for @reminders_notifications.
  ///
  /// In en, this message translates to:
  /// **'Reminders & Notifications'**
  String get reminders_notifications;

  /// No description provided for @reminders_sub.
  ///
  /// In en, this message translates to:
  /// **'Meal times, water, weight check-in & bedtime reminders'**
  String get reminders_sub;

  /// No description provided for @units_of_measurement.
  ///
  /// In en, this message translates to:
  /// **'Units of Measurement'**
  String get units_of_measurement;

  /// No description provided for @units_sub.
  ///
  /// In en, this message translates to:
  /// **'Metric (kg, cm, ml, km) or Imperial (lbs, ft/in, fl oz)'**
  String get units_sub;

  /// No description provided for @app_language.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get app_language;

  /// No description provided for @language_sub.
  ///
  /// In en, this message translates to:
  /// **'English, हिन्दी (Hindi), Hinglish & 195+ global languages'**
  String get language_sub;

  /// No description provided for @home_screen_widgets.
  ///
  /// In en, this message translates to:
  /// **'Home Screen Widgets'**
  String get home_screen_widgets;

  /// No description provided for @widgets_sub.
  ///
  /// In en, this message translates to:
  /// **'Live Android widgets: Hub, Steps, Water, Nutrition & Mascot'**
  String get widgets_sub;

  /// No description provided for @wear_os_watch_app.
  ///
  /// In en, this message translates to:
  /// **'Wear OS Watch App'**
  String get wear_os_watch_app;

  /// No description provided for @wear_os_sub.
  ///
  /// In en, this message translates to:
  /// **'Smartwatch companion, tiles, complications & live vitals'**
  String get wear_os_sub;

  /// No description provided for @goals_wellness.
  ///
  /// In en, this message translates to:
  /// **'GOALS & WELLNESS INSIGHTS'**
  String get goals_wellness;

  /// No description provided for @nutrition_targets.
  ///
  /// In en, this message translates to:
  /// **'Nutrition Targets & Macro Split'**
  String get nutrition_targets;

  /// No description provided for @nutrition_targets_sub.
  ///
  /// In en, this message translates to:
  /// **'Calorie target, protein, carbs, fat & water goal'**
  String get nutrition_targets_sub;

  /// No description provided for @weekly_recap.
  ///
  /// In en, this message translates to:
  /// **'Weekly Wellness Recap'**
  String get weekly_recap;

  /// No description provided for @weekly_recap_sub.
  ///
  /// In en, this message translates to:
  /// **'7-day calorie average, macro ratio & best day'**
  String get weekly_recap_sub;

  /// No description provided for @streaks_milestones.
  ///
  /// In en, this message translates to:
  /// **'Streaks & Milestones'**
  String get streaks_milestones;

  /// No description provided for @streaks_sub.
  ///
  /// In en, this message translates to:
  /// **'Active blossom streaks, badges & achievements'**
  String get streaks_sub;

  /// No description provided for @connected_devices.
  ///
  /// In en, this message translates to:
  /// **'CONNECTED DEVICES & ECOSYSTEM'**
  String get connected_devices;

  /// No description provided for @devices_hub.
  ///
  /// In en, this message translates to:
  /// **'Devices & Smartwatch Hub'**
  String get devices_hub;

  /// No description provided for @devices_hub_sub.
  ///
  /// In en, this message translates to:
  /// **'Health Connect, Galaxy Watch, Pixel Watch, Garmin'**
  String get devices_hub_sub;

  /// No description provided for @surroundings_weather.
  ///
  /// In en, this message translates to:
  /// **'Surroundings & Weather'**
  String get surroundings_weather;

  /// No description provided for @surroundings_sub.
  ///
  /// In en, this message translates to:
  /// **'Air quality (AQI), UV index & weather hydration tips'**
  String get surroundings_sub;

  /// No description provided for @bloomi_pro.
  ///
  /// In en, this message translates to:
  /// **'Bloomi Pro Subscription'**
  String get bloomi_pro;

  /// No description provided for @bloomi_pro_sub.
  ///
  /// In en, this message translates to:
  /// **'AI Plan Coach, 5 home screen widgets & vitals tracking'**
  String get bloomi_pro_sub;

  /// No description provided for @about_security.
  ///
  /// In en, this message translates to:
  /// **'ABOUT & SECURITY'**
  String get about_security;

  /// No description provided for @about_bloomi.
  ///
  /// In en, this message translates to:
  /// **'About Bloomi'**
  String get about_bloomi;

  /// No description provided for @about_bloomi_sub.
  ///
  /// In en, this message translates to:
  /// **'Build specifications, version, attributions'**
  String get about_bloomi_sub;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @privacy_policy_sub.
  ///
  /// In en, this message translates to:
  /// **'Offline-first, on-device data architecture'**
  String get privacy_policy_sub;

  /// No description provided for @terms_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get terms_conditions;

  /// No description provided for @terms_conditions_sub.
  ///
  /// In en, this message translates to:
  /// **'Terms of service and wellness guidelines'**
  String get terms_conditions_sub;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete Account & Data'**
  String get delete_account;

  /// No description provided for @delete_account_sub.
  ///
  /// In en, this message translates to:
  /// **'Irreversibly erase local SQLite data and cloud backups'**
  String get delete_account_sub;

  /// No description provided for @healthy_habits.
  ///
  /// In en, this message translates to:
  /// **'Build gentle, lasting wellness habits'**
  String get healthy_habits;

  /// No description provided for @all_logs.
  ///
  /// In en, this message translates to:
  /// **'My Tracked Data & Logs'**
  String get all_logs;

  /// No description provided for @search_language.
  ///
  /// In en, this message translates to:
  /// **'Search by language or native script...'**
  String get search_language;

  /// No description provided for @languages_available.
  ///
  /// In en, this message translates to:
  /// **'Languages Available'**
  String get languages_available;

  /// No description provided for @no_matching_languages.
  ///
  /// In en, this message translates to:
  /// **'No matching languages found'**
  String get no_matching_languages;

  /// No description provided for @try_searching.
  ///
  /// In en, this message translates to:
  /// **'Try searching by native script or English spelling'**
  String get try_searching;

  /// No description provided for @partially_translated.
  ///
  /// In en, this message translates to:
  /// **'Partially translated'**
  String get partially_translated;

  /// No description provided for @complete_translation.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete_translation;

  /// No description provided for @language_changed_toast.
  ///
  /// In en, this message translates to:
  /// **'Language set to {name} ({nativeName})'**
  String language_changed_toast(Object name, Object nativeName);

  /// No description provided for @surroundings_title.
  ///
  /// In en, this message translates to:
  /// **'Surroundings & Environment'**
  String get surroundings_title;

  /// No description provided for @surroundings_aqi.
  ///
  /// In en, this message translates to:
  /// **'Air Quality Index'**
  String get surroundings_aqi;

  /// No description provided for @surroundings_uv.
  ///
  /// In en, this message translates to:
  /// **'UV Index'**
  String get surroundings_uv;

  /// No description provided for @surroundings_temp.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get surroundings_temp;

  /// No description provided for @surroundings_humidity.
  ///
  /// In en, this message translates to:
  /// **'Humidity'**
  String get surroundings_humidity;

  /// No description provided for @surroundings_hydration_advice.
  ///
  /// In en, this message translates to:
  /// **'Stay well hydrated in current weather conditions.'**
  String get surroundings_hydration_advice;

  /// No description provided for @surroundings_refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh Weather'**
  String get surroundings_refresh;

  /// No description provided for @food_quick_search.
  ///
  /// In en, this message translates to:
  /// **'Search Food'**
  String get food_quick_search;

  /// No description provided for @food_quick_barcode.
  ///
  /// In en, this message translates to:
  /// **'Scan Barcode 👑'**
  String get food_quick_barcode;

  /// No description provided for @food_quick_water.
  ///
  /// In en, this message translates to:
  /// **'Add Water'**
  String get food_quick_water;

  /// No description provided for @food_quick_custom.
  ///
  /// In en, this message translates to:
  /// **'Custom Food'**
  String get food_quick_custom;

  /// No description provided for @surroundings_good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get surroundings_good;

  /// No description provided for @surroundings_moderate.
  ///
  /// In en, this message translates to:
  /// **'Moderate'**
  String get surroundings_moderate;

  /// No description provided for @surroundings_unhealthy.
  ///
  /// In en, this message translates to:
  /// **'Unhealthy'**
  String get surroundings_unhealthy;

  /// No description provided for @notifications_title.
  ///
  /// In en, this message translates to:
  /// **'Notifications & Alerts'**
  String get notifications_title;

  /// No description provided for @notifications_empty.
  ///
  /// In en, this message translates to:
  /// **'No new notifications'**
  String get notifications_empty;

  /// No description provided for @notifications_mark_read.
  ///
  /// In en, this message translates to:
  /// **'Mark All as Read'**
  String get notifications_mark_read;

  /// No description provided for @notifications_clear.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get notifications_clear;

  /// No description provided for @reminders.
  ///
  /// In en, this message translates to:
  /// **'Reminder Settings'**
  String get reminders;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @reminders_breakfast_title.
  ///
  /// In en, this message translates to:
  /// **'Breakfast Reminder 🍳'**
  String get reminders_breakfast_title;

  /// No description provided for @reminders_breakfast_body.
  ///
  /// In en, this message translates to:
  /// **'Good morning! Time for a nourishing breakfast at {time}.'**
  String reminders_breakfast_body(Object time);

  /// No description provided for @reminders_lunch_title.
  ///
  /// In en, this message translates to:
  /// **'Lunch Reminder 🥗'**
  String get reminders_lunch_title;

  /// No description provided for @reminders_lunch_body.
  ///
  /// In en, this message translates to:
  /// **'Pause and enjoy a balanced, mindful lunch at {time}.'**
  String reminders_lunch_body(Object time);

  /// No description provided for @reminders_dinner_title.
  ///
  /// In en, this message translates to:
  /// **'Dinner Reminder 🍲'**
  String get reminders_dinner_title;

  /// No description provided for @reminders_dinner_body.
  ///
  /// In en, this message translates to:
  /// **'Time for a light, satisfying dinner at {time}.'**
  String reminders_dinner_body(Object time);

  /// No description provided for @reminders_water_title.
  ///
  /// In en, this message translates to:
  /// **'Hydration Nudge 💧'**
  String get reminders_water_title;

  /// No description provided for @reminders_water_body.
  ///
  /// In en, this message translates to:
  /// **'Time to drink a fresh glass of water! ({time})'**
  String reminders_water_body(Object time);

  /// No description provided for @reminders_weight_title.
  ///
  /// In en, this message translates to:
  /// **'Weekly Weigh-in ⚖️'**
  String get reminders_weight_title;

  /// No description provided for @reminders_weight_body.
  ///
  /// In en, this message translates to:
  /// **'Track your weekly body metrics on Bloomi ({time}).'**
  String reminders_weight_body(Object time);

  /// No description provided for @reminders_sleep_title.
  ///
  /// In en, this message translates to:
  /// **'Bedtime Wind-down 🌙'**
  String get reminders_sleep_title;

  /// No description provided for @reminders_sleep_body.
  ///
  /// In en, this message translates to:
  /// **'Unwind and prepare for a restful sleep ({time}).'**
  String reminders_sleep_body(Object time);

  /// No description provided for @onboard_welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Bloomi'**
  String get onboard_welcome;

  /// No description provided for @onboard_sub.
  ///
  /// In en, this message translates to:
  /// **'Your friendly, offline-first health and nutrition companion.'**
  String get onboard_sub;

  /// No description provided for @onboard_get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onboard_get_started;

  /// No description provided for @onboard_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get onboard_sign_in;

  /// No description provided for @onboard_skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboard_skip;

  /// No description provided for @onboard_choose_goal.
  ///
  /// In en, this message translates to:
  /// **'What is your primary wellness goal?'**
  String get onboard_choose_goal;

  /// No description provided for @onboard_goal_weight_loss.
  ///
  /// In en, this message translates to:
  /// **'Gentle Weight Loss'**
  String get onboard_goal_weight_loss;

  /// No description provided for @onboard_goal_muscle.
  ///
  /// In en, this message translates to:
  /// **'Muscle Gain & Strength'**
  String get onboard_goal_muscle;

  /// No description provided for @onboard_goal_energy.
  ///
  /// In en, this message translates to:
  /// **'Daily Energy & Vitality'**
  String get onboard_goal_energy;

  /// No description provided for @onboard_goal_habits.
  ///
  /// In en, this message translates to:
  /// **'Healthy Mindful Eating'**
  String get onboard_goal_habits;

  /// No description provided for @onboard_about_you.
  ///
  /// In en, this message translates to:
  /// **'Tell Us About Yourself'**
  String get onboard_about_you;

  /// No description provided for @onboard_lifestyle.
  ///
  /// In en, this message translates to:
  /// **'Your Daily Routine'**
  String get onboard_lifestyle;

  /// No description provided for @onboard_permissions_title.
  ///
  /// In en, this message translates to:
  /// **'Permissions & System Access'**
  String get onboard_permissions_title;

  /// No description provided for @onboard_permissions_sub.
  ///
  /// In en, this message translates to:
  /// **'Grant access to sync steps, workouts, and reminders.'**
  String get onboard_permissions_sub;

  /// No description provided for @onboard_plan_ready_title.
  ///
  /// In en, this message translates to:
  /// **'Your Custom Plan is Ready!'**
  String get onboard_plan_ready_title;

  /// No description provided for @onboard_plan_ready_sub.
  ///
  /// In en, this message translates to:
  /// **'We crafted a gentle, personalized nutrition and wellness roadmap just for you.'**
  String get onboard_plan_ready_sub;

  /// No description provided for @onboard_enter_bloomi.
  ///
  /// In en, this message translates to:
  /// **'Enter Bloomi'**
  String get onboard_enter_bloomi;

  /// No description provided for @insights_weekly_report.
  ///
  /// In en, this message translates to:
  /// **'Weekly Wellness Recap'**
  String get insights_weekly_report;

  /// No description provided for @insights_best_day.
  ///
  /// In en, this message translates to:
  /// **'Best Consistency Day: {day}'**
  String insights_best_day(Object day);

  /// No description provided for @insights_streaks_badges.
  ///
  /// In en, this message translates to:
  /// **'Streaks & Milestones'**
  String get insights_streaks_badges;

  /// No description provided for @insights_unlocked_on.
  ///
  /// In en, this message translates to:
  /// **'Unlocked on {date}'**
  String insights_unlocked_on(Object date);

  /// No description provided for @insights_keep_going.
  ///
  /// In en, this message translates to:
  /// **'Keep up the fantastic progress!'**
  String get insights_keep_going;

  /// No description provided for @widgets_title.
  ///
  /// In en, this message translates to:
  /// **'Home Screen Widgets'**
  String get widgets_title;

  /// No description provided for @widgets_active_count.
  ///
  /// In en, this message translates to:
  /// **'Active Widgets: {count}'**
  String widgets_active_count(Object count);

  /// No description provided for @widgets_hub_title.
  ///
  /// In en, this message translates to:
  /// **'Bloomi Wellness Hub'**
  String get widgets_hub_title;

  /// No description provided for @widgets_steps_title.
  ///
  /// In en, this message translates to:
  /// **'Steps & Active Ring'**
  String get widgets_steps_title;

  /// No description provided for @widgets_water_title.
  ///
  /// In en, this message translates to:
  /// **'Hydration Quick Log'**
  String get widgets_water_title;

  /// No description provided for @widgets_mascot_title.
  ///
  /// In en, this message translates to:
  /// **'Bloomi Mascot Companion'**
  String get widgets_mascot_title;

  /// No description provided for @wear_os_title.
  ///
  /// In en, this message translates to:
  /// **'Wear OS Smartwatch'**
  String get wear_os_title;

  /// No description provided for @wear_os_connected.
  ///
  /// In en, this message translates to:
  /// **'Connected to Watch'**
  String get wear_os_connected;

  /// No description provided for @wear_os_sync.
  ///
  /// In en, this message translates to:
  /// **'Sync Watch Data'**
  String get wear_os_sync;

  /// No description provided for @theme_title.
  ///
  /// In en, this message translates to:
  /// **'Appearance & Theme'**
  String get theme_title;

  /// No description provided for @theme_mode.
  ///
  /// In en, this message translates to:
  /// **'Theme Mode'**
  String get theme_mode;

  /// No description provided for @theme_light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get theme_light;

  /// No description provided for @theme_dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get theme_dark;

  /// No description provided for @theme_system.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get theme_system;

  /// No description provided for @theme_background_palette.
  ///
  /// In en, this message translates to:
  /// **'Background Palette'**
  String get theme_background_palette;

  /// No description provided for @units_title.
  ///
  /// In en, this message translates to:
  /// **'Units of Measurement'**
  String get units_title;

  /// No description provided for @units_metric.
  ///
  /// In en, this message translates to:
  /// **'Metric (kg, cm, ml)'**
  String get units_metric;

  /// No description provided for @units_imperial.
  ///
  /// In en, this message translates to:
  /// **'Imperial (lbs, in, fl oz)'**
  String get units_imperial;

  /// No description provided for @home_unable_load.
  ///
  /// In en, this message translates to:
  /// **'Unable to load dashboard'**
  String get home_unable_load;

  /// No description provided for @home_health_permission_req.
  ///
  /// In en, this message translates to:
  /// **'Health Connect Permission Required'**
  String get home_health_permission_req;

  /// No description provided for @home_health_permission_desc.
  ///
  /// In en, this message translates to:
  /// **'Bloomi requires Health Connect permission to pull real steps, heart rate, and sync mobile home widgets in real time.'**
  String get home_health_permission_desc;

  /// No description provided for @home_allow_health.
  ///
  /// In en, this message translates to:
  /// **'Allow Health Connect'**
  String get home_allow_health;

  /// No description provided for @home_ready_mindful_day.
  ///
  /// In en, this message translates to:
  /// **'Ready for a mindful day? ✨'**
  String get home_ready_mindful_day;

  /// No description provided for @home_quick_add.
  ///
  /// In en, this message translates to:
  /// **'Quick Add'**
  String get home_quick_add;

  /// No description provided for @home_live_gps.
  ///
  /// In en, this message translates to:
  /// **'Live GPS'**
  String get home_live_gps;

  /// No description provided for @home_calories_remaining_label.
  ///
  /// In en, this message translates to:
  /// **'CALORIES REMAINING'**
  String get home_calories_remaining_label;

  /// No description provided for @home_eaten_target.
  ///
  /// In en, this message translates to:
  /// **'Eaten: {consumed} / {target} kcal'**
  String home_eaten_target(Object consumed, Object target);

  /// No description provided for @home_tap_water_tracker.
  ///
  /// In en, this message translates to:
  /// **'Tap for Water Tracker 💧'**
  String get home_tap_water_tracker;

  /// No description provided for @home_water_goal_reached.
  ///
  /// In en, this message translates to:
  /// **'Daily goal reached 🎉'**
  String get home_water_goal_reached;

  /// No description provided for @home_water_to_daily_goal.
  ///
  /// In en, this message translates to:
  /// **'{remaining} ml to daily goal'**
  String home_water_to_daily_goal(Object remaining);

  /// No description provided for @home_details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get home_details;

  /// No description provided for @home_upgrade_plan_desc.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to unlock personalized daily targets & AI plan'**
  String get home_upgrade_plan_desc;

  /// No description provided for @home_unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock 👑'**
  String get home_unlock;

  /// No description provided for @home_quick_log_hint.
  ///
  /// In en, this message translates to:
  /// **'Quickly record a wellness entry'**
  String get home_quick_log_hint;

  /// No description provided for @food_serving_size.
  ///
  /// In en, this message translates to:
  /// **'Serving Size'**
  String get food_serving_size;

  /// No description provided for @food_serving_grams.
  ///
  /// In en, this message translates to:
  /// **'Serving (g)'**
  String get food_serving_grams;

  /// No description provided for @food_number_servings.
  ///
  /// In en, this message translates to:
  /// **'Number of Servings'**
  String get food_number_servings;

  /// No description provided for @food_calories_per_serving.
  ///
  /// In en, this message translates to:
  /// **'Calories per serving'**
  String get food_calories_per_serving;

  /// No description provided for @food_recipe_ingredients.
  ///
  /// In en, this message translates to:
  /// **'Ingredients'**
  String get food_recipe_ingredients;

  /// No description provided for @food_recipe_add_ingredient.
  ///
  /// In en, this message translates to:
  /// **'Add Ingredient'**
  String get food_recipe_add_ingredient;

  /// No description provided for @food_recipe_directions.
  ///
  /// In en, this message translates to:
  /// **'Instructions & Notes'**
  String get food_recipe_directions;

  /// No description provided for @food_recipe_total.
  ///
  /// In en, this message translates to:
  /// **'Total Recipe Nutrition'**
  String get food_recipe_total;

  /// No description provided for @food_recipe_per_serving.
  ///
  /// In en, this message translates to:
  /// **'Per Serving Nutrition'**
  String get food_recipe_per_serving;

  /// No description provided for @food_recipe_saved_toast.
  ///
  /// In en, this message translates to:
  /// **'Custom food saved successfully!'**
  String get food_recipe_saved_toast;

  /// No description provided for @food_barcode_found.
  ///
  /// In en, this message translates to:
  /// **'Product Found!'**
  String get food_barcode_found;

  /// No description provided for @food_barcode_not_found_desc.
  ///
  /// In en, this message translates to:
  /// **'We could not find this barcode in the open database. You can add it as a custom food.'**
  String get food_barcode_not_found_desc;

  /// No description provided for @food_add_custom_btn.
  ///
  /// In en, this message translates to:
  /// **'Add Custom Food'**
  String get food_add_custom_btn;

  /// No description provided for @food_scan_again.
  ///
  /// In en, this message translates to:
  /// **'Scan Again'**
  String get food_scan_again;

  /// No description provided for @food_review_items.
  ///
  /// In en, this message translates to:
  /// **'Review Detected Foods'**
  String get food_review_items;

  /// No description provided for @food_review_hint.
  ///
  /// In en, this message translates to:
  /// **'Adjust quantities or remove any unrecognized item'**
  String get food_review_hint;

  /// No description provided for @food_log_selected.
  ///
  /// In en, this message translates to:
  /// **'Log Selected Foods'**
  String get food_log_selected;

  /// No description provided for @food_favourites_title.
  ///
  /// In en, this message translates to:
  /// **'Favourite Foods'**
  String get food_favourites_title;

  /// No description provided for @food_recent_title.
  ///
  /// In en, this message translates to:
  /// **'Recent Foods'**
  String get food_recent_title;

  /// No description provided for @food_no_favourites.
  ///
  /// In en, this message translates to:
  /// **'No favourite foods yet. Tap heart on any food to save here.'**
  String get food_no_favourites;

  /// No description provided for @food_no_recents.
  ///
  /// In en, this message translates to:
  /// **'No recently logged foods found.'**
  String get food_no_recents;

  /// No description provided for @food_nutrition_details_title.
  ///
  /// In en, this message translates to:
  /// **'Daily Nutrition Details'**
  String get food_nutrition_details_title;

  /// No description provided for @food_macro_protein_label.
  ///
  /// In en, this message translates to:
  /// **'Protein Breakdown'**
  String get food_macro_protein_label;

  /// No description provided for @food_macro_carbs_label.
  ///
  /// In en, this message translates to:
  /// **'Carbs Breakdown'**
  String get food_macro_carbs_label;

  /// No description provided for @food_macro_fat_label.
  ///
  /// In en, this message translates to:
  /// **'Fat Breakdown'**
  String get food_macro_fat_label;

  /// No description provided for @food_macro_fiber_label.
  ///
  /// In en, this message translates to:
  /// **'Fiber Breakdown'**
  String get food_macro_fiber_label;

  /// No description provided for @food_daily_target_comparison.
  ///
  /// In en, this message translates to:
  /// **'Target Comparison'**
  String get food_daily_target_comparison;

  /// No description provided for @food_target_label.
  ///
  /// In en, this message translates to:
  /// **'Target: {target}'**
  String food_target_label(Object target);

  /// No description provided for @food_edit_entry.
  ///
  /// In en, this message translates to:
  /// **'Edit Diary Entry'**
  String get food_edit_entry;

  /// No description provided for @food_delete_entry.
  ///
  /// In en, this message translates to:
  /// **'Delete Entry'**
  String get food_delete_entry;

  /// No description provided for @food_grams_short.
  ///
  /// In en, this message translates to:
  /// **'{grams}g'**
  String food_grams_short(Object grams);

  /// No description provided for @food_kcal_short.
  ///
  /// In en, this message translates to:
  /// **'{kcal} kcal'**
  String food_kcal_short(Object kcal);

  /// No description provided for @water_progress.
  ///
  /// In en, this message translates to:
  /// **'{current} of {target} ml'**
  String water_progress(Object current, Object target);

  /// No description provided for @water_intake_history.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Water Logs'**
  String get water_intake_history;

  /// No description provided for @water_no_logs_today.
  ///
  /// In en, this message translates to:
  /// **'No water logged yet today. Hydrate and tap a quick add button!'**
  String get water_no_logs_today;

  /// No description provided for @water_adjust_goal.
  ///
  /// In en, this message translates to:
  /// **'Adjust Daily Goal'**
  String get water_adjust_goal;

  /// No description provided for @health_connect_banner.
  ///
  /// In en, this message translates to:
  /// **'Connected to Health Connect'**
  String get health_connect_banner;

  /// No description provided for @health_vitals_summary.
  ///
  /// In en, this message translates to:
  /// **'Daily Health Vitals'**
  String get health_vitals_summary;

  /// No description provided for @health_latest_heart_rate.
  ///
  /// In en, this message translates to:
  /// **'Latest Heart Rate'**
  String get health_latest_heart_rate;

  /// No description provided for @health_latest_bp.
  ///
  /// In en, this message translates to:
  /// **'Blood Pressure'**
  String get health_latest_bp;

  /// No description provided for @health_latest_spo2.
  ///
  /// In en, this message translates to:
  /// **'Blood Oxygen'**
  String get health_latest_spo2;

  /// No description provided for @health_latest_glucose.
  ///
  /// In en, this message translates to:
  /// **'Blood Glucose'**
  String get health_latest_glucose;

  /// No description provided for @health_latest_weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get health_latest_weight;

  /// No description provided for @health_latest_sleep.
  ///
  /// In en, this message translates to:
  /// **'Sleep Duration'**
  String get health_latest_sleep;

  /// No description provided for @health_add_manual.
  ///
  /// In en, this message translates to:
  /// **'Add Manual Measurement'**
  String get health_add_manual;

  /// No description provided for @health_history_trends.
  ///
  /// In en, this message translates to:
  /// **'Historical Trends'**
  String get health_history_trends;

  /// No description provided for @health_sync_success.
  ///
  /// In en, this message translates to:
  /// **'Health data synced successfully!'**
  String get health_sync_success;

  /// No description provided for @health_metric_sleep_hours.
  ///
  /// In en, this message translates to:
  /// **'{hours} hrs {mins} mins'**
  String health_metric_sleep_hours(Object hours, Object mins);

  /// No description provided for @health_metric_weight_val.
  ///
  /// In en, this message translates to:
  /// **'{val} kg'**
  String health_metric_weight_val(Object val);

  /// No description provided for @health_metric_hr_val.
  ///
  /// In en, this message translates to:
  /// **'{bpm} bpm'**
  String health_metric_hr_val(Object bpm);

  /// No description provided for @health_metric_spo2_val.
  ///
  /// In en, this message translates to:
  /// **'{pct}%'**
  String health_metric_spo2_val(Object pct);

  /// No description provided for @health_metric_bp_val.
  ///
  /// In en, this message translates to:
  /// **'{systolic}/{diastolic} mmHg'**
  String health_metric_bp_val(Object diastolic, Object systolic);

  /// No description provided for @health_metric_glucose_val.
  ///
  /// In en, this message translates to:
  /// **'{val} mg/dL'**
  String health_metric_glucose_val(Object val);

  /// No description provided for @health_devices_title.
  ///
  /// In en, this message translates to:
  /// **'Connected Devices & Wearables'**
  String get health_devices_title;

  /// No description provided for @health_devices_desc.
  ///
  /// In en, this message translates to:
  /// **'Manage paired smartwatches, fitness trackers, and health sensors.'**
  String get health_devices_desc;

  /// No description provided for @health_workout_editor_title.
  ///
  /// In en, this message translates to:
  /// **'Edit Workout'**
  String get health_workout_editor_title;

  /// No description provided for @health_workout_name_label.
  ///
  /// In en, this message translates to:
  /// **'Workout Name'**
  String get health_workout_name_label;

  /// No description provided for @health_workout_duration_label.
  ///
  /// In en, this message translates to:
  /// **'Duration (minutes)'**
  String get health_workout_duration_label;

  /// No description provided for @health_workout_calories_label.
  ///
  /// In en, this message translates to:
  /// **'Estimated Calories (kcal)'**
  String get health_workout_calories_label;

  /// No description provided for @health_workout_date_label.
  ///
  /// In en, this message translates to:
  /// **'Date and Time'**
  String get health_workout_date_label;

  /// No description provided for @plan_daily_wellness_roadmap.
  ///
  /// In en, this message translates to:
  /// **'Your Personalized Roadmap'**
  String get plan_daily_wellness_roadmap;

  /// No description provided for @plan_morning_routine.
  ///
  /// In en, this message translates to:
  /// **'Morning Routine'**
  String get plan_morning_routine;

  /// No description provided for @plan_afternoon_routine.
  ///
  /// In en, this message translates to:
  /// **'Midday Wellness'**
  String get plan_afternoon_routine;

  /// No description provided for @plan_evening_routine.
  ///
  /// In en, this message translates to:
  /// **'Evening Wind-Down'**
  String get plan_evening_routine;

  /// No description provided for @plan_coach_badge.
  ///
  /// In en, this message translates to:
  /// **'Bloomi AI Coach'**
  String get plan_coach_badge;

  /// No description provided for @plan_weekly_overview.
  ///
  /// In en, this message translates to:
  /// **'7-Day Wellness Focus'**
  String get plan_weekly_overview;

  /// No description provided for @plan_targets_title.
  ///
  /// In en, this message translates to:
  /// **'Wellness Targets & Goals'**
  String get plan_targets_title;

  /// No description provided for @plan_calorie_budget_label.
  ///
  /// In en, this message translates to:
  /// **'Daily Calorie Budget'**
  String get plan_calorie_budget_label;

  /// No description provided for @plan_water_budget_label.
  ///
  /// In en, this message translates to:
  /// **'Daily Water Target'**
  String get plan_water_budget_label;

  /// No description provided for @plan_step_budget_label.
  ///
  /// In en, this message translates to:
  /// **'Daily Step Goal'**
  String get plan_step_budget_label;

  /// No description provided for @plan_macro_split_label.
  ///
  /// In en, this message translates to:
  /// **'Macronutrient Ratio'**
  String get plan_macro_split_label;

  /// No description provided for @profile_personal_details.
  ///
  /// In en, this message translates to:
  /// **'Personal Details'**
  String get profile_personal_details;

  /// No description provided for @profile_body_stats.
  ///
  /// In en, this message translates to:
  /// **'Body Measurements'**
  String get profile_body_stats;

  /// No description provided for @profile_app_preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences & App Settings'**
  String get profile_app_preferences;

  /// No description provided for @profile_edit_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get profile_edit_name_hint;

  /// No description provided for @profile_edit_height_hint.
  ///
  /// In en, this message translates to:
  /// **'Height ({unit})'**
  String profile_edit_height_hint(Object unit);

  /// No description provided for @profile_edit_weight_hint.
  ///
  /// In en, this message translates to:
  /// **'Weight ({unit})'**
  String profile_edit_weight_hint(Object unit);

  /// No description provided for @profile_edit_age_hint.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get profile_edit_age_hint;

  /// No description provided for @profile_gender_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get profile_gender_male;

  /// No description provided for @profile_gender_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get profile_gender_female;

  /// No description provided for @profile_gender_other.
  ///
  /// In en, this message translates to:
  /// **'Other / Prefer not to say'**
  String get profile_gender_other;

  /// No description provided for @profile_activity_sedentary.
  ///
  /// In en, this message translates to:
  /// **'Sedentary (Little to no exercise)'**
  String get profile_activity_sedentary;

  /// No description provided for @profile_activity_light.
  ///
  /// In en, this message translates to:
  /// **'Lightly Active (1-3 days/week)'**
  String get profile_activity_light;

  /// No description provided for @profile_activity_moderate.
  ///
  /// In en, this message translates to:
  /// **'Moderately Active (3-5 days/week)'**
  String get profile_activity_moderate;

  /// No description provided for @profile_activity_very.
  ///
  /// In en, this message translates to:
  /// **'Very Active (6-7 days/week)'**
  String get profile_activity_very;

  /// No description provided for @settings_wear_os_header.
  ///
  /// In en, this message translates to:
  /// **'Wear OS Companion App'**
  String get settings_wear_os_header;

  /// No description provided for @settings_wear_os_desc.
  ///
  /// In en, this message translates to:
  /// **'Install the Bloomi tile and complication on your Wear OS watch to glance at calories, water, and steps.'**
  String get settings_wear_os_desc;

  /// No description provided for @settings_widgets_header.
  ///
  /// In en, this message translates to:
  /// **'Interactive Android Widgets'**
  String get settings_widgets_header;

  /// No description provided for @settings_widgets_desc.
  ///
  /// In en, this message translates to:
  /// **'Pin real-time widgets on your device home screen for instant updates.'**
  String get settings_widgets_desc;

  /// No description provided for @settings_about_header.
  ///
  /// In en, this message translates to:
  /// **'About Bloomi'**
  String get settings_about_header;

  /// No description provided for @settings_about_version.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.0'**
  String get settings_about_version;

  /// No description provided for @settings_about_build.
  ///
  /// In en, this message translates to:
  /// **'Build 100'**
  String get settings_about_build;

  /// No description provided for @settings_about_credits.
  ///
  /// In en, this message translates to:
  /// **'Crafted with care for mindful, healthy living.'**
  String get settings_about_credits;

  /// No description provided for @settings_terms_header.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get settings_terms_header;

  /// No description provided for @settings_privacy_header.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settings_privacy_header;

  /// No description provided for @settings_delete_header.
  ///
  /// In en, this message translates to:
  /// **'Delete Account & Data'**
  String get settings_delete_header;

  /// No description provided for @settings_delete_warning.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone. All your meals, workouts, vitals, and profile will be permanently deleted.'**
  String get settings_delete_warning;

  /// No description provided for @settings_delete_confirm_btn.
  ///
  /// In en, this message translates to:
  /// **'Permanently Delete'**
  String get settings_delete_confirm_btn;

  /// No description provided for @onboard_welcome_headline.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Bloomi ✨'**
  String get onboard_welcome_headline;

  /// No description provided for @onboard_welcome_tagline.
  ///
  /// In en, this message translates to:
  /// **'Gentle, mindful wellness tracking designed around your life.'**
  String get onboard_welcome_tagline;

  /// No description provided for @onboard_step_about.
  ///
  /// In en, this message translates to:
  /// **'About You'**
  String get onboard_step_about;

  /// No description provided for @onboard_step_goals.
  ///
  /// In en, this message translates to:
  /// **'Your Goals'**
  String get onboard_step_goals;

  /// No description provided for @onboard_step_lifestyle.
  ///
  /// In en, this message translates to:
  /// **'Daily Habits'**
  String get onboard_step_lifestyle;

  /// No description provided for @onboard_step_permissions.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get onboard_step_permissions;

  /// No description provided for @onboard_step_plan.
  ///
  /// In en, this message translates to:
  /// **'Ready!'**
  String get onboard_step_plan;

  /// No description provided for @onboard_health_connect_perm.
  ///
  /// In en, this message translates to:
  /// **'Health Connect Access'**
  String get onboard_health_connect_perm;

  /// No description provided for @onboard_step_sensors_perm.
  ///
  /// In en, this message translates to:
  /// **'Step Counter Sensor'**
  String get onboard_step_sensors_perm;

  /// No description provided for @onboard_notif_perm.
  ///
  /// In en, this message translates to:
  /// **'Mindful Reminders & Notifications'**
  String get onboard_notif_perm;

  /// No description provided for @onboard_camera_perm.
  ///
  /// In en, this message translates to:
  /// **'Camera (Barcode & Food Scanner)'**
  String get onboard_camera_perm;

  /// No description provided for @onboard_grant_permissions.
  ///
  /// In en, this message translates to:
  /// **'Grant Permissions'**
  String get onboard_grant_permissions;

  /// No description provided for @onboard_continue_dashboard.
  ///
  /// In en, this message translates to:
  /// **'Open Dashboard'**
  String get onboard_continue_dashboard;

  /// No description provided for @notif_channel_hydration_name.
  ///
  /// In en, this message translates to:
  /// **'Hydration Nudges'**
  String get notif_channel_hydration_name;

  /// No description provided for @notif_channel_hydration_desc.
  ///
  /// In en, this message translates to:
  /// **'Gentle water reminders throughout the day'**
  String get notif_channel_hydration_desc;

  /// No description provided for @notif_channel_nutrition_name.
  ///
  /// In en, this message translates to:
  /// **'Meal & Nutrition Reminders'**
  String get notif_channel_nutrition_name;

  /// No description provided for @notif_channel_nutrition_desc.
  ///
  /// In en, this message translates to:
  /// **'Breakfast, lunch, and dinner reminder alerts'**
  String get notif_channel_nutrition_desc;

  /// No description provided for @notif_channel_steps_name.
  ///
  /// In en, this message translates to:
  /// **'Step Milestones'**
  String get notif_channel_steps_name;

  /// No description provided for @notif_channel_steps_desc.
  ///
  /// In en, this message translates to:
  /// **'Celebrations when reaching daily step targets'**
  String get notif_channel_steps_desc;

  /// No description provided for @notif_channel_vitals_name.
  ///
  /// In en, this message translates to:
  /// **'Health & Vitals Checks'**
  String get notif_channel_vitals_name;

  /// No description provided for @notif_channel_vitals_desc.
  ///
  /// In en, this message translates to:
  /// **'Weight and bedtime wind-down reminders'**
  String get notif_channel_vitals_desc;

  /// No description provided for @notif_action_log_water.
  ///
  /// In en, this message translates to:
  /// **'💧 Log +250ml'**
  String get notif_action_log_water;

  /// No description provided for @notif_action_snooze.
  ///
  /// In en, this message translates to:
  /// **'Snooze 15m'**
  String get notif_action_snooze;

  /// No description provided for @notif_action_log_meal.
  ///
  /// In en, this message translates to:
  /// **'🥗 Log Meal'**
  String get notif_action_log_meal;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @common_days.
  ///
  /// In en, this message translates to:
  /// **'{count}d ago'**
  String common_days(Object count);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'ak',
    'am',
    'ar',
    'as',
    'av',
    'awa',
    'ay',
    'az',
    'ba',
    'bcl',
    'be',
    'bg',
    'bgc',
    'bho',
    'bi',
    'bm',
    'bn',
    'bo',
    'br',
    'brx',
    'bs',
    'bua',
    'ca',
    'ce',
    'ceb',
    'ch',
    'chr',
    'co',
    'cr',
    'cs',
    'csb',
    'cv',
    'cy',
    'da',
    'de',
    'doi',
    'dv',
    'dz',
    'ee',
    'el',
    'en',
    'eo',
    'es',
    'et',
    'eu',
    'fa',
    'ff',
    'fi',
    'fil',
    'fj',
    'fo',
    'fr',
    'fur',
    'fy',
    'ga',
    'gbm',
    'gd',
    'gl',
    'gn',
    'grt',
    'gu',
    'ha',
    'haw',
    'he',
    'hi',
    'hil',
    'hmn',
    'hne',
    'hr',
    'ht',
    'hu',
    'hy',
    'id',
    'ig',
    'ilo',
    'is',
    'it',
    'iu',
    'ja',
    'jv',
    'ka',
    'kfy',
    'kha',
    'kk',
    'kl',
    'km',
    'kn',
    'ko',
    'kok',
    'ks',
    'ksw',
    'ku',
    'ky',
    'la',
    'lb',
    'lbj',
    'lg',
    'lij',
    'ln',
    'lo',
    'lt',
    'lus',
    'lv',
    'mag',
    'mai',
    'mg',
    'mh',
    'mi',
    'mk',
    'ml',
    'mn',
    'mni',
    'mnw',
    'mr',
    'ms',
    'mt',
    'mwr',
    'my',
    'nah',
    'ne',
    'new',
    'nl',
    'no',
    'nr',
    'nv',
    'ny',
    'oc',
    'oj',
    'om',
    'or',
    'os',
    'pa',
    'pag',
    'pam',
    'pap',
    'pl',
    'ps',
    'pt',
    'qu',
    'raj',
    'rm',
    'ro',
    'ru',
    'rw',
    'sa',
    'sah',
    'sat',
    'sc',
    'sd',
    'shn',
    'si',
    'sk',
    'sl',
    'sm',
    'sn',
    'so',
    'sq',
    'sr',
    'ss',
    'st',
    'su',
    'sv',
    'sw',
    'szl',
    'ta',
    'tcy',
    'te',
    'tg',
    'th',
    'ti',
    'tk',
    'tn',
    'to',
    'tpi',
    'tr',
    'trp',
    'ts',
    'tt',
    'tyv',
    'ug',
    'uk',
    'ur',
    'uz',
    've',
    'vec',
    'vi',
    'war',
    'wo',
    'xh',
    'yi',
    'yo',
    'yua',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'en':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsEnIn();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'ak':
      return AppLocalizationsAk();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'av':
      return AppLocalizationsAv();
    case 'awa':
      return AppLocalizationsAwa();
    case 'ay':
      return AppLocalizationsAy();
    case 'az':
      return AppLocalizationsAz();
    case 'ba':
      return AppLocalizationsBa();
    case 'bcl':
      return AppLocalizationsBcl();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bgc':
      return AppLocalizationsBgc();
    case 'bho':
      return AppLocalizationsBho();
    case 'bi':
      return AppLocalizationsBi();
    case 'bm':
      return AppLocalizationsBm();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'br':
      return AppLocalizationsBr();
    case 'brx':
      return AppLocalizationsBrx();
    case 'bs':
      return AppLocalizationsBs();
    case 'bua':
      return AppLocalizationsBua();
    case 'ca':
      return AppLocalizationsCa();
    case 'ce':
      return AppLocalizationsCe();
    case 'ceb':
      return AppLocalizationsCeb();
    case 'ch':
      return AppLocalizationsCh();
    case 'chr':
      return AppLocalizationsChr();
    case 'co':
      return AppLocalizationsCo();
    case 'cr':
      return AppLocalizationsCr();
    case 'cs':
      return AppLocalizationsCs();
    case 'csb':
      return AppLocalizationsCsb();
    case 'cv':
      return AppLocalizationsCv();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'doi':
      return AppLocalizationsDoi();
    case 'dv':
      return AppLocalizationsDv();
    case 'dz':
      return AppLocalizationsDz();
    case 'ee':
      return AppLocalizationsEe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'eo':
      return AppLocalizationsEo();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'ff':
      return AppLocalizationsFf();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fj':
      return AppLocalizationsFj();
    case 'fo':
      return AppLocalizationsFo();
    case 'fr':
      return AppLocalizationsFr();
    case 'fur':
      return AppLocalizationsFur();
    case 'fy':
      return AppLocalizationsFy();
    case 'ga':
      return AppLocalizationsGa();
    case 'gbm':
      return AppLocalizationsGbm();
    case 'gd':
      return AppLocalizationsGd();
    case 'gl':
      return AppLocalizationsGl();
    case 'gn':
      return AppLocalizationsGn();
    case 'grt':
      return AppLocalizationsGrt();
    case 'gu':
      return AppLocalizationsGu();
    case 'ha':
      return AppLocalizationsHa();
    case 'haw':
      return AppLocalizationsHaw();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hil':
      return AppLocalizationsHil();
    case 'hmn':
      return AppLocalizationsHmn();
    case 'hne':
      return AppLocalizationsHne();
    case 'hr':
      return AppLocalizationsHr();
    case 'ht':
      return AppLocalizationsHt();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'ig':
      return AppLocalizationsIg();
    case 'ilo':
      return AppLocalizationsIlo();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'iu':
      return AppLocalizationsIu();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ka':
      return AppLocalizationsKa();
    case 'kfy':
      return AppLocalizationsKfy();
    case 'kha':
      return AppLocalizationsKha();
    case 'kk':
      return AppLocalizationsKk();
    case 'kl':
      return AppLocalizationsKl();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'kok':
      return AppLocalizationsKok();
    case 'ks':
      return AppLocalizationsKs();
    case 'ksw':
      return AppLocalizationsKsw();
    case 'ku':
      return AppLocalizationsKu();
    case 'ky':
      return AppLocalizationsKy();
    case 'la':
      return AppLocalizationsLa();
    case 'lb':
      return AppLocalizationsLb();
    case 'lbj':
      return AppLocalizationsLbj();
    case 'lg':
      return AppLocalizationsLg();
    case 'lij':
      return AppLocalizationsLij();
    case 'ln':
      return AppLocalizationsLn();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lus':
      return AppLocalizationsLus();
    case 'lv':
      return AppLocalizationsLv();
    case 'mag':
      return AppLocalizationsMag();
    case 'mai':
      return AppLocalizationsMai();
    case 'mg':
      return AppLocalizationsMg();
    case 'mh':
      return AppLocalizationsMh();
    case 'mi':
      return AppLocalizationsMi();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mni':
      return AppLocalizationsMni();
    case 'mnw':
      return AppLocalizationsMnw();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'mt':
      return AppLocalizationsMt();
    case 'mwr':
      return AppLocalizationsMwr();
    case 'my':
      return AppLocalizationsMy();
    case 'nah':
      return AppLocalizationsNah();
    case 'ne':
      return AppLocalizationsNe();
    case 'new':
      return AppLocalizationsNew();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'nr':
      return AppLocalizationsNr();
    case 'nv':
      return AppLocalizationsNv();
    case 'ny':
      return AppLocalizationsNy();
    case 'oc':
      return AppLocalizationsOc();
    case 'oj':
      return AppLocalizationsOj();
    case 'om':
      return AppLocalizationsOm();
    case 'or':
      return AppLocalizationsOr();
    case 'os':
      return AppLocalizationsOs();
    case 'pa':
      return AppLocalizationsPa();
    case 'pag':
      return AppLocalizationsPag();
    case 'pam':
      return AppLocalizationsPam();
    case 'pap':
      return AppLocalizationsPap();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'qu':
      return AppLocalizationsQu();
    case 'raj':
      return AppLocalizationsRaj();
    case 'rm':
      return AppLocalizationsRm();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'rw':
      return AppLocalizationsRw();
    case 'sa':
      return AppLocalizationsSa();
    case 'sah':
      return AppLocalizationsSah();
    case 'sat':
      return AppLocalizationsSat();
    case 'sc':
      return AppLocalizationsSc();
    case 'sd':
      return AppLocalizationsSd();
    case 'shn':
      return AppLocalizationsShn();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sm':
      return AppLocalizationsSm();
    case 'sn':
      return AppLocalizationsSn();
    case 'so':
      return AppLocalizationsSo();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'ss':
      return AppLocalizationsSs();
    case 'st':
      return AppLocalizationsSt();
    case 'su':
      return AppLocalizationsSu();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'szl':
      return AppLocalizationsSzl();
    case 'ta':
      return AppLocalizationsTa();
    case 'tcy':
      return AppLocalizationsTcy();
    case 'te':
      return AppLocalizationsTe();
    case 'tg':
      return AppLocalizationsTg();
    case 'th':
      return AppLocalizationsTh();
    case 'ti':
      return AppLocalizationsTi();
    case 'tk':
      return AppLocalizationsTk();
    case 'tn':
      return AppLocalizationsTn();
    case 'to':
      return AppLocalizationsTo();
    case 'tpi':
      return AppLocalizationsTpi();
    case 'tr':
      return AppLocalizationsTr();
    case 'trp':
      return AppLocalizationsTrp();
    case 'ts':
      return AppLocalizationsTs();
    case 'tt':
      return AppLocalizationsTt();
    case 'tyv':
      return AppLocalizationsTyv();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 've':
      return AppLocalizationsVe();
    case 'vec':
      return AppLocalizationsVec();
    case 'vi':
      return AppLocalizationsVi();
    case 'war':
      return AppLocalizationsWar();
    case 'wo':
      return AppLocalizationsWo();
    case 'xh':
      return AppLocalizationsXh();
    case 'yi':
      return AppLocalizationsYi();
    case 'yo':
      return AppLocalizationsYo();
    case 'yua':
      return AppLocalizationsYua();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
