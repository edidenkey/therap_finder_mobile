import 'package:get/get.dart';

import 'package:theraplib_mobile/controllers/index.dart';
import 'package:theraplib_mobile/middlewares/index.dart';
import 'package:theraplib_mobile/pages/index.dart';

abstract class AppPages {
  //---------------------------------- Routes
  // Auth
  static const kLogin = '/login';
  static const kRegisterAccountDetails = '/register-account-details';
  static const kRegisterAddress = '/register-address';
  static const kRegisterCreatePassword = '/register-create-password';

  // Dashboard
  static const kDashboard = '/';
  static const kBooking = '/booking';
  static const kDoctors = '/doctors';
  static const kDoctorDetails = '/doctor-details';

  // Shop
  static const kCart = '/cart';
  static const kProductDetails = '/product-details';

  // Settings
  static const kAccount = '/account';
  static const kChangePassword = '/change-password';
  static const kChangePhone = '/change-phone';
  static const kOrders = '/orders';
  static const kPaymentTypes = '/payment-types';
  static const kProfile = '/profile';
  static const kServices = '/services';

  //---------------------------------- Pages
  static final pages = [
    // Auth
    GetPage(
      name: kLogin,
      page: () => const LoginPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<LoginController>(() => LoginController());
      }),
    ),
    GetPage(
      name: kRegisterAccountDetails,
      page: () => const AccountDetailsPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<AccountDetailsController>(() => AccountDetailsController());
      }),
    ),
    GetPage(
      name: kRegisterAddress,
      page: () => const AddressPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<AddressController>(() => AddressController());
      }),
    ),
    GetPage(
      name: kRegisterCreatePassword,
      page: () => const CreatePasswordPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<CreatePasswordController>(() => CreatePasswordController());
      }),
    ),

    // Dashboard
    GetPage(
      name: kDashboard,
      page: () => const DashboardPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(() => HomeController());
        Get.lazyPut<ShopController>(() => ShopController());
        Get.lazyPut<MyBookingController>(() => MyBookingController());
      }),
      middlewares: [
        AuthMiddleware(),
      ],
      children: [
        GetPage(
          name: kBooking,
          page: () => const BookingPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<BookingController>(() => BookingController());
          }),
        ),
        GetPage(
          name: kDoctors,
          page: () => const DoctorsPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<DoctorsController>(() => DoctorsController());
          }),
        ),
        GetPage(
          name: kDoctorDetails,
          page: () => const DoctorDetailsPage(),
        ),

        // Products
        GetPage(
          name: kCart,
          page: () => const CartPage(),
        ),
        GetPage(
          name: kProductDetails,
          page: () => const ProductDetailsPage(),
        ),

        // Settings
        GetPage(
          name: kAccount,
          page: () => const AccountPage(),
        ),
        GetPage(
          name: kChangePassword,
          page: () => const ChangePasswordPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
          }),
        ),
        GetPage(
          name: kChangePhone,
          page: () => const ChangePhonePage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ChangePhoneController>(() => ChangePhoneController());
          }),
        ),
        GetPage(
          name: kOrders,
          page: () => const OrdersPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<OrdersController>(() => OrdersController());
          }),
        ),
        GetPage(
          name: kPaymentTypes,
          page: () => const ProfilePage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<PaymentTypesController>(() => PaymentTypesController());
          }),
        ),
        GetPage(
          name: kProfile,
          page: () => const ProfilePage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ProfileController>(() => ProfileController());
          }),
        ),
        GetPage(
          name: kServices,
          page: () => const ServicesPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut<ServicesController>(() => ServicesController());
          }),
        ),
      ],
    ),
  ];
}
