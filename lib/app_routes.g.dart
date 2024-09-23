// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginPageData,
      $homePageData,
    ];

RouteBase get $loginPageData => GoRouteData.$route(
      path: '/login',
      factory: $LoginPageDataExtension._fromState,
    );

extension $LoginPageDataExtension on LoginPageData {
  static LoginPageData _fromState(GoRouterState state) => const LoginPageData();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homePageData => GoRouteData.$route(
      path: '/home',
      factory: $HomePageDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'terms',
          factory: $TermsPageDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'policy',
          factory: $PolicyPageDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'app',
          factory: $AppPageDataExtension._fromState,
        ),
      ],
    );

extension $HomePageDataExtension on HomePageData {
  static HomePageData _fromState(GoRouterState state) => const HomePageData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TermsPageDataExtension on TermsPageData {
  static TermsPageData _fromState(GoRouterState state) => const TermsPageData();

  String get location => GoRouteData.$location(
        '/home/terms',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PolicyPageDataExtension on PolicyPageData {
  static PolicyPageData _fromState(GoRouterState state) =>
      const PolicyPageData();

  String get location => GoRouteData.$location(
        '/home/policy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AppPageDataExtension on AppPageData {
  static AppPageData _fromState(GoRouterState state) => AppPageData(
        _$AppEnumMap._$fromName(state.uri.queryParameters['app-id']!),
      );

  String get location => GoRouteData.$location(
        '/home/app',
        queryParams: {
          'app-id': _$AppEnumMap[appId],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$AppEnumMap = {
  App.paisa: 'paisa',
  App.retro: 'retro',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
