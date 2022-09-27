class NotificationModel {
  String title;
  bool status;
  NotificationModel({required this.title, required this.status});
}

List<NotificationModel> listNotification = [
  NotificationModel(title: 'General Notification', status: true),
  NotificationModel(title: 'Sound', status: false),
  NotificationModel(title: 'Virable', status: false),
  NotificationModel(title: 'Special Offers', status: true),
  NotificationModel(title: 'Promo & Discount', status: true),
  NotificationModel(title: 'Payments', status: true),
  NotificationModel(title: 'Cashback', status: false),
  NotificationModel(title: 'App Updates', status: true),
  NotificationModel(title: 'New Service Available', status: true),
  NotificationModel(title: 'New Tips Available', status: false),
];
