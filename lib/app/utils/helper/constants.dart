import 'package:e_commerce_with_firebase/app/ui/models/accont/account_model.dart';
import 'package:e_commerce_with_firebase/app/ui/models/accont/profile_model.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/address/address.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/order/order.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/payment/payment.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/profile/inner_screen/Birthday.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/profile/inner_screen/Change_password.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/profile/inner_screen/Email.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/profile/inner_screen/Gender.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/profile/inner_screen/phone_number.dart';
import 'package:e_commerce_with_firebase/app/ui/pages/inner_screen/profile/profile.dart';
import 'package:e_commerce_with_firebase/app/utils/helper/app_assets.dart';
import 'package:get/get.dart';

class Constants {
  static List<AccountModel> accountItem = [
    AccountModel(() {
      Get.to(const Profile());
    }, image: Assets.profile, title: 'Profile'),
    AccountModel(() {
      Get.to(const Order());
    }, image: Assets.order, title: 'Order'),
    AccountModel(() {
      Get.to(const Address());
    }, image: Assets.address, title: 'Address'),
    AccountModel(() {
      Get.to(const Payment());
    }, image: Assets.creaditcard, title: 'Payment'),
  ];

  static List<ProfileModel> profile = [
    ProfileModel(() {
      Get.to(const Gender());
    }, image: Assets.gender, title: 'Gender', data: 'Male'),
    ProfileModel(() {
      Get.to(const Birthday());
    }, image: Assets.birthday, title: 'BirthDay', data: '12-12-2000'),
    ProfileModel(() {
      Get.to(const Email());
    }, image: Assets.email, title: 'Email', data: 'ahmedadel@gmail.com'),
    ProfileModel(() {
      Get.to(const PhoneNumber());
    }, image: Assets.phone, title: 'Phone Number', data: '0106937116'),
    ProfileModel(() {
      Get.to(const ChangePassword());
    }, image: Assets.changePassword, title: 'Change Password', data: '*******'),
  ];
}
