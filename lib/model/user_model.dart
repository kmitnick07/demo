class UserModel {
  int? personId;
  int? userId;
  String? shortName;
  String? fullName;
  String? firstName;
  String? lastName;
  String? fatherName;
  int? gender;
  String? designationName;
  String? roleName;
  String? departmentName;
  String? motherName;
  String? birthdate;
  int? maritalStatus;
  String? anniversaryDate;
  String? employeeNo;
  String? aadharNo;
  String? admissionDate;
  String? fatherBirthDate;
  String? motherBirthDate;
  String? registeredMobile;
  String? email1;
  String? email2;
  String? address;
  String? mobile1;
  String? mobile2;
  String? classTeacher;
  int? rollNo;
  String? grNo;
  String? grRegistrationDate;
  String? examSeatNo;
  String? uid;
  String? boardSID;
  bool? isPhysicalDisability;
  String? ePhysicalDisabilityType;
  String? physicalDisabilityPercentage;
  int? eRiligion;
  int? eCategory;
  String? caste;
  String? subCaste;
  String? userPhoto;
  String? userSign;
  String? fatherPhoto;
  String? fatherSign;
  String? motherPhoto;
  String? motherSign;
  String? userName;

  UserModel(
      {this.personId,
      this.userId,
      this.shortName,
      this.fullName,
      this.firstName,
      this.lastName,
      this.fatherName,
      this.gender,
      this.designationName,
      this.roleName,
      this.departmentName,
      this.motherName,
      this.birthdate,
      this.maritalStatus,
      this.anniversaryDate,
      this.employeeNo,
      this.aadharNo,
      this.admissionDate,
      this.fatherBirthDate,
      this.motherBirthDate,
      this.registeredMobile,
      this.email1,
      this.email2,
      this.address,
      this.mobile1,
      this.mobile2,
      this.classTeacher,
      this.rollNo,
      this.grNo,
      this.grRegistrationDate,
      this.examSeatNo,
      this.uid,
      this.boardSID,
      this.isPhysicalDisability,
      this.ePhysicalDisabilityType,
      this.physicalDisabilityPercentage,
      this.eRiligion,
      this.eCategory,
      this.caste,
      this.subCaste,
      this.userPhoto,
      this.userSign,
      this.fatherPhoto,
      this.fatherSign,
      this.motherPhoto,
      this.motherSign,
      this.userName});

  UserModel.fromJson(Map<String, dynamic> json) {
    personId = json['personId'];
    userId = json['userId'];
    shortName = json['shortName'];
    fullName = json['fullName'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    fatherName = json['fatherName'];
    gender = json['gender'];
    designationName = json['designationName'];
    roleName = json['roleName'];
    departmentName = json['departmentName'];
    motherName = json['motherName'];
    birthdate = json['birthdate'];
    maritalStatus = json['maritalStatus'];
    anniversaryDate = json['anniversaryDate'];
    employeeNo = json['employeeNo'];
    aadharNo = json['aadharNo'];
    admissionDate = json['admissionDate'];
    fatherBirthDate = json['fatherBirthDate'];
    motherBirthDate = json['motherBirthDate'];
    registeredMobile = json['registeredMobile'];
    email1 = json['email1'];
    email2 = json['email2'];
    address = json['address'];
    mobile1 = json['mobile1'];
    mobile2 = json['mobile2'];
    classTeacher = json['classTeacher'];
    rollNo = json['rollNo'];
    grNo = json['grNo'];
    grRegistrationDate = json['grRegistrationDate'];
    examSeatNo = json['examSeatNo'];
    uid = json['uid'];
    boardSID = json['boardSID'];
    isPhysicalDisability = json['isPhysicalDisability'];
    ePhysicalDisabilityType = json['ePhysicalDisabilityType'];
    physicalDisabilityPercentage = json['physicalDisabilityPercentage'];
    eRiligion = json['eRiligion'];
    eCategory = json['eCategory'];
    caste = json['caste'];
    subCaste = json['subCaste'];
    userPhoto = json['userPhoto'];
    userSign = json['userSign'];
    fatherPhoto = json['fatherPhoto'];
    fatherSign = json['fatherSign'];
    motherPhoto = json['motherPhoto'];
    motherSign = json['motherSign'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['personId'] = personId;
    data['userId'] = userId;
    data['shortName'] = shortName;
    data['fullName'] = fullName;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['fatherName'] = fatherName;
    data['gender'] = gender;
    data['designationName'] = designationName;
    data['roleName'] = roleName;
    data['departmentName'] = departmentName;
    data['motherName'] = motherName;
    data['birthdate'] = birthdate;
    data['maritalStatus'] = maritalStatus;
    data['anniversaryDate'] = anniversaryDate;
    data['employeeNo'] = employeeNo;
    data['aadharNo'] = aadharNo;
    data['admissionDate'] = admissionDate;
    data['fatherBirthDate'] = fatherBirthDate;
    data['motherBirthDate'] = motherBirthDate;
    data['registeredMobile'] = registeredMobile;
    data['email1'] = email1;
    data['email2'] = email2;
    data['address'] = address;
    data['mobile1'] = mobile1;
    data['mobile2'] = mobile2;
    data['classTeacher'] = classTeacher;
    data['rollNo'] = rollNo;
    data['grNo'] = grNo;
    data['grRegistrationDate'] = grRegistrationDate;
    data['examSeatNo'] = examSeatNo;
    data['uid'] = uid;
    data['boardSID'] = boardSID;
    data['isPhysicalDisability'] = isPhysicalDisability;
    data['ePhysicalDisabilityType'] = ePhysicalDisabilityType;
    data['physicalDisabilityPercentage'] = physicalDisabilityPercentage;
    data['eRiligion'] = eRiligion;
    data['eCategory'] = eCategory;
    data['caste'] = caste;
    data['subCaste'] = subCaste;
    data['userPhoto'] = userPhoto;
    data['userSign'] = userSign;
    data['fatherPhoto'] = fatherPhoto;
    data['fatherSign'] = fatherSign;
    data['motherPhoto'] = motherPhoto;
    data['motherSign'] = motherSign;
    data['userName'] = userName;
    return data;
  }
}
