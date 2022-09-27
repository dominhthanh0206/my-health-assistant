class Department {
  String icon;
  String title;
  Department({required this.icon, required this.title});
}

List<Department> listDepartMent = [
  Department(icon: 'assets/images/home_page/users.svg', title: 'General'),
  Department(icon: 'assets/images/home_page/Union.svg', title: 'Dentist'),
  Department(icon: 'assets/images/home_page/eye.svg', title: 'Ophthalmologist'),
  Department(icon: 'assets/images/home_page/healthy-food.svg', title: 'Nutritionist'),
  Department(
      icon: 'assets/images/home_page/brain.svg',
      title: 'Neurologist'),
  Department(icon: 'assets/images/home_page/sister-and-brother.svg', title: 'Pediatric'),
  Department(
      icon: 'assets/images/home_page/bone-pain.svg', title: 'Radiology'),
  Department(icon: 'assets/images/home_page/more.svg', title: 'More'),
];
