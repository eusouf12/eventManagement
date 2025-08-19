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
import 'package:event_management/view/screen/host/home_screen/view/host_home_screen.dart';
import 'package:get/get.dart';
import '../../view/screen/dmOver/favorite/view/favourite_screen/favourite_screen.dart';
import '../../view/screen/dmOver/favorite/view/gellery_screen/gallery_screen.dart';
import '../../view/screen/dmOver/favorite/view/update_screen/update_screen.dart';
import '../../view/screen/dmOver/home_screen/view/bar_details_page/bar_details_page.dart';
import '../../view/screen/dmOver/home_screen/view/create_story_screen/create_story_screen.dart';
import '../../view/screen/dmOver/home_screen/view/createpostscreen/create_post_screen.dart';
import '../../view/screen/dmOver/home_screen/view/restaurant_details_page/restaurant_details_page.dart';
import '../../view/screen/dmOver/message/message_screen/message_screen.dart';
import '../../view/screen/dmOver/profile/view/event_history/event_history.dart';
import '../../view/screen/dmOver/profile/view/tickets_history/tickets_history.dart';
import '../../view/screen/dmOver/profile/widget/custom_event_history_card/custom_event_history_card.dart';
import '../../view/screen/dmOver/social/social_screen/social_screen.dart';
import '../../view/screen/profile_role/profile_role_screen.dart';

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
  static const String restaurantDetailsPage = '/restaurantDetailsPage';
  static const String barDetailsPage = '/barDetailsPage';
  static const String galleryScreen = '/galleryScreen';
  static const String updateScreen = '/updateScreen';
  static const String createPostScreen = '/createPostScreen';
  static const String createStoryScreen = '/createStoryScreen';
  static const String chooseRoleScreen = '/chooseRoleScreen';
  static const String ticketsHistory = '/ticketsHistory';
  static const String eventHistory = '/eventHistory';


  static List<GetPage> routes = [
    // GetPage(name: profileRoleScreen, page: () => ProfileRoleScreen()),
    GetPage(name: chooseRoleScreen, page: () => ChooseRoleScreen()),
    GetPage(name: dmHomeScreen, page: () => DmHomeScreen()),
    GetPage(name: hostHomeScreen, page: () => HostHomeScreen()),
    GetPage(name: favouriteScreen, page: () => FavouriteScreen()),
    GetPage(name: messageScreen, page: () => MessageScreen()),
    GetPage(name: socialScreen, page: () => SocialScreen()),
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
    GetPage(name: restaurantDetailsPage, page: () => RestaurantDetailsPage()),
    GetPage(name: barDetailsPage, page: () => BarDetailsPage()),
    GetPage(name: galleryScreen, page: () => GalleryScreen()),
    GetPage(name: updateScreen, page: () => UpdateScreen()),
    GetPage(name: createPostScreen, page: () => CreatePostScreen()),
    GetPage(name: createStoryScreen, page: () => CreateStoryScreen()),
    GetPage(name: ticketsHistory, page: () => TicketsHistory()),
    GetPage(name: eventHistory, page: () => EventHistory()),
  ];
}
