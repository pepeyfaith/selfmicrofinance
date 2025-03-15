class Customer {
  late String firstName;
  late String email; // Mark the 'email' field as 'late'
  late String mobile;
  late int id;
  var imagedata;

  Customer({
    required this.firstName,
    required this.mobile,
    required this.id,
    this.imagedata,
  });

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'email': email,
        'mobile': mobile,
        'id': id,
        'imagedata': imagedata,
      };

  Customer.fromJson(Map<String, dynamic> json) {
    try {
      firstName = json['firstName'] != null ? json['firstName'] : '';
      email = json['email'] != null ? json['email'] : '';
      mobile = json['mobile'] != null ? json['mobile'] : '';
      id = json['id'] != null ? json['id'] : 0;
      imagedata = json['imagedata'] != null ? json['imagedata'] : null;
    } catch (e) {
      print("Exception - CustomerModel.dart - Customer.fromJson(): " +
          e.toString());
    }
  }
}
