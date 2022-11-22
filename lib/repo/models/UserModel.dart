/// Id : 72
/// parentId : null
/// Name : "Demo"
/// Username : "Demo_"
/// MobileNo : "7744112233"
/// EmailAddress : "demo_@sonuojha.in"
/// Status : 1
/// UserType : "User"
/// Category : "Silver"
/// KYCStatus : 3
/// TotalAchievedIncome : 8023.800272
/// TotalExpectedIncome : 15000
/// PackageName : "Package5000"
/// PackageAmount : 5000
/// CreatedOn : "0001-01-01T00:00:00"
/// Children : [{"Id":7190,"parentId":72,"Name":"Demo1","Username":"Demo_1","MobileNo":"7744112233","EmailAddress":"demo_1@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":180,"TotalExpectedIncome":3000,"PackageName":"Package1000","PackageAmount":1000,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null},{"Id":7210,"parentId":72,"Name":"Demo2","Username":"Demo_2","MobileNo":"7744112233","EmailAddress":"demo_2@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":90,"TotalExpectedIncome":1500,"PackageName":"Package500","PackageAmount":500,"CreatedOn":"0001-01-01T00:00:00","Children":[{"Id":8339,"parentId":7210,"Name":"Demo3","Username":"Demo_3","MobileNo":"7744112233","EmailAddress":"demo_3@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":0,"TotalExpectedIncome":0,"PackageName":null,"PackageAmount":null,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null},{"Id":130,"parentId":125,"Name":"Demo4","Username":"Demo_4","MobileNo":"7744112233","EmailAddress":"demo_4@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":150.35,"TotalExpectedIncome":150,"PackageName":"Package50","PackageAmount":50,"CreatedOn":"0001-01-01T00:00:00","Children":[{"Id":8339,"parentId":7210,"Name":"Demo5","Username":"Demo_5","MobileNo":"7744112233","EmailAddress":"demo_5@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":0,"TotalExpectedIncome":0,"PackageName":null,"PackageAmount":null,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null},{"Id":130,"parentId":125,"Name":"Demo6","Username":"Demo_6","MobileNo":"7744112233","EmailAddress":"demo_6@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":150.35,"TotalExpectedIncome":150,"PackageName":"Package50","PackageAmount":50,"CreatedOn":"0001-01-01T00:00:00","Children":[{"Id":8339,"parentId":7210,"Name":"Demo7","Username":"Demo_7","MobileNo":"7744112233","EmailAddress":"demo_7@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":0,"TotalExpectedIncome":0,"PackageName":null,"PackageAmount":null,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null},{"Id":130,"parentId":125,"Name":"Demo8","Username":"Demo_8","MobileNo":"7744112233","EmailAddress":"demo_8@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":150.35,"TotalExpectedIncome":150,"PackageName":"Package50","PackageAmount":50,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null}],"j":null,"i":null}],"j":null,"i":null}],"j":1475,"i":null},{"Id":7212,"parentId":72,"Name":"Demo9","Username":"Demo_9","MobileNo":"7744112233","EmailAddress":"demo_9@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":18,"TotalExpectedIncome":300,"PackageName":"Package100","PackageAmount":100,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null},{"Id":7215,"parentId":72,"Name":"Demo10","Username":"Demo_10","MobileNo":"7744112233","EmailAddress":"demo_10@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":18,"TotalExpectedIncome":300,"PackageName":"Package100","PackageAmount":100,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null},{"Id":7216,"parentId":72,"Name":"Demo11","Username":"Demo_11","MobileNo":"7744112233","EmailAddress":"demo_11@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":90,"TotalExpectedIncome":1500,"PackageName":"Package500","PackageAmount":500,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null},{"Id":7221,"parentId":72,"Name":"Demo12","Username":"Demo_12","MobileNo":"7744112233","EmailAddress":"demo_12@gmail.com","Status":1,"UserType":"User","Category":"Member","KYCStatus":3,"TotalAchievedIncome":18,"TotalExpectedIncome":1500,"PackageName":"Package100","PackageAmount":100,"CreatedOn":"0001-01-01T00:00:00","Children":[],"j":null,"i":null}]
/// j : null
/// i : null

/// -------------------- NOTE --------------------
/// Children of a User contains same parameter list
/// I have assigned same [UserModel] as children.

class UserModel {
  UserModel({
    int? id,
    int? parentId,
    String? name,
    String? username,
    String? mobileNo,
    String? emailAddress,
    int? status,
    String? userType,
    String? category,
    int? kYCStatus,
    double? totalAchievedIncome,
    double? totalExpectedIncome,
    String? packageName,
    double? packageAmount,
    String? createdOn,
    List<UserModel>? children,
    int? j,
    int? i,
  }) {
    _id = id;
    _parentId = parentId;
    _name = name;
    _username = username;
    _mobileNo = mobileNo;
    _emailAddress = emailAddress;
    _status = status;
    _userType = userType;
    _category = category;
    _kYCStatus = kYCStatus;
    _totalAchievedIncome = totalAchievedIncome;
    _totalExpectedIncome = totalExpectedIncome;
    _packageName = packageName;
    _packageAmount = packageAmount;
    _createdOn = createdOn;
    _children = children;
    _j = j;
    _i = i;
  }

  UserModel.fromJson(dynamic json) {
    _id = json['Id'];
    _parentId = json['parentId'];
    _name = json['Name'];
    _username = json['Username'];
    _mobileNo = json['MobileNo'];
    _emailAddress = json['EmailAddress'];
    _status = json['Status'];
    _userType = json['UserType'];
    _category = json['Category'];
    _kYCStatus = json['KYCStatus'];
    _totalAchievedIncome = json['TotalAchievedIncome'];
    _totalExpectedIncome = json['TotalExpectedIncome'];
    _packageName = json['PackageName'];
    _packageAmount = json['PackageAmount'];
    _createdOn = json['CreatedOn'];
    if (json['Children'] != null) {
      _children = [];
      json['Children'].forEach((v) {
        _children?.add(UserModel.fromJson(v));
      });
    }
    _j = json['j'];
    _i = json['i'];
  }

  int? _id;
  int? _parentId;
  String? _name;
  String? _username;
  String? _mobileNo;
  String? _emailAddress;
  int? _status;
  String? _userType;
  String? _category;
  int? _kYCStatus;
  double? _totalAchievedIncome;
  double? _totalExpectedIncome;
  String? _packageName;
  double? _packageAmount;
  String? _createdOn;
  List<UserModel>? _children;
  int? _j;
  int? _i;

  int? get id => _id;
  dynamic get parentId => _parentId;
  String? get name => _name;
  String? get username => _username;
  String? get mobileNo => _mobileNo;
  String? get emailAddress => _emailAddress;
  int? get status => _status;
  String? get userType => _userType;
  String? get category => _category;
  int? get kYCStatus => _kYCStatus;
  double? get totalAchievedIncome => _totalAchievedIncome;
  double? get totalExpectedIncome => _totalExpectedIncome;
  String? get packageName => _packageName;
  double? get packageAmount => _packageAmount;
  String? get createdOn => _createdOn;
  List<UserModel>? get children => _children;
  int? get j => _j;
  int? get i => _i;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['parentId'] = _parentId;
    map['Name'] = _name;
    map['Username'] = _username;
    map['MobileNo'] = _mobileNo;
    map['EmailAddress'] = _emailAddress;
    map['Status'] = _status;
    map['UserType'] = _userType;
    map['Category'] = _category;
    map['KYCStatus'] = _kYCStatus;
    map['TotalAchievedIncome'] = _totalAchievedIncome;
    map['TotalExpectedIncome'] = _totalExpectedIncome;
    map['PackageName'] = _packageName;
    map['PackageAmount'] = _packageAmount;
    map['CreatedOn'] = _createdOn;
    if (_children != null) {
      map['Children'] = _children?.map((v) => v.toJson()).toList();
    }
    map['j'] = _j;
    map['i'] = _i;
    return map;
  }
}
