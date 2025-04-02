import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import 'package:theraplib_mobile/helpers/index.dart';
import 'package:theraplib_mobile/models/index.dart';
import 'bookings/index.dart';
import 'home/index.dart';
import 'settings/index.dart';
import 'products/index.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with SingleTickerProviderStateMixin<DashboardPage> {
  late final TabController _tabController;
  final ScrollController _homeScrollController = ScrollController();
  final ScrollController _myBookingsScrollController = ScrollController();
  final ScrollController _settingsScrollController = ScrollController();
  final ScrollController _shopScrollController = ScrollController();
  int _currentPageIndex = 0;
  bool _canPop = true;

  @override
  void initState() {
    super.initState();
    if (Get.parameters['page-index'] != null) _currentPageIndex = int.parse(Get.parameters['page-index']!);
    _tabController = TabController(
      initialIndex: _currentPageIndex,
      animationDuration: const Duration(milliseconds: 500),
      length: _pages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _homeScrollController.dispose();
    _myBookingsScrollController.dispose();
    _settingsScrollController.dispose();
    _shopScrollController.dispose();
    super.dispose();
  }

  DashboardItem get _homePage => DashboardItem(
        page: AppUtils.isClient
            ? ClientHomePage(
                key: const PageStorageKey<String>('Accueil'),
                scrollController: _homeScrollController,
                navigate: _changePage,
                canPop: _handleCanPop,
              )
            : TherapeuteHomePage(
                key: const PageStorageKey<String>('Accueil'),
                scrollController: _homeScrollController,
                navigate: _changePage,
                canPop: _handleCanPop,
              ),
        scrollController: _homeScrollController,
        navigation: const NavigationDestination(
          icon: Icon(Ionicons.home_outline),
          selectedIcon: Icon(Ionicons.home),
          label: 'Accueil',
          tooltip: 'Accueil',
        ),
      );

  DashboardItem get _shopPage {
    final label = AppUtils.isClient ? 'Boutique' : 'Mes produits';
    return DashboardItem(
      page: ShopPage(
        key: PageStorageKey<String>(label),
        scrollController: _shopScrollController,
        navigate: _changePage,
        canPop: _handleCanPop,
      ),
      scrollController: _shopScrollController,
      navigation: NavigationDestination(
        icon: const Icon(Ionicons.storefront_outline),
        selectedIcon: const Icon(Ionicons.storefront),
        label: label,
        tooltip: label,
      ),
    );
  }

  DashboardItem get _myBookingsPage => DashboardItem(
        page: MyBookingsPage(
          key: const PageStorageKey<String>('Rendez-vous'),
          scrollController: _myBookingsScrollController,
          navigate: _changePage,
          canPop: _handleCanPop,
        ),
        scrollController: _myBookingsScrollController,
        navigation: const NavigationDestination(
          icon: Icon(Ionicons.calendar_outline),
          selectedIcon: Icon(Ionicons.calendar),
          label: 'Rendez-vous',
          tooltip: 'Rendez-vous',
        ),
      );

  DashboardItem get _settingsPage => DashboardItem(
        page: SettingsPage(
          key: const PageStorageKey<String>('Paramètres'),
          scrollController: _settingsScrollController,
          navigate: _changePage,
          canPop: _handleCanPop,
        ),
        scrollController: _settingsScrollController,
        navigation: const NavigationDestination(
          icon: Icon(Ionicons.settings_outline),
          selectedIcon: Icon(Icons.settings_rounded),
          label: 'Paramètres',
          tooltip: 'Paramètres',
        ),
      );

  List<DashboardItem> get _dashboardItems => [_homePage, _shopPage, _myBookingsPage, _settingsPage];

  List<Widget> get _pages => _dashboardItems.map((item) => item.page).toList();

  List<NavigationDestination> get _navigations => _dashboardItems.map((item) => item.navigation).toList();

  void _changePage(int index) {
    FocusManager.instance.primaryFocus?.unfocus();
    if (_currentPageIndex == index) {
      _scrollToTop(_dashboardItems[_currentPageIndex].scrollController);
      return;
    }
    setState(() {
      _currentPageIndex = index;
      _tabController.animateTo(_currentPageIndex, curve: Curves.easeOutQuad);
    });
  }

  Future<bool> _scrollToTop(ScrollController scrollController) async {
    if (scrollController.offset >= 1) {
      await scrollController.animateTo(
        0.0,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
      );
      return true;
    }
    return false;
  }

  void _handleCanPop(bool canPop) => _canPop = canPop;

  Future<bool> _onWillPop() async {
    if (!_canPop) return false;
    if (_currentPageIndex == 0) {
      return !(await _scrollToTop(_dashboardItems[_currentPageIndex].scrollController));
    }
    setState(() {
      _currentPageIndex = 0;
      _tabController.animateTo(_currentPageIndex, curve: Curves.easeOutQuad);
    });
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: _pages,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: NavigationBar(
            selectedIndex: _currentPageIndex,
            onDestinationSelected: _changePage,
            destinations: _navigations,
          ),
        ),
      ),
    );
  }
}
