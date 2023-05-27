import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String pageHomeTitle(Object firstName) {
    return 'مرحباً $firstName';
  }

  @override
  String get post_your_story => 'انشر قصتك';

  @override
  String get edit_profile => 'تعديل الحساب';

  @override
  String get new_post_screen => 'شاشة منشور جديد';

  @override
  String get notifications_screen => 'شاشة الأشعارات';

  @override
  String get soon => 'قريبا';

  @override
  String get posts => 'المناشير';

  @override
  String get followers => 'متابعين';

  @override
  String get following => 'يتابع';

  @override
  String get follow => 'تابع';

  @override
  String get message => 'رسالة';

  @override
  String get reels_screen => 'شاشة ريلز';

  @override
  String get search => 'بحث';

  @override
  String get send_message => 'ارسل رسالة';

  @override
  String get comments => 'التعليقات';

  @override
  String get liked_by => 'اعجب ب';

  @override
  String get and => 'و';

  @override
  String get others => 'اخرى';

  @override
  String get view_all => 'عرض الكل';

  @override
  String get confirm => 'تم';

  @override
  String get cancel => 'الغاء';

  @override
  String get home => 'الرئيسية';

  @override
  String get dark_mode => 'الوضع الليلي';

  @override
  String get language => 'اللغة';

  @override
  String get chose_language => 'اختر اللغة';

  @override
  String get notification => 'الاشعارات';

  @override
  String get about_app => 'عن التطبيق';

  @override
  String get settings => 'الاعدادات';

  @override
  String get favorites => 'المفضلة';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get user => 'المستخدم';

  @override
  String get version => 'النسخة';

  @override
  String get about_developers => 'عن المبرمجين';

  @override
  String get empty_list => 'قائمة فارغة';

  @override
  String get exception_indicator_try_again => 'المحاولة مرة أخرى';

  @override
  String get generic_error_indicator_error_while_fetching_data => 'حدث خطأاثناء جلب البيانات';

  @override
  String get not_internet_connection => 'حدث خطأ اثناء الاتصال بالانترنت الرجاء التاكد من الاتصال';

  @override
  String get no_connection_indicator_no_connection => 'لا يوجد اتصال';

  @override
  String get no_connection_indicator_try_again_later => 'الرجاء المحاولة في وقت لاحق';

  @override
  String get not_authorized_indicator_you_need_to_login_to_see_this_page => 'لنتمكن من رؤية محتويات هذه الصفحة يتوجب عليك الدخول اولاً';

  @override
  String get not_authorized_indicator_login_register => 'التسجيل/ الدخول';
}
