class AppointmentObject {
  final String date;
  final String time;
  final String name;
  final int type;
  final String status;
  AppointmentObject(
      {required this.date,
      required this.time,
      required this.name,
      required this.type,
      required this.status});
}

List<AppointmentObject> listAppointment = [
  AppointmentObject(
      type: 1,
      date: '17 Oc, 2022',
      time: '11h00 AM',
      name: 'Lionel Messi',
      status: 'Upcoming'),
  AppointmentObject(
      type: 2,
      date: '18 Oc, 2022',
      time: '13h00 PM',
      name: 'Lionel Messi',
      status: 'Completed'),
  AppointmentObject(
      type: 1,
      date: '19 Oc, 2022',
      time: '15h00 PM',
      name: 'Lionel Messi',
      status: 'Upcoming'),
  AppointmentObject(
      type: 3,
      date: '20 Oc, 2022',
      time: '14h00 PM',
      name: 'Lionel Messi',
      status: 'Cancelled'),
  AppointmentObject(
      type: 2,
      date: '21 Oc, 2022',
      time: '8h00 AM',
      name: 'Lionel Messi',
      status: 'Completed'),
  AppointmentObject(
      type: 3,
      date: '22 Jan, 2022',
      time: '9h00 AM',
      name: 'Lionel Messi',
      status: 'Cancelled'),
  AppointmentObject(
      type: 1,
      date: '23 Oc, 2022',
      time: '10h00 AM',
      name: 'Lionel Messi',
      status: 'Upcoming'),
];