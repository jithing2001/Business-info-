class BusinessModel {
  final String businessName;
  final String city;
  final String pinCode;
  final String address;
  final String phone;
  final String description;
  final String mail;
  final String website;
  final String businessCategory;
  final String country;
  final String state;
  final String place;
  final String image1;
  final String image2;
  final String image3;
  BusinessModel({
    required this.businessName,
    required this.city,
    required this.pinCode,
    required this.address,
    required this.phone,
    required this.description,
    required this.mail,
    required this.website,
    required this.businessCategory,
    required this.country,
    required this.state,
    required this.place,
    required this.image1,
    required this.image2,
    required this.image3,
  });
  Map<String, dynamic> toJson() => {
        'businessName': businessName,
        'city': city,
        'pinCode': pinCode,
        'address': address,
        'phone': phone,
        'description': description,
        'mail': mail,
        'website': website,
        'businessCategory': businessCategory,
        'country': country,
        'state': state,
        'place': place,
        'image1': image1,
        'image2': image2,
        'image3': image3,
      };
}
