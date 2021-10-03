// class Login {
//   bool accessToken;
//   String tokenType;
//   Payment payment;
//   User user;
//
//   Login({this.accessToken, this.tokenType, this.payment, this.user});
//
//   Login.fromJson(Map<String, dynamic> json) {
//     accessToken = json['access_token'];
//     tokenType = json['token_type'];
//     payment =
//     json['payment'] != null ? new Payment.fromJson(json['payment']) : null;
//     user = json['user'] != null ? new User.fromJson(json['user']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['access_token'] = this.accessToken;
//     data['token_type'] = this.tokenType;
//     if (this.payment != null) {
//       data['payment'] = this.payment.toJson();
//     }
//     if (this.user != null) {
//       data['user'] = this.user.toJson();
//     }
//     return data;
//   }
// }
//
//
//
//
//
// class Payment {
//   int id;
//   int userId;
//   int payment;
//   String payerID;
//   String email;
//   String tocken;
//   String paypalAgreementId;
//   String createdAt;
//   String updatedAt;
//
//   Payment(
//       {this.id,
//         this.userId,
//         this.payment,
//         this.payerID,
//         this.email,
//         this.tocken,
//         this.paypalAgreementId,
//         this.createdAt,
//         this.updatedAt});
//
//   Payment.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     userId = json['user_id'];
//     payment = json['payment'];
//     payerID = json['PayerID'];
//     email = json['email'];
//     tocken = json['tocken'];
//     paypalAgreementId = json['paypal_agreement_id'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['user_id'] = this.userId;
//     data['payment'] = this.payment;
//     data['PayerID'] = this.payerID;
//     data['email'] = this.email;
//     data['tocken'] = this.tocken;
//     data['paypal_agreement_id'] = this.paypalAgreementId;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
//
//
//
// class User {
//   int id;
//   int clubsId;
//   String name;
//   String lastName;
//   String userRole;
//   String email;
//   int activeStatus;
//   int darkMode;
//   String messengerColor;
//   String avatar;
//   String emailVerifiedAt;
//   String age;
//   Null guardianname;
//   String term;
//   Null guardianemail;
//   Null waiver;
//   String status;
//   String createdAt;
//   String updatedAt;
//   String profilePublic;
//   Null parentDob;
//
//   User(
//       {this.id,
//         this.clubsId,
//         this.name,
//         this.lastName,
//         this.userRole,
//         this.email,
//         this.activeStatus,
//         this.darkMode,
//         this.messengerColor,
//         this.avatar,
//         this.emailVerifiedAt,
//         this.age,
//         this.guardianname,
//         this.term,
//         this.guardianemail,
//         this.waiver,
//         this.status,
//         this.createdAt,
//         this.updatedAt,
//         this.profilePublic,
//         this.parentDob});
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     clubsId = json['clubs_id'];
//     name = json['name'];
//     lastName = json['last_name'];
//     userRole = json['userRole'];
//     email = json['email'];
//     activeStatus = json['active_status'];
//     darkMode = json['dark_mode'];
//     messengerColor = json['messenger_color'];
//     avatar = json['avatar'];
//     emailVerifiedAt = json['email_verified_at'];
//     age = json['age'];
//     guardianname = json['guardianname'];
//     term = json['term'];
//     guardianemail = json['guardianemail'];
//     waiver = json['waiver'];
//     status = json['status'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     profilePublic = json['profile_public'];
//     parentDob = json['parent_dob'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['clubs_id'] = this.clubsId;
//     data['name'] = this.name;
//     data['last_name'] = this.lastName;
//     data['userRole'] = this.userRole;
//     data['email'] = this.email;
//     data['active_status'] = this.activeStatus;
//     data['dark_mode'] = this.darkMode;
//     data['messenger_color'] = this.messengerColor;
//     data['avatar'] = this.avatar;
//     data['email_verified_at'] = this.emailVerifiedAt;
//     data['age'] = this.age;
//     data['guardianname'] = this.guardianname;
//     data['term'] = this.term;
//     data['guardianemail'] = this.guardianemail;
//     data['waiver'] = this.waiver;
//     data['status'] = this.status;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['profile_public'] = this.profilePublic;
//     data['parent_dob'] = this.parentDob;
//     return data;
//   }
// }
