class OtpModel {
  final String otp, phone;

  const OtpModel({required this.otp, required this.phone});

  Map<String, dynamic> toJson() {
    return {'otp': otp, 'phone': phone};
  }
}
