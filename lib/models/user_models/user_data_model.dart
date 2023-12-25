class UserDataModel {
  String? userName;
  String? loginDate;
  num? languages;
  num? userId;
  num? financialYear;
  num? type;
  num? companyId;
  num? branchId;
  bool? companyBranchShowHide;
  String? companyNameA;
  String? companyNameE;
  String? financialCode;
  String? branchNameA;
  String? branchNameE;
  String? beginDate;
  String? endDate;
  String? beginDateHJ;
  String? endDateHJ;
  num? financialType;
  num? financialStatus;
  Null? strServerName;
  Null? strDatabase;
  num? intSQLAuthenticationType;
  Null? strSQLUserName;
  Null? strSQLPassword;
  String? serverDateTime;
  num? sdpItems;
  num? sdpaDiscount;
  bool? showSalesPolicy;
  bool? joinUserStore;
  bool? manualFollowCost;
  String? strInitialCatalogOld;
  String? strDataSourceOld;
  String? strUserIDOld;
  Null? strPasswordOld;
  num? authenticationTypeOld;
  num? financialYearOld;
  num? companyIdOld;
  num? programVersion;
  bool? importFromExcel;
  bool? exportToExcel;
  Null? computerName;

  UserDataModel(
      {this.userName,
      this.loginDate,
      this.languages,
      this.userId,
      this.financialYear,
      this.type,
      this.companyId,
      this.branchId,
      this.companyBranchShowHide,
      this.companyNameA,
      this.companyNameE,
      this.financialCode,
      this.branchNameA,
      this.branchNameE,
      this.beginDate,
      this.endDate,
      this.beginDateHJ,
      this.endDateHJ,
      this.financialType,
      this.financialStatus,
      this.strServerName,
      this.strDatabase,
      this.intSQLAuthenticationType,
      this.strSQLUserName,
      this.strSQLPassword,
      this.serverDateTime,
      this.sdpItems,
      this.sdpaDiscount,
      this.showSalesPolicy,
      this.joinUserStore,
      this.manualFollowCost,
      this.strInitialCatalogOld,
      this.strDataSourceOld,
      this.strUserIDOld,
      this.strPasswordOld,
      this.authenticationTypeOld,
      this.financialYearOld,
      this.companyIdOld,
      this.programVersion,
      this.importFromExcel,
      this.exportToExcel,
      this.computerName});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    loginDate = json['loginDate'];
    languages = json['languages'];
    userId = json['userId'];
    financialYear = json['financialYear'];
    type = json['type'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    companyBranchShowHide = json['companyBranchShowHide'];
    companyNameA = json['companyNameA'];
    companyNameE = json['companyNameE'];
    financialCode = json['financialCode'];
    branchNameA = json['branchNameA'];
    branchNameE = json['branchNameE'];
    beginDate = json['beginDate'];
    endDate = json['endDate'];
    beginDateHJ = json['beginDateHJ'];
    endDateHJ = json['endDateHJ'];
    financialType = json['financialType'];
    financialStatus = json['financialStatus'];
    strServerName = json['strServerName'];
    strDatabase = json['strDatabase'];
    intSQLAuthenticationType = json['intSQLAuthenticationType'];
    strSQLUserName = json['strSQLUserName'];
    strSQLPassword = json['strSQLPassword'];
    serverDateTime = json['serverDateTime'];
    sdpItems = json['sdpItems'];
    sdpaDiscount = json['sdpaDiscount'];
    showSalesPolicy = json['showSalesPolicy'];
    joinUserStore = json['joinUserStore'];
    manualFollowCost = json['manualFollowCost'];
    strInitialCatalogOld = json['strInitialCatalogOld'];
    strDataSourceOld = json['strDataSourceOld'];
    strUserIDOld = json['strUserIDOld'];
    strPasswordOld = json['strPasswordOld'];
    authenticationTypeOld = json['authenticationTypeOld'];
    financialYearOld = json['financialYearOld'];
    companyIdOld = json['companyIdOld'];
    programVersion = json['programVersion'];
    importFromExcel = json['importFromExcel'];
    exportToExcel = json['exportToExcel'];
    computerName = json['computerName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['loginDate'] = this.loginDate;
    data['languages'] = this.languages;
    data['userId'] = this.userId;
    data['financialYear'] = this.financialYear;
    data['type'] = this.type;
    data['companyId'] = this.companyId;
    data['branchId'] = this.branchId;
    data['companyBranchShowHide'] = this.companyBranchShowHide;
    data['companyNameA'] = this.companyNameA;
    data['companyNameE'] = this.companyNameE;
    data['financialCode'] = this.financialCode;
    data['branchNameA'] = this.branchNameA;
    data['branchNameE'] = this.branchNameE;
    data['beginDate'] = this.beginDate;
    data['endDate'] = this.endDate;
    data['beginDateHJ'] = this.beginDateHJ;
    data['endDateHJ'] = this.endDateHJ;
    data['financialType'] = this.financialType;
    data['financialStatus'] = this.financialStatus;
    data['strServerName'] = this.strServerName;
    data['strDatabase'] = this.strDatabase;
    data['intSQLAuthenticationType'] = this.intSQLAuthenticationType;
    data['strSQLUserName'] = this.strSQLUserName;
    data['strSQLPassword'] = this.strSQLPassword;
    data['serverDateTime'] = this.serverDateTime;
    data['sdpItems'] = this.sdpItems;
    data['sdpaDiscount'] = this.sdpaDiscount;
    data['showSalesPolicy'] = this.showSalesPolicy;
    data['joinUserStore'] = this.joinUserStore;
    data['manualFollowCost'] = this.manualFollowCost;
    data['strInitialCatalogOld'] = this.strInitialCatalogOld;
    data['strDataSourceOld'] = this.strDataSourceOld;
    data['strUserIDOld'] = this.strUserIDOld;
    data['strPasswordOld'] = this.strPasswordOld;
    data['authenticationTypeOld'] = this.authenticationTypeOld;
    data['financialYearOld'] = this.financialYearOld;
    data['companyIdOld'] = this.companyIdOld;
    data['programVersion'] = this.programVersion;
    data['importFromExcel'] = this.importFromExcel;
    data['exportToExcel'] = this.exportToExcel;
    data['computerName'] = this.computerName;
    return data;
  }
}
