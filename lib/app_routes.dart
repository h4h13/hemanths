import 'package:flutter/material.dart';

import 'package:flutter_hemanth_dev/pages/landing/main_page.dart';
import 'package:flutter_hemanth_dev/pages/projects/paisa_page.dart';
import 'package:flutter_hemanth_dev/pages/projects/retro_music_page.dart';
import 'package:flutter_hemanth_dev/pages/terms/terms.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.g.dart';

final GoRouter goRouter = GoRouter(
  routes: $appRoutes,
  initialLocation: '/home',
  debugLogDiagnostics: true,
  errorBuilder: (c, s) => ErrorRoute(error: s.error!).build(c, s),
);

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Center(
      child: Text(state.error.toString()),
    );
  }
}

@TypedGoRoute<LoginPageData>(
  path: '/login',
)
class LoginPageData extends GoRouteData {
  const LoginPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Center(child: CircularProgressIndicator());
  }
}

class AppPageData extends GoRouteData {
  const AppPageData(this.appId);

  final App appId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    if (appId == App.paisa) {
      return const PaisaPage();
    } else {
      return const RetroMusicPage();
    }
  }
}

@TypedGoRoute<HomePageData>(
  path: '/home',
  routes: [
    TypedGoRoute<TermsPageData>(path: 'terms'),
    TypedGoRoute<PolicyPageData>(path: 'policy'),
    TypedGoRoute<AppPageData>(path: 'app')
  ],
)
class HomePageData extends GoRouteData {
  const HomePageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MainPage();
  }
}

class TermsPageData extends GoRouteData {
  const TermsPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TermsPage(
      htmlUrl: 'assets/html/terms_and_conditions.html',
    );
  }
}

class PolicyPageData extends GoRouteData {
  const PolicyPageData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TermsPage(
      htmlUrl: 'assets/html/privacy.html',
    );
  }
}

enum App { paisa, retro }
