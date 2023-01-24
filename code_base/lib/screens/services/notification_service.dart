import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationService {
  Future<void> initialNotification() async {
    await AwesomeNotifications().initialize(
      null,
      // 'resource://drawable/res_app_icon',
      [
        NotificationChannel(
          channelKey: 'alerts',
          channelName: "Alerts",
          channelDescription: "Description Channel",
          playSound: true,
          onlyAlertOnce: true,
          enableLights: true,
          enableVibration: true,
        )
      ],
    );
  }

  Future<void> requestPermisionNotification() async {
    AwesomeNotifications().isNotificationAllowed().then((allow) {
      if (!allow) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  Future<void> showNotification(
      int id, String channelKey, String title, String body,
      {String? bigPicture, String? largeIcon}) async {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: id,
            channelKey: channelKey,
            title: title,
            body: body,
            bigPicture: bigPicture,
            largeIcon: largeIcon,
            // bigPicture:
            //     'https://storage.googleapis.com/cms-storage-bucket/d406c736e7c4c57f5f61.png',
            notificationLayout: NotificationLayout.BigPicture
            // largeIcon:
            //     'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
            ));
  }
}
