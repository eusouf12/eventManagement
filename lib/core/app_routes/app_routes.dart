import 'package:event_management/view/screen/dmOver/favorite/view/bar_restaurant_single_details_screen/bar_restaurant_single_details.dart';
import 'package:event_management/view/screen/dmOver/favorite/view/invited_screen/invited_screen.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/Nearby_bar_screen/Nearby_bar_screen.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/bar_resturent_screen/bar_resturent_screen.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/confirm_booking/confirm_booking.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/confirmation/confirmation.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/dm_filter/dm_filter.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/dm_home_screen/dm_home_screen.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/dm_live_event/dm_live_event.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/dm_live_event_details/dm_live_event_details.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/dm_upcoming_details/dm_upcoming_details.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/dm_upcoming_event_screen/dm_upcoming_event_screen.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/nearby_restaurants_screen/nearby_restaurants_screen.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/notification_screen/notification_screen.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/qr_confirm/qr_confirm.dart';
import 'package:event_management/view/screen/dmOver/home_screen/view/venue_facility/venue_facility.dart';
import 'package:event_management/view/screen/dmOver/message/view/message_screen/messege_screen.dart';
import 'package:event_management/view/screen/dmOver/social/view/social_media/social_media_screen.dart';
import 'package:event_management/view/screen/host/home_screen/view/host_home_screen.dart';
import 'package:event_management/view/screen/profile_role/profile_role_screen.dart';
import 'package:get/get.dart';

import '../../view/screen/dmOver/favorite/view/favourite_screen/favourite_screen.dart';

class AppRoutes {
  static const String profileRoleScreen = '/profileRoleScreen';
  static const String dmHomeScreen = '/dmHomeScreen';
  static const String hostHomeScreen = '/hostHomeScreen';
  static const String favouriteScreen = '/fravouriteScreen';
  static const String messageScreen = '/messageScreen';
  static const String profileScreen = '/profileScreen';
  static const String socialScreen = '/socialScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String dmLiveScreen = '/dmLiveScreen';
  static const String dmLiveEventDetails = '/dmLiveEventDetails';
  static const String dmUpcomingEventScreen = '/dmUpcomingEventScreen';
  static const String dmUpcomingEventDetails = '/dmUpcomingEventDetails';
  static const String venueFacility = '/venueFacility';
  static const String dmFilter = '/dmFilter';
  static const String confirmBooking = '/confirmBooking';
  static const String confarmation = '/confarmation';
  static const String qrConfirm = '/qrConfirm';
  static const String invitedScreen = '/invitedScreen';
  static const String barRestaurants = '/barRestaurants';
  static const String bar = '/bar';
  static const String restaurants = '/restaurants';
  static const String barrestaurantsdetails = '/barrestaurantsdetails';


  static List<GetPage> routes = [
    GetPage(name: profileRoleScreen, page: () => ProfileRoleScreen()),
    GetPage(name: dmHomeScreen, page: () => DmHomeScreen()),
    GetPage(name: hostHomeScreen, page: () => HostHomeScreen()),
    GetPage(name: favouriteScreen, page: () => FavouriteScreen()),
    GetPage(name: messageScreen, page: () => MessageScreen()),
    GetPage(name: socialScreen, page: () => SocialMediaScreen()),
    GetPage(name: profileScreen, page: () => HostHomeScreen()),
    GetPage(name: notificationScreen, page: () => NotificationScreen()),
    GetPage(name: dmLiveScreen, page: () => DmLiveEvent()),
    GetPage(name: dmLiveEventDetails, page: () => DmLiveEventDetails()),
    GetPage(name: dmUpcomingEventScreen, page: () => DmUpcomingEventScreen()),
    GetPage(name: dmUpcomingEventDetails, page: () => DmUpcomingDetails()),
    GetPage(name: venueFacility, page: () => VenueFacility()),
    GetPage(name: dmFilter, page: () => DmFilter()),
    GetPage(name: confirmBooking, page: () => ConfirmBooking()),
    GetPage(name: confarmation, page: () => Confirmation()),
    GetPage(name: qrConfirm, page: () => QrConfirm()),
    GetPage(name: invitedScreen, page: () => InvitedScreen()),
    GetPage(name: barRestaurants, page: () => BarResturentScreen()),
    GetPage(name: bar, page: () => NearbyBarScreen()),
    GetPage(name: restaurants, page: () => NearbyRestaurantsScreen()),
    GetPage(name: barrestaurantsdetails, page: () => BarRestaurantSingleDetails()),


  ];
}
