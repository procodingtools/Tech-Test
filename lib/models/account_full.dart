import 'dart:convert';

import 'package:tech_test/tools/res.dart';

AccountModelFull accountFromJson(String str) => AccountModelFull.fromJson(json.decode(str));
String accountToJson(AccountModelFull data) => json.encode(data.toJson());
class AccountModelFull {

  String? odataetag;
  int? paymenttermscode;
  int? industrycode;
  int? address2Addresstypecode;
  bool? merged;
  String? accountnumber;
  int? statecode;
  String? emailaddress1;
  double? exchangerate;
  String? tickersymbol;
  String? name;
  String? websiteurl;
  String? owningbusinessunitValue;
  String? owninguserValue;
  String? primarycontactidValue;
  String? address1Composite;
  bool? donotpostalmail;
  int? accountratingcode;
  int? numberofemployees;
  bool? marketingonly;
  double? revenueBase;
  int? preferredcontactmethodcode;
  String? owneridValue;
  String? description;
  int? customersizecode;
  String? openrevenueDate;
  int? businesstypecode;
  bool? donotemail;
  int? address2Shippingmethodcode;
  int? timezoneruleversionnumber;
  String? address1Addressid;
  bool? msdynGdproptout;
  int? address2Freighttermscode;
  int? statuscode;
  String? createdon;
  int? msdynTravelchargetype;
  dynamic address1Stateorprovince;
  bool? donotsendmm;
  bool? donotfax;
  bool? donotbulkpostalmail;
  String? address1Country;
  int? versionnumber;
  String? address1Line1;
  String? modifiedon;
  bool? creditonhold;
  String? telephone1;
  bool? donotphone;
  String? transactioncurrencyidValue;
  String? accountid;
  bool? donotbulkemail;
  String? modifiedbyValue;
  bool? followemail;
  int? shippingmethodcode;
  String? createdbyValue;
  String? address1City;
  int? territorycode;
  int? ownershipcode;
  String? fax;
  double? revenue;
  bool? msdynTaxexempt;
  bool? participatesinworkflow;
  int? accountclassificationcode;
  String? address2Addressid;
  String? address1Postalcode;
  String? opendealsDate;
  dynamic telephone3;
  dynamic address1Shippingmethodcode;
  dynamic sharesoutstanding;
  dynamic defaultpricelevelidValue;
  dynamic preferredequipmentidValue;
  dynamic address1Freighttermscode;
  dynamic address1Upszone;
  dynamic slainvokedidValue;
  dynamic address2City;
  dynamic address1Postofficebox;
  int? importsequencenumber;
  dynamic preferredappointmentdaycode;
  dynamic customertypecode;
  dynamic utcconversiontimezonecode;
  String? overriddencreatedon;
  dynamic aging90;
  dynamic msdynBillingaccountValue;
  dynamic stageid;
  double? address1Latitude;
  dynamic address1Utcoffset;
  dynamic masteridValue;
  dynamic lastonholdtime;
  dynamic address2Fax;
  dynamic msdynWorkorderinstructions;
  dynamic msdynTaxexemptnumber;
  dynamic msdynSalestaxcodeValue;
  dynamic address2Line1;
  dynamic address1Telephone3;
  dynamic address1Telephone2;
  dynamic address1Telephone1;
  dynamic address2Postofficebox;
  dynamic emailaddress2;
  dynamic ftpsiteurl;
  dynamic address2Latitude;
  dynamic processid;
  dynamic emailaddress3;
  dynamic address2Composite;
  dynamic msdynPreferredresourceValue;
  dynamic traversedpath;
  dynamic address2Line2;
  dynamic aging30Base;
  dynamic teamsfollowed;
  dynamic address1Addresstypecode;
  dynamic address2Stateorprovince;
  dynamic address2Postalcode;
  dynamic openrevenueState;
  dynamic entityimageUrl;
  dynamic aging60;
  dynamic address2Telephone3;
  dynamic address2Telephone2;
  dynamic address2Telephone1;
  dynamic address2Upszone;
  dynamic owningteamValue;
  dynamic primarysatoriid;
  dynamic address2Line3;
  dynamic timespentbymeonemailandmeetings;
  dynamic opendealsState;
  dynamic address2Longitude;
  dynamic modifiedonbehalfbyValue;
  dynamic creditlimit;
  dynamic address1Line2;
  dynamic msdynTravelchargeBase;
  dynamic address1County;
  dynamic territoryidValue;
  dynamic marketcap;
  dynamic preferredsystemuseridValue;
  dynamic preferredappointmenttimecode;
  dynamic address1Fax;
  dynamic createdonbehalfbyValue;
  dynamic address2Name;
  dynamic creditlimitBase;
  dynamic marketcapBase;
  dynamic msdynServiceterritoryValue;
  dynamic address2Utcoffset;
  dynamic modifiedbyexternalpartyValue;
  dynamic originatingleadidValue;
  dynamic opendeals;
  dynamic sic;
  dynamic preferredserviceidValue;
  dynamic slaidValue;
  dynamic address2County;
  dynamic aging30;
  dynamic address1Line3;
  dynamic openrevenue;
  dynamic onholdtime;
  dynamic createdbyexternalpartyValue;
  dynamic entityimageTimestamp;
  dynamic entityimageid;
  dynamic parentaccountidValue;
  dynamic yominame;
  dynamic lastusedincampaign;
  dynamic msdynSegmentidValue;
  dynamic accountcategorycode;
  dynamic openrevenueBase;
  dynamic primarytwitterid;
  dynamic telephone2;
  dynamic stockexchange;
  dynamic msdynExternalaccountid;
  dynamic aging90Base;
  dynamic address1Name;
  dynamic msdynTravelcharge;
  dynamic address1Primarycontactname;
  double? address1Longitude;
  dynamic address2Primarycontactname;
  dynamic entityimage;
  dynamic msdynWorkhourtemplateValue;
  dynamic aging60Base;
  dynamic address2Country;

  AccountModelFull({
      this.odataetag, 
      this.paymenttermscode, 
      this.industrycode, 
      this.address2Addresstypecode, 
      this.merged, 
      this.accountnumber, 
      this.statecode, 
      this.emailaddress1, 
      this.exchangerate, 
      this.tickersymbol, 
      this.name, 
      this.websiteurl, 
      this.owningbusinessunitValue, 
      this.owninguserValue, 
      this.primarycontactidValue, 
      this.address1Composite, 
      this.donotpostalmail, 
      this.accountratingcode, 
      this.numberofemployees, 
      this.marketingonly, 
      this.revenueBase, 
      this.preferredcontactmethodcode, 
      this.owneridValue, 
      this.description, 
      this.customersizecode, 
      this.openrevenueDate, 
      this.businesstypecode, 
      this.donotemail, 
      this.address2Shippingmethodcode, 
      this.timezoneruleversionnumber, 
      this.address1Addressid, 
      this.msdynGdproptout, 
      this.address2Freighttermscode, 
      this.statuscode, 
      this.createdon, 
      this.msdynTravelchargetype, 
      this.address1Stateorprovince, 
      this.donotsendmm, 
      this.donotfax, 
      this.donotbulkpostalmail, 
      this.address1Country, 
      this.versionnumber, 
      this.address1Line1, 
      this.modifiedon, 
      this.creditonhold, 
      this.telephone1, 
      this.donotphone, 
      this.transactioncurrencyidValue, 
      this.accountid, 
      this.donotbulkemail, 
      this.modifiedbyValue, 
      this.followemail, 
      this.shippingmethodcode, 
      this.createdbyValue, 
      this.address1City, 
      this.territorycode, 
      this.ownershipcode, 
      this.fax, 
      this.revenue, 
      this.msdynTaxexempt, 
      this.participatesinworkflow, 
      this.accountclassificationcode, 
      this.address2Addressid, 
      this.address1Postalcode, 
      this.opendealsDate, 
      this.telephone3, 
      this.address1Shippingmethodcode, 
      this.sharesoutstanding, 
      this.defaultpricelevelidValue, 
      this.preferredequipmentidValue, 
      this.address1Freighttermscode, 
      this.address1Upszone, 
      this.slainvokedidValue, 
      this.address2City, 
      this.address1Postofficebox, 
      this.importsequencenumber, 
      this.preferredappointmentdaycode, 
      this.customertypecode, 
      this.utcconversiontimezonecode, 
      this.overriddencreatedon, 
      this.aging90, 
      this.msdynBillingaccountValue, 
      this.stageid, 
      this.address1Latitude, 
      this.address1Utcoffset, 
      this.masteridValue, 
      this.lastonholdtime, 
      this.address2Fax, 
      this.msdynWorkorderinstructions, 
      this.msdynTaxexemptnumber, 
      this.msdynSalestaxcodeValue, 
      this.address2Line1, 
      this.address1Telephone3, 
      this.address1Telephone2, 
      this.address1Telephone1, 
      this.address2Postofficebox, 
      this.emailaddress2, 
      this.ftpsiteurl, 
      this.address2Latitude, 
      this.processid, 
      this.emailaddress3, 
      this.address2Composite, 
      this.msdynPreferredresourceValue, 
      this.traversedpath, 
      this.address2Line2, 
      this.aging30Base, 
      this.teamsfollowed, 
      this.address1Addresstypecode, 
      this.address2Stateorprovince, 
      this.address2Postalcode, 
      this.openrevenueState, 
      this.entityimageUrl, 
      this.aging60, 
      this.address2Telephone3, 
      this.address2Telephone2, 
      this.address2Telephone1, 
      this.address2Upszone, 
      this.owningteamValue, 
      this.primarysatoriid, 
      this.address2Line3, 
      this.timespentbymeonemailandmeetings, 
      this.opendealsState, 
      this.address2Longitude, 
      this.modifiedonbehalfbyValue, 
      this.creditlimit, 
      this.address1Line2, 
      this.msdynTravelchargeBase, 
      this.address1County, 
      this.territoryidValue, 
      this.marketcap, 
      this.preferredsystemuseridValue, 
      this.preferredappointmenttimecode, 
      this.address1Fax, 
      this.createdonbehalfbyValue, 
      this.address2Name, 
      this.creditlimitBase, 
      this.marketcapBase, 
      this.msdynServiceterritoryValue, 
      this.address2Utcoffset, 
      this.modifiedbyexternalpartyValue, 
      this.originatingleadidValue, 
      this.opendeals, 
      this.sic, 
      this.preferredserviceidValue, 
      this.slaidValue, 
      this.address2County, 
      this.aging30, 
      this.address1Line3, 
      this.openrevenue, 
      this.onholdtime, 
      this.createdbyexternalpartyValue, 
      this.entityimageTimestamp, 
      this.entityimageid, 
      this.parentaccountidValue, 
      this.yominame, 
      this.lastusedincampaign, 
      this.msdynSegmentidValue, 
      this.accountcategorycode, 
      this.openrevenueBase, 
      this.primarytwitterid, 
      this.telephone2, 
      this.stockexchange, 
      this.msdynExternalaccountid, 
      this.aging90Base, 
      this.address1Name, 
      this.msdynTravelcharge, 
      this.address1Primarycontactname, 
      this.address1Longitude, 
      this.address2Primarycontactname, 
      this.entityimage, 
      this.msdynWorkhourtemplateValue, 
      this.aging60Base, 
      this.address2Country,});

  AccountModelFull.fromJson(dynamic json) {
    odataetag = json['@odata.etag'];
    paymenttermscode = json['paymenttermscode'];
    industrycode = json['industrycode'];
    address2Addresstypecode = json['address2_addresstypecode'];
    merged = json['merged'];
    accountnumber = json['accountnumber'];
    statecode = json['statecode'];
    emailaddress1 = json['emailaddress1'];
    exchangerate = json['exchangerate'];
    tickersymbol = json['tickersymbol'];
    name = json['name'];
    websiteurl = json['websiteurl'];
    owningbusinessunitValue = json['_owningbusinessunit_value'];
    owninguserValue = json['_owninguser_value'];
    primarycontactidValue = json['_primarycontactid_value'];
    address1Composite = json['address1_composite'];
    donotpostalmail = json['donotpostalmail'];
    accountratingcode = json['accountratingcode'];
    numberofemployees = json['numberofemployees'];
    marketingonly = json['marketingonly'];
    revenueBase = json['revenue_base'];
    preferredcontactmethodcode = json['preferredcontactmethodcode'];
    owneridValue = json['_ownerid_value'];
    description = json['description'];
    customersizecode = json['customersizecode'];
    openrevenueDate = json['openrevenue_date'];
    businesstypecode = json['businesstypecode'];
    donotemail = json['donotemail'];
    address2Shippingmethodcode = json['address2_shippingmethodcode'];
    timezoneruleversionnumber = json['timezoneruleversionnumber'];
    address1Addressid = json['address1_addressid'];
    msdynGdproptout = json['msdyn_gdproptout'];
    address2Freighttermscode = json['address2_freighttermscode'];
    statuscode = json['statuscode'];
    createdon = json['createdon'];
    msdynTravelchargetype = json['msdyn_travelchargetype'];
    address1Stateorprovince = json['address1_stateorprovince'];
    donotsendmm = json['donotsendmm'];
    donotfax = json['donotfax'];
    donotbulkpostalmail = json['donotbulkpostalmail'];
    address1Country = json['address1_country'];
    versionnumber = json['versionnumber'];
    address1Line1 = json['address1_line1'];
    modifiedon = json['modifiedon'];
    creditonhold = json['creditonhold'];
    telephone1 = json['telephone1'];
    donotphone = json['donotphone'];
    transactioncurrencyidValue = json['_transactioncurrencyid_value'];
    accountid = json['accountid'];
    donotbulkemail = json['donotbulkemail'];
    modifiedbyValue = json['_modifiedby_value'];
    followemail = json['followemail'];
    shippingmethodcode = json['shippingmethodcode'];
    createdbyValue = json['_createdby_value'];
    address1City = json['address1_city'];
    territorycode = json['territorycode'];
    ownershipcode = json['ownershipcode'];
    fax = json['fax'];
    revenue = json['revenue'];
    msdynTaxexempt = json['msdyn_taxexempt'];
    participatesinworkflow = json['participatesinworkflow'];
    accountclassificationcode = json['accountclassificationcode'];
    address2Addressid = json['address2_addressid'];
    address1Postalcode = json['address1_postalcode'];
    opendealsDate = json['opendeals_date'];
    telephone3 = json['telephone3'];
    address1Shippingmethodcode = json['address1_shippingmethodcode'];
    sharesoutstanding = json['sharesoutstanding'];
    defaultpricelevelidValue = json['_defaultpricelevelid_value'];
    preferredequipmentidValue = json['_preferredequipmentid_value'];
    address1Freighttermscode = json['address1_freighttermscode'];
    address1Upszone = json['address1_upszone'];
    slainvokedidValue = json['_slainvokedid_value'];
    address2City = json['address2_city'];
    address1Postofficebox = json['address1_postofficebox'];
    importsequencenumber = json['importsequencenumber'];
    preferredappointmentdaycode = json['preferredappointmentdaycode'];
    customertypecode = json['customertypecode'];
    utcconversiontimezonecode = json['utcconversiontimezonecode'];
    overriddencreatedon = json['overriddencreatedon'];
    aging90 = json['aging90'];
    msdynBillingaccountValue = json['_msdyn_billingaccount_value'];
    stageid = json['stageid'];
    address1Latitude = json['address1_latitude'];
    address1Utcoffset = json['address1_utcoffset'];
    masteridValue = json['_masterid_value'];
    lastonholdtime = json['lastonholdtime'];
    address2Fax = json['address2_fax'];
    msdynWorkorderinstructions = json['msdyn_workorderinstructions'];
    msdynTaxexemptnumber = json['msdyn_taxexemptnumber'];
    msdynSalestaxcodeValue = json['_msdyn_salestaxcode_value'];
    address2Line1 = json['address2_line1'];
    address1Telephone3 = json['address1_telephone3'];
    address1Telephone2 = json['address1_telephone2'];
    address1Telephone1 = json['address1_telephone1'];
    address2Postofficebox = json['address2_postofficebox'];
    emailaddress2 = json['emailaddress2'];
    ftpsiteurl = json['ftpsiteurl'];
    address2Latitude = json['address2_latitude'];
    processid = json['processid'];
    emailaddress3 = json['emailaddress3'];
    address2Composite = json['address2_composite'];
    msdynPreferredresourceValue = json['_msdyn_preferredresource_value'];
    traversedpath = json['traversedpath'];
    address2Line2 = json['address2_line2'];
    aging30Base = json['aging30_base'];
    teamsfollowed = json['teamsfollowed'];
    address1Addresstypecode = json['address1_addresstypecode'];
    address2Stateorprovince = json['address2_stateorprovince'];
    address2Postalcode = json['address2_postalcode'];
    openrevenueState = json['openrevenue_state'];
    entityimageUrl =  json['entityimage_url'].toString().startsWith('http') ? json['entityimage_url'] : '${Res.host}accounts(${json['accountid']})/entityimage/\$value';
    aging60 = json['aging60'];
    address2Telephone3 = json['address2_telephone3'];
    address2Telephone2 = json['address2_telephone2'];
    address2Telephone1 = json['address2_telephone1'];
    address2Upszone = json['address2_upszone'];
    owningteamValue = json['_owningteam_value'];
    primarysatoriid = json['primarysatoriid'];
    address2Line3 = json['address2_line3'];
    timespentbymeonemailandmeetings = json['timespentbymeonemailandmeetings'];
    opendealsState = json['opendeals_state'];
    address2Longitude = json['address2_longitude'];
    modifiedonbehalfbyValue = json['_modifiedonbehalfby_value'];
    creditlimit = json['creditlimit'];
    address1Line2 = json['address1_line2'];
    msdynTravelchargeBase = json['msdyn_travelcharge_base'];
    address1County = json['address1_county'];
    territoryidValue = json['_territoryid_value'];
    marketcap = json['marketcap'];
    preferredsystemuseridValue = json['_preferredsystemuserid_value'];
    preferredappointmenttimecode = json['preferredappointmenttimecode'];
    address1Fax = json['address1_fax'];
    createdonbehalfbyValue = json['_createdonbehalfby_value'];
    address2Name = json['address2_name'];
    creditlimitBase = json['creditlimit_base'];
    marketcapBase = json['marketcap_base'];
    msdynServiceterritoryValue = json['_msdyn_serviceterritory_value'];
    address2Utcoffset = json['address2_utcoffset'];
    modifiedbyexternalpartyValue = json['_modifiedbyexternalparty_value'];
    originatingleadidValue = json['_originatingleadid_value'];
    opendeals = json['opendeals'];
    sic = json['sic'];
    preferredserviceidValue = json['_preferredserviceid_value'];
    slaidValue = json['_slaid_value'];
    address2County = json['address2_county'];
    aging30 = json['aging30'];
    address1Line3 = json['address1_line3'];
    openrevenue = json['openrevenue'];
    onholdtime = json['onholdtime'];
    createdbyexternalpartyValue = json['_createdbyexternalparty_value'];
    entityimageTimestamp = json['entityimage_timestamp'];
    entityimageid = json['entityimageid'];
    parentaccountidValue = json['_parentaccountid_value'];
    yominame = json['yominame'];
    lastusedincampaign = json['lastusedincampaign'];
    msdynSegmentidValue = json['_msdyn_segmentid_value'];
    accountcategorycode = json['accountcategorycode'];
    openrevenueBase = json['openrevenue_base'];
    primarytwitterid = json['primarytwitterid'];
    telephone2 = json['telephone2'];
    stockexchange = json['stockexchange'];
    msdynExternalaccountid = json['msdyn_externalaccountid'];
    aging90Base = json['aging90_base'];
    address1Name = json['address1_name'];
    msdynTravelcharge = json['msdyn_travelcharge'];
    address1Primarycontactname = json['address1_primarycontactname'];
    address1Longitude = json['address1_longitude'];
    address2Primarycontactname = json['address2_primarycontactname'];
    entityimage = json['entityimage'];
    msdynWorkhourtemplateValue = json['_msdyn_workhourtemplate_value'];
    aging60Base = json['aging60_base'];
    address2Country = json['address2_country'];
  }


AccountModelFull copyWith({  String? odataetag,
  int? paymenttermscode,
  int? industrycode,
  int? address2Addresstypecode,
  bool? merged,
  String? accountnumber,
  int? statecode,
  String? emailaddress1,
  double? exchangerate,
  String? tickersymbol,
  String? name,
  String? websiteurl,
  String? owningbusinessunitValue,
  String? owninguserValue,
  String? primarycontactidValue,
  String? address1Composite,
  bool? donotpostalmail,
  int? accountratingcode,
  int? numberofemployees,
  bool? marketingonly,
  double? revenueBase,
  int? preferredcontactmethodcode,
  String? owneridValue,
  String? description,
  int? customersizecode,
  String? openrevenueDate,
  int? businesstypecode,
  bool? donotemail,
  int? address2Shippingmethodcode,
  int? timezoneruleversionnumber,
  String? address1Addressid,
  bool? msdynGdproptout,
  int? address2Freighttermscode,
  int? statuscode,
  String? createdon,
  int? msdynTravelchargetype,
  dynamic address1Stateorprovince,
  bool? donotsendmm,
  bool? donotfax,
  bool? donotbulkpostalmail,
  String? address1Country,
  int? versionnumber,
  String? address1Line1,
  String? modifiedon,
  bool? creditonhold,
  String? telephone1,
  bool? donotphone,
  String? transactioncurrencyidValue,
  String? accountid,
  bool? donotbulkemail,
  String? modifiedbyValue,
  bool? followemail,
  int? shippingmethodcode,
  String? createdbyValue,
  String? address1City,
  int? territorycode,
  int? ownershipcode,
  String? fax,
  double? revenue,
  bool? msdynTaxexempt,
  bool? participatesinworkflow,
  int? accountclassificationcode,
  String? address2Addressid,
  String? address1Postalcode,
  String? opendealsDate,
  dynamic telephone3,
  dynamic address1Shippingmethodcode,
  dynamic sharesoutstanding,
  dynamic defaultpricelevelidValue,
  dynamic preferredequipmentidValue,
  dynamic address1Freighttermscode,
  dynamic address1Upszone,
  dynamic slainvokedidValue,
  dynamic address2City,
  dynamic address1Postofficebox,
  int? importsequencenumber,
  dynamic preferredappointmentdaycode,
  dynamic customertypecode,
  dynamic utcconversiontimezonecode,
  String? overriddencreatedon,
  dynamic aging90,
  dynamic msdynBillingaccountValue,
  dynamic stageid,
  double? address1Latitude,
  dynamic address1Utcoffset,
  dynamic masteridValue,
  dynamic lastonholdtime,
  dynamic address2Fax,
  dynamic msdynWorkorderinstructions,
  dynamic msdynTaxexemptnumber,
  dynamic msdynSalestaxcodeValue,
  dynamic address2Line1,
  dynamic address1Telephone3,
  dynamic address1Telephone2,
  dynamic address1Telephone1,
  dynamic address2Postofficebox,
  dynamic emailaddress2,
  dynamic ftpsiteurl,
  dynamic address2Latitude,
  dynamic processid,
  dynamic emailaddress3,
  dynamic address2Composite,
  dynamic msdynPreferredresourceValue,
  dynamic traversedpath,
  dynamic address2Line2,
  dynamic aging30Base,
  dynamic teamsfollowed,
  dynamic address1Addresstypecode,
  dynamic address2Stateorprovince,
  dynamic address2Postalcode,
  dynamic openrevenueState,
  dynamic entityimageUrl,
  dynamic aging60,
  dynamic address2Telephone3,
  dynamic address2Telephone2,
  dynamic address2Telephone1,
  dynamic address2Upszone,
  dynamic owningteamValue,
  dynamic primarysatoriid,
  dynamic address2Line3,
  dynamic timespentbymeonemailandmeetings,
  dynamic opendealsState,
  dynamic address2Longitude,
  dynamic modifiedonbehalfbyValue,
  dynamic creditlimit,
  dynamic address1Line2,
  dynamic msdynTravelchargeBase,
  dynamic address1County,
  dynamic territoryidValue,
  dynamic marketcap,
  dynamic preferredsystemuseridValue,
  dynamic preferredappointmenttimecode,
  dynamic address1Fax,
  dynamic createdonbehalfbyValue,
  dynamic address2Name,
  dynamic creditlimitBase,
  dynamic marketcapBase,
  dynamic msdynServiceterritoryValue,
  dynamic address2Utcoffset,
  dynamic modifiedbyexternalpartyValue,
  dynamic originatingleadidValue,
  dynamic opendeals,
  dynamic sic,
  dynamic preferredserviceidValue,
  dynamic slaidValue,
  dynamic address2County,
  dynamic aging30,
  dynamic address1Line3,
  dynamic openrevenue,
  dynamic onholdtime,
  dynamic createdbyexternalpartyValue,
  dynamic entityimageTimestamp,
  dynamic entityimageid,
  dynamic parentaccountidValue,
  dynamic yominame,
  dynamic lastusedincampaign,
  dynamic msdynSegmentidValue,
  dynamic accountcategorycode,
  dynamic openrevenueBase,
  dynamic primarytwitterid,
  dynamic telephone2,
  dynamic stockexchange,
  dynamic msdynExternalaccountid,
  dynamic aging90Base,
  dynamic address1Name,
  dynamic msdynTravelcharge,
  dynamic address1Primarycontactname,
  double? address1Longitude,
  dynamic address2Primarycontactname,
  dynamic entityimage,
  dynamic msdynWorkhourtemplateValue,
  dynamic aging60Base,
  dynamic address2Country,
}) => AccountModelFull(  odataetag: odataetag ?? this.odataetag,
  paymenttermscode: paymenttermscode ?? this.paymenttermscode,
  industrycode: industrycode ?? this.industrycode,
  address2Addresstypecode: address2Addresstypecode ?? this.address2Addresstypecode,
  merged: merged ?? this.merged,
  accountnumber: accountnumber ?? this.accountnumber,
  statecode: statecode ?? this.statecode,
  emailaddress1: emailaddress1 ?? this.emailaddress1,
  exchangerate: exchangerate ?? this.exchangerate,
  tickersymbol: tickersymbol ?? this.tickersymbol,
  name: name ?? this.name,
  websiteurl: websiteurl ?? this.websiteurl,
  owningbusinessunitValue: owningbusinessunitValue ?? this.owningbusinessunitValue,
  owninguserValue: owninguserValue ?? this.owninguserValue,
  primarycontactidValue: primarycontactidValue ?? this.primarycontactidValue,
  address1Composite: address1Composite ?? this.address1Composite,
  donotpostalmail: donotpostalmail ?? this.donotpostalmail,
  accountratingcode: accountratingcode ?? this.accountratingcode,
  numberofemployees: numberofemployees ?? this.numberofemployees,
  marketingonly: marketingonly ?? this.marketingonly,
  revenueBase: revenueBase ?? this.revenueBase,
  preferredcontactmethodcode: preferredcontactmethodcode ?? this.preferredcontactmethodcode,
  owneridValue: owneridValue ?? this.owneridValue,
  description: description ?? this.description,
  customersizecode: customersizecode ?? this.customersizecode,
  openrevenueDate: openrevenueDate ?? this.openrevenueDate,
  businesstypecode: businesstypecode ?? this.businesstypecode,
  donotemail: donotemail ?? this.donotemail,
  address2Shippingmethodcode: address2Shippingmethodcode ?? this.address2Shippingmethodcode,
  timezoneruleversionnumber: timezoneruleversionnumber ?? this.timezoneruleversionnumber,
  address1Addressid: address1Addressid ?? this.address1Addressid,
  msdynGdproptout: msdynGdproptout ?? this.msdynGdproptout,
  address2Freighttermscode: address2Freighttermscode ?? this.address2Freighttermscode,
  statuscode: statuscode ?? this.statuscode,
  createdon: createdon ?? this.createdon,
  msdynTravelchargetype: msdynTravelchargetype ?? this.msdynTravelchargetype,
  address1Stateorprovince: address1Stateorprovince ?? this.address1Stateorprovince,
  donotsendmm: donotsendmm ?? this.donotsendmm,
  donotfax: donotfax ?? this.donotfax,
  donotbulkpostalmail: donotbulkpostalmail ?? this.donotbulkpostalmail,
  address1Country: address1Country ?? this.address1Country,
  versionnumber: versionnumber ?? this.versionnumber,
  address1Line1: address1Line1 ?? this.address1Line1,
  modifiedon: modifiedon ?? this.modifiedon,
  creditonhold: creditonhold ?? this.creditonhold,
  telephone1: telephone1 ?? this.telephone1,
  donotphone: donotphone ?? this.donotphone,
  transactioncurrencyidValue: transactioncurrencyidValue ?? this.transactioncurrencyidValue,
  accountid: accountid ?? this.accountid,
  donotbulkemail: donotbulkemail ?? this.donotbulkemail,
  modifiedbyValue: modifiedbyValue ?? this.modifiedbyValue,
  followemail: followemail ?? this.followemail,
  shippingmethodcode: shippingmethodcode ?? this.shippingmethodcode,
  createdbyValue: createdbyValue ?? this.createdbyValue,
  address1City: address1City ?? this.address1City,
  territorycode: territorycode ?? this.territorycode,
  ownershipcode: ownershipcode ?? this.ownershipcode,
  fax: fax ?? this.fax,
  revenue: revenue ?? this.revenue,
  msdynTaxexempt: msdynTaxexempt ?? this.msdynTaxexempt,
  participatesinworkflow: participatesinworkflow ?? this.participatesinworkflow,
  accountclassificationcode: accountclassificationcode ?? this.accountclassificationcode,
  address2Addressid: address2Addressid ?? this.address2Addressid,
  address1Postalcode: address1Postalcode ?? this.address1Postalcode,
  opendealsDate: opendealsDate ?? this.opendealsDate,
  telephone3: telephone3 ?? this.telephone3,
  address1Shippingmethodcode: address1Shippingmethodcode ?? this.address1Shippingmethodcode,
  sharesoutstanding: sharesoutstanding ?? this.sharesoutstanding,
  defaultpricelevelidValue: defaultpricelevelidValue ?? this.defaultpricelevelidValue,
  preferredequipmentidValue: preferredequipmentidValue ?? this.preferredequipmentidValue,
  address1Freighttermscode: address1Freighttermscode ?? this.address1Freighttermscode,
  address1Upszone: address1Upszone ?? this.address1Upszone,
  slainvokedidValue: slainvokedidValue ?? this.slainvokedidValue,
  address2City: address2City ?? this.address2City,
  address1Postofficebox: address1Postofficebox ?? this.address1Postofficebox,
  importsequencenumber: importsequencenumber ?? this.importsequencenumber,
  preferredappointmentdaycode: preferredappointmentdaycode ?? this.preferredappointmentdaycode,
  customertypecode: customertypecode ?? this.customertypecode,
  utcconversiontimezonecode: utcconversiontimezonecode ?? this.utcconversiontimezonecode,
  overriddencreatedon: overriddencreatedon ?? this.overriddencreatedon,
  aging90: aging90 ?? this.aging90,
  msdynBillingaccountValue: msdynBillingaccountValue ?? this.msdynBillingaccountValue,
  stageid: stageid ?? this.stageid,
  address1Latitude: address1Latitude ?? this.address1Latitude,
  address1Utcoffset: address1Utcoffset ?? this.address1Utcoffset,
  masteridValue: masteridValue ?? this.masteridValue,
  lastonholdtime: lastonholdtime ?? this.lastonholdtime,
  address2Fax: address2Fax ?? this.address2Fax,
  msdynWorkorderinstructions: msdynWorkorderinstructions ?? this.msdynWorkorderinstructions,
  msdynTaxexemptnumber: msdynTaxexemptnumber ?? this.msdynTaxexemptnumber,
  msdynSalestaxcodeValue: msdynSalestaxcodeValue ?? this.msdynSalestaxcodeValue,
  address2Line1: address2Line1 ?? this.address2Line1,
  address1Telephone3: address1Telephone3 ?? this.address1Telephone3,
  address1Telephone2: address1Telephone2 ?? this.address1Telephone2,
  address1Telephone1: address1Telephone1 ?? this.address1Telephone1,
  address2Postofficebox: address2Postofficebox ?? this.address2Postofficebox,
  emailaddress2: emailaddress2 ?? this.emailaddress2,
  ftpsiteurl: ftpsiteurl ?? this.ftpsiteurl,
  address2Latitude: address2Latitude ?? this.address2Latitude,
  processid: processid ?? this.processid,
  emailaddress3: emailaddress3 ?? this.emailaddress3,
  address2Composite: address2Composite ?? this.address2Composite,
  msdynPreferredresourceValue: msdynPreferredresourceValue ?? this.msdynPreferredresourceValue,
  traversedpath: traversedpath ?? this.traversedpath,
  address2Line2: address2Line2 ?? this.address2Line2,
  aging30Base: aging30Base ?? this.aging30Base,
  teamsfollowed: teamsfollowed ?? this.teamsfollowed,
  address1Addresstypecode: address1Addresstypecode ?? this.address1Addresstypecode,
  address2Stateorprovince: address2Stateorprovince ?? this.address2Stateorprovince,
  address2Postalcode: address2Postalcode ?? this.address2Postalcode,
  openrevenueState: openrevenueState ?? this.openrevenueState,
  entityimageUrl: entityimageUrl ?? this.entityimageUrl,
  aging60: aging60 ?? this.aging60,
  address2Telephone3: address2Telephone3 ?? this.address2Telephone3,
  address2Telephone2: address2Telephone2 ?? this.address2Telephone2,
  address2Telephone1: address2Telephone1 ?? this.address2Telephone1,
  address2Upszone: address2Upszone ?? this.address2Upszone,
  owningteamValue: owningteamValue ?? this.owningteamValue,
  primarysatoriid: primarysatoriid ?? this.primarysatoriid,
  address2Line3: address2Line3 ?? this.address2Line3,
  timespentbymeonemailandmeetings: timespentbymeonemailandmeetings ?? this.timespentbymeonemailandmeetings,
  opendealsState: opendealsState ?? this.opendealsState,
  address2Longitude: address2Longitude ?? this.address2Longitude,
  modifiedonbehalfbyValue: modifiedonbehalfbyValue ?? this.modifiedonbehalfbyValue,
  creditlimit: creditlimit ?? this.creditlimit,
  address1Line2: address1Line2 ?? this.address1Line2,
  msdynTravelchargeBase: msdynTravelchargeBase ?? this.msdynTravelchargeBase,
  address1County: address1County ?? this.address1County,
  territoryidValue: territoryidValue ?? this.territoryidValue,
  marketcap: marketcap ?? this.marketcap,
  preferredsystemuseridValue: preferredsystemuseridValue ?? this.preferredsystemuseridValue,
  preferredappointmenttimecode: preferredappointmenttimecode ?? this.preferredappointmenttimecode,
  address1Fax: address1Fax ?? this.address1Fax,
  createdonbehalfbyValue: createdonbehalfbyValue ?? this.createdonbehalfbyValue,
  address2Name: address2Name ?? this.address2Name,
  creditlimitBase: creditlimitBase ?? this.creditlimitBase,
  marketcapBase: marketcapBase ?? this.marketcapBase,
  msdynServiceterritoryValue: msdynServiceterritoryValue ?? this.msdynServiceterritoryValue,
  address2Utcoffset: address2Utcoffset ?? this.address2Utcoffset,
  modifiedbyexternalpartyValue: modifiedbyexternalpartyValue ?? this.modifiedbyexternalpartyValue,
  originatingleadidValue: originatingleadidValue ?? this.originatingleadidValue,
  opendeals: opendeals ?? this.opendeals,
  sic: sic ?? this.sic,
  preferredserviceidValue: preferredserviceidValue ?? this.preferredserviceidValue,
  slaidValue: slaidValue ?? this.slaidValue,
  address2County: address2County ?? this.address2County,
  aging30: aging30 ?? this.aging30,
  address1Line3: address1Line3 ?? this.address1Line3,
  openrevenue: openrevenue ?? this.openrevenue,
  onholdtime: onholdtime ?? this.onholdtime,
  createdbyexternalpartyValue: createdbyexternalpartyValue ?? this.createdbyexternalpartyValue,
  entityimageTimestamp: entityimageTimestamp ?? this.entityimageTimestamp,
  entityimageid: entityimageid ?? this.entityimageid,
  parentaccountidValue: parentaccountidValue ?? this.parentaccountidValue,
  yominame: yominame ?? this.yominame,
  lastusedincampaign: lastusedincampaign ?? this.lastusedincampaign,
  msdynSegmentidValue: msdynSegmentidValue ?? this.msdynSegmentidValue,
  accountcategorycode: accountcategorycode ?? this.accountcategorycode,
  openrevenueBase: openrevenueBase ?? this.openrevenueBase,
  primarytwitterid: primarytwitterid ?? this.primarytwitterid,
  telephone2: telephone2 ?? this.telephone2,
  stockexchange: stockexchange ?? this.stockexchange,
  msdynExternalaccountid: msdynExternalaccountid ?? this.msdynExternalaccountid,
  aging90Base: aging90Base ?? this.aging90Base,
  address1Name: address1Name ?? this.address1Name,
  msdynTravelcharge: msdynTravelcharge ?? this.msdynTravelcharge,
  address1Primarycontactname: address1Primarycontactname ?? this.address1Primarycontactname,
  address1Longitude: address1Longitude ?? this.address1Longitude,
  address2Primarycontactname: address2Primarycontactname ?? this.address2Primarycontactname,
  entityimage: entityimage ?? this.entityimage,
  msdynWorkhourtemplateValue: msdynWorkhourtemplateValue ?? this.msdynWorkhourtemplateValue,
  aging60Base: aging60Base ?? this.aging60Base,
  address2Country: address2Country ?? this.address2Country,
);



  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['@odata.etag'] = odataetag;
    map['paymenttermscode'] = paymenttermscode;
    map['industrycode'] = industrycode;
    map['address2_addresstypecode'] = address2Addresstypecode;
    map['merged'] = merged;
    map['accountnumber'] = accountnumber;
    map['statecode'] = statecode;
    map['emailaddress1'] = emailaddress1;
    map['exchangerate'] = exchangerate;
    map['tickersymbol'] = tickersymbol;
    map['name'] = name;
    map['websiteurl'] = websiteurl;
    map['_owningbusinessunit_value'] = owningbusinessunitValue;
    map['_owninguser_value'] = owninguserValue;
    map['_primarycontactid_value'] = primarycontactidValue;
    map['address1_composite'] = address1Composite;
    map['donotpostalmail'] = donotpostalmail;
    map['accountratingcode'] = accountratingcode;
    map['numberofemployees'] = numberofemployees;
    map['marketingonly'] = marketingonly;
    map['revenue_base'] = revenueBase;
    map['preferredcontactmethodcode'] = preferredcontactmethodcode;
    map['_ownerid_value'] = owneridValue;
    map['description'] = description;
    map['customersizecode'] = customersizecode;
    map['openrevenue_date'] = openrevenueDate;
    map['businesstypecode'] = businesstypecode;
    map['donotemail'] = donotemail;
    map['address2_shippingmethodcode'] = address2Shippingmethodcode;
    map['timezoneruleversionnumber'] = timezoneruleversionnumber;
    map['address1_addressid'] = address1Addressid;
    map['msdyn_gdproptout'] = msdynGdproptout;
    map['address2_freighttermscode'] = address2Freighttermscode;
    map['statuscode'] = statuscode;
    map['createdon'] = createdon;
    map['msdyn_travelchargetype'] = msdynTravelchargetype;
    map['address1_stateorprovince'] = address1Stateorprovince;
    map['donotsendmm'] = donotsendmm;
    map['donotfax'] = donotfax;
    map['donotbulkpostalmail'] = donotbulkpostalmail;
    map['address1_country'] = address1Country;
    map['versionnumber'] = versionnumber;
    map['address1_line1'] = address1Line1;
    map['modifiedon'] = modifiedon;
    map['creditonhold'] = creditonhold;
    map['telephone1'] = telephone1;
    map['donotphone'] = donotphone;
    map['_transactioncurrencyid_value'] = transactioncurrencyidValue;
    map['accountid'] = accountid;
    map['donotbulkemail'] = donotbulkemail;
    map['_modifiedby_value'] = modifiedbyValue;
    map['followemail'] = followemail;
    map['shippingmethodcode'] = shippingmethodcode;
    map['_createdby_value'] = createdbyValue;
    map['address1_city'] = address1City;
    map['territorycode'] = territorycode;
    map['ownershipcode'] = ownershipcode;
    map['fax'] = fax;
    map['revenue'] = revenue;
    map['msdyn_taxexempt'] = msdynTaxexempt;
    map['participatesinworkflow'] = participatesinworkflow;
    map['accountclassificationcode'] = accountclassificationcode;
    map['address2_addressid'] = address2Addressid;
    map['address1_postalcode'] = address1Postalcode;
    map['opendeals_date'] = opendealsDate;
    map['telephone3'] = telephone3;
    map['address1_shippingmethodcode'] = address1Shippingmethodcode;
    map['sharesoutstanding'] = sharesoutstanding;
    map['_defaultpricelevelid_value'] = defaultpricelevelidValue;
    map['_preferredequipmentid_value'] = preferredequipmentidValue;
    map['address1_freighttermscode'] = address1Freighttermscode;
    map['address1_upszone'] = address1Upszone;
    map['_slainvokedid_value'] = slainvokedidValue;
    map['address2_city'] = address2City;
    map['address1_postofficebox'] = address1Postofficebox;
    map['importsequencenumber'] = importsequencenumber;
    map['preferredappointmentdaycode'] = preferredappointmentdaycode;
    map['customertypecode'] = customertypecode;
    map['utcconversiontimezonecode'] = utcconversiontimezonecode;
    map['overriddencreatedon'] = overriddencreatedon;
    map['aging90'] = aging90;
    map['_msdyn_billingaccount_value'] = msdynBillingaccountValue;
    map['stageid'] = stageid;
    map['address1_latitude'] = address1Latitude;
    map['address1_utcoffset'] = address1Utcoffset;
    map['_masterid_value'] = masteridValue;
    map['lastonholdtime'] = lastonholdtime;
    map['address2_fax'] = address2Fax;
    map['msdyn_workorderinstructions'] = msdynWorkorderinstructions;
    map['msdyn_taxexemptnumber'] = msdynTaxexemptnumber;
    map['_msdyn_salestaxcode_value'] = msdynSalestaxcodeValue;
    map['address2_line1'] = address2Line1;
    map['address1_telephone3'] = address1Telephone3;
    map['address1_telephone2'] = address1Telephone2;
    map['address1_telephone1'] = address1Telephone1;
    map['address2_postofficebox'] = address2Postofficebox;
    map['emailaddress2'] = emailaddress2;
    map['ftpsiteurl'] = ftpsiteurl;
    map['address2_latitude'] = address2Latitude;
    map['processid'] = processid;
    map['emailaddress3'] = emailaddress3;
    map['address2_composite'] = address2Composite;
    map['_msdyn_preferredresource_value'] = msdynPreferredresourceValue;
    map['traversedpath'] = traversedpath;
    map['address2_line2'] = address2Line2;
    map['aging30_base'] = aging30Base;
    map['teamsfollowed'] = teamsfollowed;
    map['address1_addresstypecode'] = address1Addresstypecode;
    map['address2_stateorprovince'] = address2Stateorprovince;
    map['address2_postalcode'] = address2Postalcode;
    map['openrevenue_state'] = openrevenueState;
    map['entityimage_url'] = entityimageUrl;
    map['aging60'] = aging60;
    map['address2_telephone3'] = address2Telephone3;
    map['address2_telephone2'] = address2Telephone2;
    map['address2_telephone1'] = address2Telephone1;
    map['address2_upszone'] = address2Upszone;
    map['_owningteam_value'] = owningteamValue;
    map['primarysatoriid'] = primarysatoriid;
    map['address2_line3'] = address2Line3;
    map['timespentbymeonemailandmeetings'] = timespentbymeonemailandmeetings;
    map['opendeals_state'] = opendealsState;
    map['address2_longitude'] = address2Longitude;
    map['_modifiedonbehalfby_value'] = modifiedonbehalfbyValue;
    map['creditlimit'] = creditlimit;
    map['address1_line2'] = address1Line2;
    map['msdyn_travelcharge_base'] = msdynTravelchargeBase;
    map['address1_county'] = address1County;
    map['_territoryid_value'] = territoryidValue;
    map['marketcap'] = marketcap;
    map['_preferredsystemuserid_value'] = preferredsystemuseridValue;
    map['preferredappointmenttimecode'] = preferredappointmenttimecode;
    map['address1_fax'] = address1Fax;
    map['_createdonbehalfby_value'] = createdonbehalfbyValue;
    map['address2_name'] = address2Name;
    map['creditlimit_base'] = creditlimitBase;
    map['marketcap_base'] = marketcapBase;
    map['_msdyn_serviceterritory_value'] = msdynServiceterritoryValue;
    map['address2_utcoffset'] = address2Utcoffset;
    map['_modifiedbyexternalparty_value'] = modifiedbyexternalpartyValue;
    map['_originatingleadid_value'] = originatingleadidValue;
    map['opendeals'] = opendeals;
    map['sic'] = sic;
    map['_preferredserviceid_value'] = preferredserviceidValue;
    map['_slaid_value'] = slaidValue;
    map['address2_county'] = address2County;
    map['aging30'] = aging30;
    map['address1_line3'] = address1Line3;
    map['openrevenue'] = openrevenue;
    map['onholdtime'] = onholdtime;
    map['_createdbyexternalparty_value'] = createdbyexternalpartyValue;
    map['entityimage_timestamp'] = entityimageTimestamp;
    map['entityimageid'] = entityimageid;
    map['_parentaccountid_value'] = parentaccountidValue;
    map['yominame'] = yominame;
    map['lastusedincampaign'] = lastusedincampaign;
    map['_msdyn_segmentid_value'] = msdynSegmentidValue;
    map['accountcategorycode'] = accountcategorycode;
    map['openrevenue_base'] = openrevenueBase;
    map['primarytwitterid'] = primarytwitterid;
    map['telephone2'] = telephone2;
    map['stockexchange'] = stockexchange;
    map['msdyn_externalaccountid'] = msdynExternalaccountid;
    map['aging90_base'] = aging90Base;
    map['address1_name'] = address1Name;
    map['msdyn_travelcharge'] = msdynTravelcharge;
    map['address1_primarycontactname'] = address1Primarycontactname;
    map['address1_longitude'] = address1Longitude;
    map['address2_primarycontactname'] = address2Primarycontactname;
    map['entityimage'] = entityimage;
    map['_msdyn_workhourtemplate_value'] = msdynWorkhourtemplateValue;
    map['aging60_base'] = aging60Base;
    map['address2_country'] = address2Country;
    return map;
  }

}