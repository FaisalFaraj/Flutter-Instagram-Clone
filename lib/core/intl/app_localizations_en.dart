import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String pageHomeTitle(Object firstName) {
    return 'مرحباً $firstName';
  }

  @override
  String get post_your_story => 'Post Your Story';

  @override
  String get edit_profile => 'Edit Profile';

  @override
  String get new_post_screen => 'New Post Screen';

  @override
  String get notifications_screen => 'Notifications Screen';

  @override
  String get soon => 'Soon';

  @override
  String get posts => 'Posts';

  @override
  String get followers => 'Followers';

  @override
  String get following => 'Following';

  @override
  String get follow => 'Follow';

  @override
  String get message => 'Message';

  @override
  String get reels_screen => 'Reels Screen';

  @override
  String get search => 'Search';

  @override
  String get send_message => 'Send Message';

  @override
  String get comments => 'Comments';

  @override
  String get liked_by => 'Liked By';

  @override
  String get and => 'And';

  @override
  String get others => 'Others';

  @override
  String get view_all => 'View All';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Cancel';

  @override
  String get home => 'Home';

  @override
  String get dark_mode => 'Dark Mode';

  @override
  String get language => 'Language';

  @override
  String get chose_language => 'Chose Language';

  @override
  String get notification => 'Notifications';

  @override
  String get about_app => 'About';

  @override
  String get settings => 'Settings';

  @override
  String get favorites => 'Favorites';

  @override
  String get profile => 'Profile';

  @override
  String get user => 'User';

  @override
  String get version => 'Version';

  @override
  String get about_developers => 'About Developers';

  @override
  String get empty_list => 'Empty list';

  @override
  String get exception_indicator_try_again => 'Try again';

  @override
  String get generic_error_indicator_error_while_fetching_data => 'An error occurred while fetching data';

  @override
  String get not_internet_connection => 'An error occurred while connecting to the Internet Please check the connection';

  @override
  String get no_connection_indicator_no_connection => 'No connection';

  @override
  String get no_connection_indicator_try_again_later => 'Please try again later';

  @override
  String get not_authorized_indicator_you_need_to_login_to_see_this_page => 'To be able to see the contents of this page, you must be logged in';

  @override
  String get not_authorized_indicator_login_register => 'Register/Login';
}
