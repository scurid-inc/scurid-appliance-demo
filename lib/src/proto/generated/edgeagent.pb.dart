//
//  Generated code. Do not modify.
//  source: edgeagent.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class GetDeviceUsersReq extends $pb.GeneratedMessage {
  factory GetDeviceUsersReq() => create();
  GetDeviceUsersReq._() : super();
  factory GetDeviceUsersReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceUsersReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceUsersReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceUsersReq clone() => GetDeviceUsersReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceUsersReq copyWith(void Function(GetDeviceUsersReq) updates) => super.copyWith((message) => updates(message as GetDeviceUsersReq)) as GetDeviceUsersReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceUsersReq create() => GetDeviceUsersReq._();
  GetDeviceUsersReq createEmptyInstance() => create();
  static $pb.PbList<GetDeviceUsersReq> createRepeated() => $pb.PbList<GetDeviceUsersReq>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceUsersReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceUsersReq>(create);
  static GetDeviceUsersReq? _defaultInstance;
}

class GetDeviceUsersRes extends $pb.GeneratedMessage {
  factory GetDeviceUsersRes({
    $core.Iterable<DeviceUsers>? deviceUsers,
  }) {
    final $result = create();
    if (deviceUsers != null) {
      $result.deviceUsers.addAll(deviceUsers);
    }
    return $result;
  }
  GetDeviceUsersRes._() : super();
  factory GetDeviceUsersRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceUsersRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceUsersRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..pc<DeviceUsers>(1, _omitFieldNames ? '' : 'deviceUsers', $pb.PbFieldType.PM, protoName: 'deviceUsers', subBuilder: DeviceUsers.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceUsersRes clone() => GetDeviceUsersRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceUsersRes copyWith(void Function(GetDeviceUsersRes) updates) => super.copyWith((message) => updates(message as GetDeviceUsersRes)) as GetDeviceUsersRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceUsersRes create() => GetDeviceUsersRes._();
  GetDeviceUsersRes createEmptyInstance() => create();
  static $pb.PbList<GetDeviceUsersRes> createRepeated() => $pb.PbList<GetDeviceUsersRes>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceUsersRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceUsersRes>(create);
  static GetDeviceUsersRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DeviceUsers> get deviceUsers => $_getList(0);
}

class DeviceUsers extends $pb.GeneratedMessage {
  factory DeviceUsers({
    $core.String? email,
    $core.String? sessionID,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    if (sessionID != null) {
      $result.sessionID = sessionID;
    }
    return $result;
  }
  DeviceUsers._() : super();
  factory DeviceUsers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeviceUsers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeviceUsers', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'sessionID', protoName: 'sessionID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeviceUsers clone() => DeviceUsers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeviceUsers copyWith(void Function(DeviceUsers) updates) => super.copyWith((message) => updates(message as DeviceUsers)) as DeviceUsers;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceUsers create() => DeviceUsers._();
  DeviceUsers createEmptyInstance() => create();
  static $pb.PbList<DeviceUsers> createRepeated() => $pb.PbList<DeviceUsers>();
  @$core.pragma('dart2js:noInline')
  static DeviceUsers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceUsers>(create);
  static DeviceUsers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionID => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionID() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionID() => clearField(2);
}

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class BiometricAuthReq extends $pb.GeneratedMessage {
  factory BiometricAuthReq({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  BiometricAuthReq._() : super();
  factory BiometricAuthReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BiometricAuthReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BiometricAuthReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BiometricAuthReq clone() => BiometricAuthReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BiometricAuthReq copyWith(void Function(BiometricAuthReq) updates) => super.copyWith((message) => updates(message as BiometricAuthReq)) as BiometricAuthReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BiometricAuthReq create() => BiometricAuthReq._();
  BiometricAuthReq createEmptyInstance() => create();
  static $pb.PbList<BiometricAuthReq> createRepeated() => $pb.PbList<BiometricAuthReq>();
  @$core.pragma('dart2js:noInline')
  static BiometricAuthReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BiometricAuthReq>(create);
  static BiometricAuthReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class BiometricAuthRes extends $pb.GeneratedMessage {
  factory BiometricAuthRes({
    $core.String? verificationURL,
  }) {
    final $result = create();
    if (verificationURL != null) {
      $result.verificationURL = verificationURL;
    }
    return $result;
  }
  BiometricAuthRes._() : super();
  factory BiometricAuthRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BiometricAuthRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BiometricAuthRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'verificationURL', protoName: 'verificationURL')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BiometricAuthRes clone() => BiometricAuthRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BiometricAuthRes copyWith(void Function(BiometricAuthRes) updates) => super.copyWith((message) => updates(message as BiometricAuthRes)) as BiometricAuthRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BiometricAuthRes create() => BiometricAuthRes._();
  BiometricAuthRes createEmptyInstance() => create();
  static $pb.PbList<BiometricAuthRes> createRepeated() => $pb.PbList<BiometricAuthRes>();
  @$core.pragma('dart2js:noInline')
  static BiometricAuthRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BiometricAuthRes>(create);
  static BiometricAuthRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get verificationURL => $_getSZ(0);
  @$pb.TagNumber(1)
  set verificationURL($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerificationURL() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerificationURL() => clearField(1);
}

class SendDeviceDataWithCustomFieldsReq extends $pb.GeneratedMessage {
  factory SendDeviceDataWithCustomFieldsReq({
    $core.String? agentDID,
    $core.Iterable<$core.String>? data,
    InfluxData? influxData,
  }) {
    final $result = create();
    if (agentDID != null) {
      $result.agentDID = agentDID;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    if (influxData != null) {
      $result.influxData = influxData;
    }
    return $result;
  }
  SendDeviceDataWithCustomFieldsReq._() : super();
  factory SendDeviceDataWithCustomFieldsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDeviceDataWithCustomFieldsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendDeviceDataWithCustomFieldsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'agentDID', protoName: 'agentDID')
    ..pPS(2, _omitFieldNames ? '' : 'data')
    ..aOM<InfluxData>(3, _omitFieldNames ? '' : 'influxData', protoName: 'influxData', subBuilder: InfluxData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendDeviceDataWithCustomFieldsReq clone() => SendDeviceDataWithCustomFieldsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendDeviceDataWithCustomFieldsReq copyWith(void Function(SendDeviceDataWithCustomFieldsReq) updates) => super.copyWith((message) => updates(message as SendDeviceDataWithCustomFieldsReq)) as SendDeviceDataWithCustomFieldsReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDeviceDataWithCustomFieldsReq create() => SendDeviceDataWithCustomFieldsReq._();
  SendDeviceDataWithCustomFieldsReq createEmptyInstance() => create();
  static $pb.PbList<SendDeviceDataWithCustomFieldsReq> createRepeated() => $pb.PbList<SendDeviceDataWithCustomFieldsReq>();
  @$core.pragma('dart2js:noInline')
  static SendDeviceDataWithCustomFieldsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendDeviceDataWithCustomFieldsReq>(create);
  static SendDeviceDataWithCustomFieldsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get agentDID => $_getSZ(0);
  @$pb.TagNumber(1)
  set agentDID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgentDID() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgentDID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get data => $_getList(1);

  @$pb.TagNumber(3)
  InfluxData get influxData => $_getN(2);
  @$pb.TagNumber(3)
  set influxData(InfluxData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasInfluxData() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfluxData() => clearField(3);
  @$pb.TagNumber(3)
  InfluxData ensureInfluxData() => $_ensure(2);
}

class SendDeviceDataWithCustomFieldsRes extends $pb.GeneratedMessage {
  factory SendDeviceDataWithCustomFieldsRes({
    $core.bool? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  SendDeviceDataWithCustomFieldsRes._() : super();
  factory SendDeviceDataWithCustomFieldsRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDeviceDataWithCustomFieldsRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendDeviceDataWithCustomFieldsRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendDeviceDataWithCustomFieldsRes clone() => SendDeviceDataWithCustomFieldsRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendDeviceDataWithCustomFieldsRes copyWith(void Function(SendDeviceDataWithCustomFieldsRes) updates) => super.copyWith((message) => updates(message as SendDeviceDataWithCustomFieldsRes)) as SendDeviceDataWithCustomFieldsRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDeviceDataWithCustomFieldsRes create() => SendDeviceDataWithCustomFieldsRes._();
  SendDeviceDataWithCustomFieldsRes createEmptyInstance() => create();
  static $pb.PbList<SendDeviceDataWithCustomFieldsRes> createRepeated() => $pb.PbList<SendDeviceDataWithCustomFieldsRes>();
  @$core.pragma('dart2js:noInline')
  static SendDeviceDataWithCustomFieldsRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendDeviceDataWithCustomFieldsRes>(create);
  static SendDeviceDataWithCustomFieldsRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class GetOnboardingPackageReq extends $pb.GeneratedMessage {
  factory GetOnboardingPackageReq({
    $core.String? did,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  GetOnboardingPackageReq._() : super();
  factory GetOnboardingPackageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOnboardingPackageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOnboardingPackageReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOnboardingPackageReq clone() => GetOnboardingPackageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOnboardingPackageReq copyWith(void Function(GetOnboardingPackageReq) updates) => super.copyWith((message) => updates(message as GetOnboardingPackageReq)) as GetOnboardingPackageReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOnboardingPackageReq create() => GetOnboardingPackageReq._();
  GetOnboardingPackageReq createEmptyInstance() => create();
  static $pb.PbList<GetOnboardingPackageReq> createRepeated() => $pb.PbList<GetOnboardingPackageReq>();
  @$core.pragma('dart2js:noInline')
  static GetOnboardingPackageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOnboardingPackageReq>(create);
  static GetOnboardingPackageReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);
}

class GetOnboardingPackageRes extends $pb.GeneratedMessage {
  factory GetOnboardingPackageRes({
    $core.String? onboardingPkg,
  }) {
    final $result = create();
    if (onboardingPkg != null) {
      $result.onboardingPkg = onboardingPkg;
    }
    return $result;
  }
  GetOnboardingPackageRes._() : super();
  factory GetOnboardingPackageRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOnboardingPackageRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOnboardingPackageRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'onboardingPkg', protoName: 'onboardingPkg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOnboardingPackageRes clone() => GetOnboardingPackageRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOnboardingPackageRes copyWith(void Function(GetOnboardingPackageRes) updates) => super.copyWith((message) => updates(message as GetOnboardingPackageRes)) as GetOnboardingPackageRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOnboardingPackageRes create() => GetOnboardingPackageRes._();
  GetOnboardingPackageRes createEmptyInstance() => create();
  static $pb.PbList<GetOnboardingPackageRes> createRepeated() => $pb.PbList<GetOnboardingPackageRes>();
  @$core.pragma('dart2js:noInline')
  static GetOnboardingPackageRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOnboardingPackageRes>(create);
  static GetOnboardingPackageRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get onboardingPkg => $_getSZ(0);
  @$pb.TagNumber(1)
  set onboardingPkg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOnboardingPkg() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnboardingPkg() => clearField(1);
}

class GetTokenReq extends $pb.GeneratedMessage {
  factory GetTokenReq({
    $core.String? username,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    return $result;
  }
  GetTokenReq._() : super();
  factory GetTokenReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTokenReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTokenReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTokenReq clone() => GetTokenReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTokenReq copyWith(void Function(GetTokenReq) updates) => super.copyWith((message) => updates(message as GetTokenReq)) as GetTokenReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTokenReq create() => GetTokenReq._();
  GetTokenReq createEmptyInstance() => create();
  static $pb.PbList<GetTokenReq> createRepeated() => $pb.PbList<GetTokenReq>();
  @$core.pragma('dart2js:noInline')
  static GetTokenReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTokenReq>(create);
  static GetTokenReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);
}

class GetTokenRes extends $pb.GeneratedMessage {
  factory GetTokenRes({
    $core.String? token,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  GetTokenRes._() : super();
  factory GetTokenRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTokenRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTokenRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTokenRes clone() => GetTokenRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTokenRes copyWith(void Function(GetTokenRes) updates) => super.copyWith((message) => updates(message as GetTokenRes)) as GetTokenRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTokenRes create() => GetTokenRes._();
  GetTokenRes createEmptyInstance() => create();
  static $pb.PbList<GetTokenRes> createRepeated() => $pb.PbList<GetTokenRes>();
  @$core.pragma('dart2js:noInline')
  static GetTokenRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTokenRes>(create);
  static GetTokenRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class VerifySignatureReq extends $pb.GeneratedMessage {
  factory VerifySignatureReq({
    $core.String? signature,
    $core.String? payload,
    $core.String? did,
  }) {
    final $result = create();
    if (signature != null) {
      $result.signature = signature;
    }
    if (payload != null) {
      $result.payload = payload;
    }
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  VerifySignatureReq._() : super();
  factory VerifySignatureReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifySignatureReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifySignatureReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'signature')
    ..aOS(2, _omitFieldNames ? '' : 'payload')
    ..aOS(3, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifySignatureReq clone() => VerifySignatureReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifySignatureReq copyWith(void Function(VerifySignatureReq) updates) => super.copyWith((message) => updates(message as VerifySignatureReq)) as VerifySignatureReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifySignatureReq create() => VerifySignatureReq._();
  VerifySignatureReq createEmptyInstance() => create();
  static $pb.PbList<VerifySignatureReq> createRepeated() => $pb.PbList<VerifySignatureReq>();
  @$core.pragma('dart2js:noInline')
  static VerifySignatureReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifySignatureReq>(create);
  static VerifySignatureReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get payload => $_getSZ(1);
  @$pb.TagNumber(2)
  set payload($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get did => $_getSZ(2);
  @$pb.TagNumber(3)
  set did($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDid() => $_has(2);
  @$pb.TagNumber(3)
  void clearDid() => clearField(3);
}

class VerifySignatureRes extends $pb.GeneratedMessage {
  factory VerifySignatureRes({
    $core.bool? isValid,
  }) {
    final $result = create();
    if (isValid != null) {
      $result.isValid = isValid;
    }
    return $result;
  }
  VerifySignatureRes._() : super();
  factory VerifySignatureRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifySignatureRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifySignatureRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isValid', protoName: 'isValid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifySignatureRes clone() => VerifySignatureRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifySignatureRes copyWith(void Function(VerifySignatureRes) updates) => super.copyWith((message) => updates(message as VerifySignatureRes)) as VerifySignatureRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifySignatureRes create() => VerifySignatureRes._();
  VerifySignatureRes createEmptyInstance() => create();
  static $pb.PbList<VerifySignatureRes> createRepeated() => $pb.PbList<VerifySignatureRes>();
  @$core.pragma('dart2js:noInline')
  static VerifySignatureRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifySignatureRes>(create);
  static VerifySignatureRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isValid => $_getBF(0);
  @$pb.TagNumber(1)
  set isValid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsValid() => clearField(1);
}

class SignWithIdentityReq extends $pb.GeneratedMessage {
  factory SignWithIdentityReq({
    $core.String? payload,
    $core.String? did,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  SignWithIdentityReq._() : super();
  factory SignWithIdentityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignWithIdentityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignWithIdentityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'payload')
    ..aOS(2, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignWithIdentityReq clone() => SignWithIdentityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignWithIdentityReq copyWith(void Function(SignWithIdentityReq) updates) => super.copyWith((message) => updates(message as SignWithIdentityReq)) as SignWithIdentityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignWithIdentityReq create() => SignWithIdentityReq._();
  SignWithIdentityReq createEmptyInstance() => create();
  static $pb.PbList<SignWithIdentityReq> createRepeated() => $pb.PbList<SignWithIdentityReq>();
  @$core.pragma('dart2js:noInline')
  static SignWithIdentityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignWithIdentityReq>(create);
  static SignWithIdentityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get payload => $_getSZ(0);
  @$pb.TagNumber(1)
  set payload($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get did => $_getSZ(1);
  @$pb.TagNumber(2)
  set did($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDid() => $_has(1);
  @$pb.TagNumber(2)
  void clearDid() => clearField(2);
}

class SignWithIdentityRes extends $pb.GeneratedMessage {
  factory SignWithIdentityRes({
    $core.String? signature,
  }) {
    final $result = create();
    if (signature != null) {
      $result.signature = signature;
    }
    return $result;
  }
  SignWithIdentityRes._() : super();
  factory SignWithIdentityRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignWithIdentityRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignWithIdentityRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignWithIdentityRes clone() => SignWithIdentityRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignWithIdentityRes copyWith(void Function(SignWithIdentityRes) updates) => super.copyWith((message) => updates(message as SignWithIdentityRes)) as SignWithIdentityRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignWithIdentityRes create() => SignWithIdentityRes._();
  SignWithIdentityRes createEmptyInstance() => create();
  static $pb.PbList<SignWithIdentityRes> createRepeated() => $pb.PbList<SignWithIdentityRes>();
  @$core.pragma('dart2js:noInline')
  static SignWithIdentityRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignWithIdentityRes>(create);
  static SignWithIdentityRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
}

class SignBytePayloadWithIdentityReq extends $pb.GeneratedMessage {
  factory SignBytePayloadWithIdentityReq({
    $core.List<$core.int>? payload,
    $core.String? did,
  }) {
    final $result = create();
    if (payload != null) {
      $result.payload = payload;
    }
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  SignBytePayloadWithIdentityReq._() : super();
  factory SignBytePayloadWithIdentityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignBytePayloadWithIdentityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignBytePayloadWithIdentityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'payload', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignBytePayloadWithIdentityReq clone() => SignBytePayloadWithIdentityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignBytePayloadWithIdentityReq copyWith(void Function(SignBytePayloadWithIdentityReq) updates) => super.copyWith((message) => updates(message as SignBytePayloadWithIdentityReq)) as SignBytePayloadWithIdentityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignBytePayloadWithIdentityReq create() => SignBytePayloadWithIdentityReq._();
  SignBytePayloadWithIdentityReq createEmptyInstance() => create();
  static $pb.PbList<SignBytePayloadWithIdentityReq> createRepeated() => $pb.PbList<SignBytePayloadWithIdentityReq>();
  @$core.pragma('dart2js:noInline')
  static SignBytePayloadWithIdentityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignBytePayloadWithIdentityReq>(create);
  static SignBytePayloadWithIdentityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get did => $_getSZ(1);
  @$pb.TagNumber(2)
  set did($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDid() => $_has(1);
  @$pb.TagNumber(2)
  void clearDid() => clearField(2);
}

class SignBytePayloadWithIdentityRes extends $pb.GeneratedMessage {
  factory SignBytePayloadWithIdentityRes({
    $core.String? signature,
  }) {
    final $result = create();
    if (signature != null) {
      $result.signature = signature;
    }
    return $result;
  }
  SignBytePayloadWithIdentityRes._() : super();
  factory SignBytePayloadWithIdentityRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignBytePayloadWithIdentityRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignBytePayloadWithIdentityRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignBytePayloadWithIdentityRes clone() => SignBytePayloadWithIdentityRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignBytePayloadWithIdentityRes copyWith(void Function(SignBytePayloadWithIdentityRes) updates) => super.copyWith((message) => updates(message as SignBytePayloadWithIdentityRes)) as SignBytePayloadWithIdentityRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignBytePayloadWithIdentityRes create() => SignBytePayloadWithIdentityRes._();
  SignBytePayloadWithIdentityRes createEmptyInstance() => create();
  static $pb.PbList<SignBytePayloadWithIdentityRes> createRepeated() => $pb.PbList<SignBytePayloadWithIdentityRes>();
  @$core.pragma('dart2js:noInline')
  static SignBytePayloadWithIdentityRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignBytePayloadWithIdentityRes>(create);
  static SignBytePayloadWithIdentityRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
}

class VerifyBytePayloadWithIdentityReq extends $pb.GeneratedMessage {
  factory VerifyBytePayloadWithIdentityReq({
    $core.String? signature,
    $core.List<$core.int>? payload,
    $core.String? did,
  }) {
    final $result = create();
    if (signature != null) {
      $result.signature = signature;
    }
    if (payload != null) {
      $result.payload = payload;
    }
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  VerifyBytePayloadWithIdentityReq._() : super();
  factory VerifyBytePayloadWithIdentityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyBytePayloadWithIdentityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyBytePayloadWithIdentityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'signature')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'payload', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyBytePayloadWithIdentityReq clone() => VerifyBytePayloadWithIdentityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyBytePayloadWithIdentityReq copyWith(void Function(VerifyBytePayloadWithIdentityReq) updates) => super.copyWith((message) => updates(message as VerifyBytePayloadWithIdentityReq)) as VerifyBytePayloadWithIdentityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyBytePayloadWithIdentityReq create() => VerifyBytePayloadWithIdentityReq._();
  VerifyBytePayloadWithIdentityReq createEmptyInstance() => create();
  static $pb.PbList<VerifyBytePayloadWithIdentityReq> createRepeated() => $pb.PbList<VerifyBytePayloadWithIdentityReq>();
  @$core.pragma('dart2js:noInline')
  static VerifyBytePayloadWithIdentityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyBytePayloadWithIdentityReq>(create);
  static VerifyBytePayloadWithIdentityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get did => $_getSZ(2);
  @$pb.TagNumber(3)
  set did($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDid() => $_has(2);
  @$pb.TagNumber(3)
  void clearDid() => clearField(3);
}

class VerifyBytePayloadWithIdentityRes extends $pb.GeneratedMessage {
  factory VerifyBytePayloadWithIdentityRes({
    $core.bool? isValid,
  }) {
    final $result = create();
    if (isValid != null) {
      $result.isValid = isValid;
    }
    return $result;
  }
  VerifyBytePayloadWithIdentityRes._() : super();
  factory VerifyBytePayloadWithIdentityRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyBytePayloadWithIdentityRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyBytePayloadWithIdentityRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isValid', protoName: 'isValid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyBytePayloadWithIdentityRes clone() => VerifyBytePayloadWithIdentityRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyBytePayloadWithIdentityRes copyWith(void Function(VerifyBytePayloadWithIdentityRes) updates) => super.copyWith((message) => updates(message as VerifyBytePayloadWithIdentityRes)) as VerifyBytePayloadWithIdentityRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyBytePayloadWithIdentityRes create() => VerifyBytePayloadWithIdentityRes._();
  VerifyBytePayloadWithIdentityRes createEmptyInstance() => create();
  static $pb.PbList<VerifyBytePayloadWithIdentityRes> createRepeated() => $pb.PbList<VerifyBytePayloadWithIdentityRes>();
  @$core.pragma('dart2js:noInline')
  static VerifyBytePayloadWithIdentityRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyBytePayloadWithIdentityRes>(create);
  static VerifyBytePayloadWithIdentityRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isValid => $_getBF(0);
  @$pb.TagNumber(1)
  set isValid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsValid() => clearField(1);
}

class CreateDeviceIdentityReq extends $pb.GeneratedMessage {
  factory CreateDeviceIdentityReq() => create();
  CreateDeviceIdentityReq._() : super();
  factory CreateDeviceIdentityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDeviceIdentityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDeviceIdentityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityReq clone() => CreateDeviceIdentityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityReq copyWith(void Function(CreateDeviceIdentityReq) updates) => super.copyWith((message) => updates(message as CreateDeviceIdentityReq)) as CreateDeviceIdentityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityReq create() => CreateDeviceIdentityReq._();
  CreateDeviceIdentityReq createEmptyInstance() => create();
  static $pb.PbList<CreateDeviceIdentityReq> createRepeated() => $pb.PbList<CreateDeviceIdentityReq>();
  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDeviceIdentityReq>(create);
  static CreateDeviceIdentityReq? _defaultInstance;
}

class CreateDeviceIdentityRes extends $pb.GeneratedMessage {
  factory CreateDeviceIdentityRes({
    $core.String? did,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  CreateDeviceIdentityRes._() : super();
  factory CreateDeviceIdentityRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDeviceIdentityRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDeviceIdentityRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityRes clone() => CreateDeviceIdentityRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityRes copyWith(void Function(CreateDeviceIdentityRes) updates) => super.copyWith((message) => updates(message as CreateDeviceIdentityRes)) as CreateDeviceIdentityRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityRes create() => CreateDeviceIdentityRes._();
  CreateDeviceIdentityRes createEmptyInstance() => create();
  static $pb.PbList<CreateDeviceIdentityRes> createRepeated() => $pb.PbList<CreateDeviceIdentityRes>();
  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDeviceIdentityRes>(create);
  static CreateDeviceIdentityRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);
}

class DeleteDeviceIdentityReq extends $pb.GeneratedMessage {
  factory DeleteDeviceIdentityReq({
    $core.String? did,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  DeleteDeviceIdentityReq._() : super();
  factory DeleteDeviceIdentityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteDeviceIdentityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteDeviceIdentityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteDeviceIdentityReq clone() => DeleteDeviceIdentityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteDeviceIdentityReq copyWith(void Function(DeleteDeviceIdentityReq) updates) => super.copyWith((message) => updates(message as DeleteDeviceIdentityReq)) as DeleteDeviceIdentityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteDeviceIdentityReq create() => DeleteDeviceIdentityReq._();
  DeleteDeviceIdentityReq createEmptyInstance() => create();
  static $pb.PbList<DeleteDeviceIdentityReq> createRepeated() => $pb.PbList<DeleteDeviceIdentityReq>();
  @$core.pragma('dart2js:noInline')
  static DeleteDeviceIdentityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteDeviceIdentityReq>(create);
  static DeleteDeviceIdentityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);
}

class DeleteDeviceIdentityRes extends $pb.GeneratedMessage {
  factory DeleteDeviceIdentityRes({
    $core.bool? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DeleteDeviceIdentityRes._() : super();
  factory DeleteDeviceIdentityRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteDeviceIdentityRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteDeviceIdentityRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteDeviceIdentityRes clone() => DeleteDeviceIdentityRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteDeviceIdentityRes copyWith(void Function(DeleteDeviceIdentityRes) updates) => super.copyWith((message) => updates(message as DeleteDeviceIdentityRes)) as DeleteDeviceIdentityRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteDeviceIdentityRes create() => DeleteDeviceIdentityRes._();
  DeleteDeviceIdentityRes createEmptyInstance() => create();
  static $pb.PbList<DeleteDeviceIdentityRes> createRepeated() => $pb.PbList<DeleteDeviceIdentityRes>();
  @$core.pragma('dart2js:noInline')
  static DeleteDeviceIdentityRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteDeviceIdentityRes>(create);
  static DeleteDeviceIdentityRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// DID to be checked if it exists
class GetDeviceIdentityReq extends $pb.GeneratedMessage {
  factory GetDeviceIdentityReq({
    $core.String? did,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  GetDeviceIdentityReq._() : super();
  factory GetDeviceIdentityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceIdentityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceIdentityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceIdentityReq clone() => GetDeviceIdentityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceIdentityReq copyWith(void Function(GetDeviceIdentityReq) updates) => super.copyWith((message) => updates(message as GetDeviceIdentityReq)) as GetDeviceIdentityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceIdentityReq create() => GetDeviceIdentityReq._();
  GetDeviceIdentityReq createEmptyInstance() => create();
  static $pb.PbList<GetDeviceIdentityReq> createRepeated() => $pb.PbList<GetDeviceIdentityReq>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceIdentityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceIdentityReq>(create);
  static GetDeviceIdentityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);
}

/// provides validation that device's DID is already generated
class GetDeviceIdentityRes extends $pb.GeneratedMessage {
  factory GetDeviceIdentityRes({
    $core.String? did,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    return $result;
  }
  GetDeviceIdentityRes._() : super();
  factory GetDeviceIdentityRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDeviceIdentityRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDeviceIdentityRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDeviceIdentityRes clone() => GetDeviceIdentityRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDeviceIdentityRes copyWith(void Function(GetDeviceIdentityRes) updates) => super.copyWith((message) => updates(message as GetDeviceIdentityRes)) as GetDeviceIdentityRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDeviceIdentityRes create() => GetDeviceIdentityRes._();
  GetDeviceIdentityRes createEmptyInstance() => create();
  static $pb.PbList<GetDeviceIdentityRes> createRepeated() => $pb.PbList<GetDeviceIdentityRes>();
  @$core.pragma('dart2js:noInline')
  static GetDeviceIdentityRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDeviceIdentityRes>(create);
  static GetDeviceIdentityRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);
}

/// provides what agent version is currently installed on the hardware
class GetScuridEdgeAgentVersionRes extends $pb.GeneratedMessage {
  factory GetScuridEdgeAgentVersionRes({
    $core.String? agentVersion,
  }) {
    final $result = create();
    if (agentVersion != null) {
      $result.agentVersion = agentVersion;
    }
    return $result;
  }
  GetScuridEdgeAgentVersionRes._() : super();
  factory GetScuridEdgeAgentVersionRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScuridEdgeAgentVersionRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetScuridEdgeAgentVersionRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'agentVersion', protoName: 'agentVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScuridEdgeAgentVersionRes clone() => GetScuridEdgeAgentVersionRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScuridEdgeAgentVersionRes copyWith(void Function(GetScuridEdgeAgentVersionRes) updates) => super.copyWith((message) => updates(message as GetScuridEdgeAgentVersionRes)) as GetScuridEdgeAgentVersionRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetScuridEdgeAgentVersionRes create() => GetScuridEdgeAgentVersionRes._();
  GetScuridEdgeAgentVersionRes createEmptyInstance() => create();
  static $pb.PbList<GetScuridEdgeAgentVersionRes> createRepeated() => $pb.PbList<GetScuridEdgeAgentVersionRes>();
  @$core.pragma('dart2js:noInline')
  static GetScuridEdgeAgentVersionRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScuridEdgeAgentVersionRes>(create);
  static GetScuridEdgeAgentVersionRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get agentVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set agentVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgentVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgentVersion() => clearField(1);
}

/// sent by any client using the edge agent for generating the identity
/// req expects fields of type GetDeviceIdentityReq and GetScuridEdgeAgentVersionRes
class RegisterDeviceIdentityReq extends $pb.GeneratedMessage {
  factory RegisterDeviceIdentityReq({
    $core.String? did,
    $fixnum.Int64? unixTime,
    $core.String? deviceName,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    if (unixTime != null) {
      $result.unixTime = unixTime;
    }
    if (deviceName != null) {
      $result.deviceName = deviceName;
    }
    return $result;
  }
  RegisterDeviceIdentityReq._() : super();
  factory RegisterDeviceIdentityReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterDeviceIdentityReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterDeviceIdentityReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..aInt64(2, _omitFieldNames ? '' : 'unixTime', protoName: 'unixTime')
    ..aOS(3, _omitFieldNames ? '' : 'deviceName', protoName: 'deviceName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterDeviceIdentityReq clone() => RegisterDeviceIdentityReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterDeviceIdentityReq copyWith(void Function(RegisterDeviceIdentityReq) updates) => super.copyWith((message) => updates(message as RegisterDeviceIdentityReq)) as RegisterDeviceIdentityReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterDeviceIdentityReq create() => RegisterDeviceIdentityReq._();
  RegisterDeviceIdentityReq createEmptyInstance() => create();
  static $pb.PbList<RegisterDeviceIdentityReq> createRepeated() => $pb.PbList<RegisterDeviceIdentityReq>();
  @$core.pragma('dart2js:noInline')
  static RegisterDeviceIdentityReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterDeviceIdentityReq>(create);
  static RegisterDeviceIdentityReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get unixTime => $_getI64(1);
  @$pb.TagNumber(2)
  set unixTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnixTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnixTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceName => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceName() => clearField(3);
}

/// Response for registration request from the caller
class RegisterDeviceIdentityRes extends $pb.GeneratedMessage {
  factory RegisterDeviceIdentityRes({
    $core.bool? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  RegisterDeviceIdentityRes._() : super();
  factory RegisterDeviceIdentityRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterDeviceIdentityRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterDeviceIdentityRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterDeviceIdentityRes clone() => RegisterDeviceIdentityRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterDeviceIdentityRes copyWith(void Function(RegisterDeviceIdentityRes) updates) => super.copyWith((message) => updates(message as RegisterDeviceIdentityRes)) as RegisterDeviceIdentityRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterDeviceIdentityRes create() => RegisterDeviceIdentityRes._();
  RegisterDeviceIdentityRes createEmptyInstance() => create();
  static $pb.PbList<RegisterDeviceIdentityRes> createRepeated() => $pb.PbList<RegisterDeviceIdentityRes>();
  @$core.pragma('dart2js:noInline')
  static RegisterDeviceIdentityRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterDeviceIdentityRes>(create);
  static RegisterDeviceIdentityRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class ArtifactHash extends $pb.GeneratedMessage {
  factory ArtifactHash({
    $core.String? fileName,
    $core.String? fileHash,
  }) {
    final $result = create();
    if (fileName != null) {
      $result.fileName = fileName;
    }
    if (fileHash != null) {
      $result.fileHash = fileHash;
    }
    return $result;
  }
  ArtifactHash._() : super();
  factory ArtifactHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ArtifactHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ArtifactHash', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fileName', protoName: 'fileName')
    ..aOS(2, _omitFieldNames ? '' : 'fileHash', protoName: 'fileHash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ArtifactHash clone() => ArtifactHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ArtifactHash copyWith(void Function(ArtifactHash) updates) => super.copyWith((message) => updates(message as ArtifactHash)) as ArtifactHash;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArtifactHash create() => ArtifactHash._();
  ArtifactHash createEmptyInstance() => create();
  static $pb.PbList<ArtifactHash> createRepeated() => $pb.PbList<ArtifactHash>();
  @$core.pragma('dart2js:noInline')
  static ArtifactHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArtifactHash>(create);
  static ArtifactHash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileHash() => clearField(2);
}

/// request structure to be sent
class DownloadFilesReq extends $pb.GeneratedMessage {
  factory DownloadFilesReq({
    $core.String? identity,
    $core.String? path,
    $core.bool? autoCreateDir,
    $core.bool? enableStaging,
    $core.Iterable<ArtifactHash>? artifactHashOnAgent,
    $core.Iterable<ArtifactHash>? artifactHashOnServer,
    $core.Map<$core.String, $fixnum.Int64>? offset,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    if (path != null) {
      $result.path = path;
    }
    if (autoCreateDir != null) {
      $result.autoCreateDir = autoCreateDir;
    }
    if (enableStaging != null) {
      $result.enableStaging = enableStaging;
    }
    if (artifactHashOnAgent != null) {
      $result.artifactHashOnAgent.addAll(artifactHashOnAgent);
    }
    if (artifactHashOnServer != null) {
      $result.artifactHashOnServer.addAll(artifactHashOnServer);
    }
    if (offset != null) {
      $result.offset.addAll(offset);
    }
    return $result;
  }
  DownloadFilesReq._() : super();
  factory DownloadFilesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFilesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFilesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOB(3, _omitFieldNames ? '' : 'autoCreateDir', protoName: 'autoCreateDir')
    ..aOB(4, _omitFieldNames ? '' : 'enableStaging', protoName: 'enableStaging')
    ..pc<ArtifactHash>(5, _omitFieldNames ? '' : 'artifactHashOnAgent', $pb.PbFieldType.PM, protoName: 'artifactHashOnAgent', subBuilder: ArtifactHash.create)
    ..pc<ArtifactHash>(6, _omitFieldNames ? '' : 'artifactHashOnServer', $pb.PbFieldType.PM, protoName: 'artifactHashOnServer', subBuilder: ArtifactHash.create)
    ..m<$core.String, $fixnum.Int64>(7, _omitFieldNames ? '' : 'offset', entryClassName: 'DownloadFilesReq.OffsetEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('edgeagentapis.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DownloadFilesReq clone() => DownloadFilesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFilesReq copyWith(void Function(DownloadFilesReq) updates) => super.copyWith((message) => updates(message as DownloadFilesReq)) as DownloadFilesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownloadFilesReq create() => DownloadFilesReq._();
  DownloadFilesReq createEmptyInstance() => create();
  static $pb.PbList<DownloadFilesReq> createRepeated() => $pb.PbList<DownloadFilesReq>();
  @$core.pragma('dart2js:noInline')
  static DownloadFilesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadFilesReq>(create);
  static DownloadFilesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get autoCreateDir => $_getBF(2);
  @$pb.TagNumber(3)
  set autoCreateDir($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAutoCreateDir() => $_has(2);
  @$pb.TagNumber(3)
  void clearAutoCreateDir() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enableStaging => $_getBF(3);
  @$pb.TagNumber(4)
  set enableStaging($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnableStaging() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnableStaging() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<ArtifactHash> get artifactHashOnAgent => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<ArtifactHash> get artifactHashOnServer => $_getList(5);

  @$pb.TagNumber(7)
  $core.Map<$core.String, $fixnum.Int64> get offset => $_getMap(6);
}

/// true if all files are downloaded, else false - check error for details
class DownloadFilesRes extends $pb.GeneratedMessage {
  factory DownloadFilesRes({
    $core.bool? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DownloadFilesRes._() : super();
  factory DownloadFilesRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFilesRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFilesRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DownloadFilesRes clone() => DownloadFilesRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DownloadFilesRes copyWith(void Function(DownloadFilesRes) updates) => super.copyWith((message) => updates(message as DownloadFilesRes)) as DownloadFilesRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownloadFilesRes create() => DownloadFilesRes._();
  DownloadFilesRes createEmptyInstance() => create();
  static $pb.PbList<DownloadFilesRes> createRepeated() => $pb.PbList<DownloadFilesRes>();
  @$core.pragma('dart2js:noInline')
  static DownloadFilesRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadFilesRes>(create);
  static DownloadFilesRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

/// Note: ensure to acquire login token for the agent which is trying to send this data
class SendDeviceDataReq extends $pb.GeneratedMessage {
  factory SendDeviceDataReq({
    $core.String? identity,
    $core.String? deviceData,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    if (deviceData != null) {
      $result.deviceData = deviceData;
    }
    return $result;
  }
  SendDeviceDataReq._() : super();
  factory SendDeviceDataReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDeviceDataReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendDeviceDataReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..aOS(2, _omitFieldNames ? '' : 'deviceData', protoName: 'deviceData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendDeviceDataReq clone() => SendDeviceDataReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendDeviceDataReq copyWith(void Function(SendDeviceDataReq) updates) => super.copyWith((message) => updates(message as SendDeviceDataReq)) as SendDeviceDataReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDeviceDataReq create() => SendDeviceDataReq._();
  SendDeviceDataReq createEmptyInstance() => create();
  static $pb.PbList<SendDeviceDataReq> createRepeated() => $pb.PbList<SendDeviceDataReq>();
  @$core.pragma('dart2js:noInline')
  static SendDeviceDataReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendDeviceDataReq>(create);
  static SendDeviceDataReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identity => $_getSZ(0);
  @$pb.TagNumber(1)
  set identity($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentity() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceData => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceData($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceData() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceData() => clearField(2);
}

class SendDeviceDataRes extends $pb.GeneratedMessage {
  factory SendDeviceDataRes({
    $core.bool? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  SendDeviceDataRes._() : super();
  factory SendDeviceDataRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDeviceDataRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendDeviceDataRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendDeviceDataRes clone() => SendDeviceDataRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendDeviceDataRes copyWith(void Function(SendDeviceDataRes) updates) => super.copyWith((message) => updates(message as SendDeviceDataRes)) as SendDeviceDataRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendDeviceDataRes create() => SendDeviceDataRes._();
  SendDeviceDataRes createEmptyInstance() => create();
  static $pb.PbList<SendDeviceDataRes> createRepeated() => $pb.PbList<SendDeviceDataRes>();
  @$core.pragma('dart2js:noInline')
  static SendDeviceDataRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendDeviceDataRes>(create);
  static SendDeviceDataRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

enum UploadFilesReq_Data {
  info, 
  chunkData, 
  notSet
}

class UploadFilesReq extends $pb.GeneratedMessage {
  factory UploadFilesReq({
    FileInfo? info,
    $core.List<$core.int>? chunkData,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    if (chunkData != null) {
      $result.chunkData = chunkData;
    }
    return $result;
  }
  UploadFilesReq._() : super();
  factory UploadFilesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFilesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UploadFilesReq_Data> _UploadFilesReq_DataByTag = {
    1 : UploadFilesReq_Data.info,
    2 : UploadFilesReq_Data.chunkData,
    0 : UploadFilesReq_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadFilesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<FileInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: FileInfo.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'chunkData', $pb.PbFieldType.OY, protoName: 'chunkData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFilesReq clone() => UploadFilesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFilesReq copyWith(void Function(UploadFilesReq) updates) => super.copyWith((message) => updates(message as UploadFilesReq)) as UploadFilesReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadFilesReq create() => UploadFilesReq._();
  UploadFilesReq createEmptyInstance() => create();
  static $pb.PbList<UploadFilesReq> createRepeated() => $pb.PbList<UploadFilesReq>();
  @$core.pragma('dart2js:noInline')
  static UploadFilesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFilesReq>(create);
  static UploadFilesReq? _defaultInstance;

  UploadFilesReq_Data whichData() => _UploadFilesReq_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FileInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(FileInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  FileInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chunkData => $_getN(1);
  @$pb.TagNumber(2)
  set chunkData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChunkData() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunkData() => clearField(2);
}

class FileInfo extends $pb.GeneratedMessage {
  factory FileInfo({
    $core.String? deviceIdentity,
    $core.String? fileId,
    $core.String? fileType,
  }) {
    final $result = create();
    if (deviceIdentity != null) {
      $result.deviceIdentity = deviceIdentity;
    }
    if (fileId != null) {
      $result.fileId = fileId;
    }
    if (fileType != null) {
      $result.fileType = fileType;
    }
    return $result;
  }
  FileInfo._() : super();
  factory FileInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FileInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceIdentity', protoName: 'deviceIdentity')
    ..aOS(2, _omitFieldNames ? '' : 'fileId', protoName: 'fileId')
    ..aOS(3, _omitFieldNames ? '' : 'fileType', protoName: 'fileType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileInfo clone() => FileInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileInfo copyWith(void Function(FileInfo) updates) => super.copyWith((message) => updates(message as FileInfo)) as FileInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileInfo create() => FileInfo._();
  FileInfo createEmptyInstance() => create();
  static $pb.PbList<FileInfo> createRepeated() => $pb.PbList<FileInfo>();
  @$core.pragma('dart2js:noInline')
  static FileInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileInfo>(create);
  static FileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceIdentity => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceIdentity($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceIdentity() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileId => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileType => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileType() => clearField(3);
}

class UploadFilesRes extends $pb.GeneratedMessage {
  factory UploadFilesRes({
    $core.bool? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  UploadFilesRes._() : super();
  factory UploadFilesRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadFilesRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadFilesRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadFilesRes clone() => UploadFilesRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadFilesRes copyWith(void Function(UploadFilesRes) updates) => super.copyWith((message) => updates(message as UploadFilesRes)) as UploadFilesRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadFilesRes create() => UploadFilesRes._();
  UploadFilesRes createEmptyInstance() => create();
  static $pb.PbList<UploadFilesRes> createRepeated() => $pb.PbList<UploadFilesRes>();
  @$core.pragma('dart2js:noInline')
  static UploadFilesRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadFilesRes>(create);
  static UploadFilesRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class InfluxData extends $pb.GeneratedMessage {
  factory InfluxData({
    $core.Map<$core.String, $core.String>? tags,
    $core.Map<$core.String, Value>? fields,
  }) {
    final $result = create();
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  InfluxData._() : super();
  factory InfluxData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfluxData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfluxData', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'tags', entryClassName: 'InfluxData.TagsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('edgeagentapis.v1'))
    ..m<$core.String, Value>(2, _omitFieldNames ? '' : 'fields', entryClassName: 'InfluxData.FieldsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Value.create, valueDefaultOrMaker: Value.getDefault, packageName: const $pb.PackageName('edgeagentapis.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfluxData clone() => InfluxData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfluxData copyWith(void Function(InfluxData) updates) => super.copyWith((message) => updates(message as InfluxData)) as InfluxData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfluxData create() => InfluxData._();
  InfluxData createEmptyInstance() => create();
  static $pb.PbList<InfluxData> createRepeated() => $pb.PbList<InfluxData>();
  @$core.pragma('dart2js:noInline')
  static InfluxData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfluxData>(create);
  static InfluxData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get tags => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, Value> get fields => $_getMap(1);
}

enum Value_Value {
  intValue, 
  doubleValue, 
  stringValue, 
  boolValue, 
  notSet
}

class Value extends $pb.GeneratedMessage {
  factory Value({
    $fixnum.Int64? intValue,
    $core.double? doubleValue,
    $core.String? stringValue,
    $core.bool? boolValue,
  }) {
    final $result = create();
    if (intValue != null) {
      $result.intValue = intValue;
    }
    if (doubleValue != null) {
      $result.doubleValue = doubleValue;
    }
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    return $result;
  }
  Value._() : super();
  factory Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Value_Value> _Value_ValueByTag = {
    1 : Value_Value.intValue,
    2 : Value_Value.doubleValue,
    3 : Value_Value.stringValue,
    4 : Value_Value.boolValue,
    0 : Value_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Value', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'intValue')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'stringValue')
    ..aOB(4, _omitFieldNames ? '' : 'boolValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Value clone() => Value()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Value copyWith(void Function(Value) updates) => super.copyWith((message) => updates(message as Value)) as Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  Value_Value whichValue() => _Value_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get intValue => $_getI64(0);
  @$pb.TagNumber(1)
  set intValue($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIntValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get doubleValue => $_getN(1);
  @$pb.TagNumber(2)
  set doubleValue($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoubleValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoubleValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get stringValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set stringValue($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStringValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearStringValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get boolValue => $_getBF(3);
  @$pb.TagNumber(4)
  set boolValue($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBoolValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolValue() => clearField(4);
}

class CreateDeviceIdentityWithAdditionalCryptoReq extends $pb.GeneratedMessage {
  factory CreateDeviceIdentityWithAdditionalCryptoReq() => create();
  CreateDeviceIdentityWithAdditionalCryptoReq._() : super();
  factory CreateDeviceIdentityWithAdditionalCryptoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDeviceIdentityWithAdditionalCryptoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDeviceIdentityWithAdditionalCryptoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityWithAdditionalCryptoReq clone() => CreateDeviceIdentityWithAdditionalCryptoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityWithAdditionalCryptoReq copyWith(void Function(CreateDeviceIdentityWithAdditionalCryptoReq) updates) => super.copyWith((message) => updates(message as CreateDeviceIdentityWithAdditionalCryptoReq)) as CreateDeviceIdentityWithAdditionalCryptoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityWithAdditionalCryptoReq create() => CreateDeviceIdentityWithAdditionalCryptoReq._();
  CreateDeviceIdentityWithAdditionalCryptoReq createEmptyInstance() => create();
  static $pb.PbList<CreateDeviceIdentityWithAdditionalCryptoReq> createRepeated() => $pb.PbList<CreateDeviceIdentityWithAdditionalCryptoReq>();
  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityWithAdditionalCryptoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDeviceIdentityWithAdditionalCryptoReq>(create);
  static CreateDeviceIdentityWithAdditionalCryptoReq? _defaultInstance;
}

class CreateDeviceIdentityWithAdditionalCryptoRes extends $pb.GeneratedMessage {
  factory CreateDeviceIdentityWithAdditionalCryptoRes({
    $core.String? did,
    ECDSAPubKey512? eCDSA512PubKey,
    AES128Key? aES128Key,
  }) {
    final $result = create();
    if (did != null) {
      $result.did = did;
    }
    if (eCDSA512PubKey != null) {
      $result.eCDSA512PubKey = eCDSA512PubKey;
    }
    if (aES128Key != null) {
      $result.aES128Key = aES128Key;
    }
    return $result;
  }
  CreateDeviceIdentityWithAdditionalCryptoRes._() : super();
  factory CreateDeviceIdentityWithAdditionalCryptoRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDeviceIdentityWithAdditionalCryptoRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDeviceIdentityWithAdditionalCryptoRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'did')
    ..aOM<ECDSAPubKey512>(2, _omitFieldNames ? '' : 'ECDSA512PubKey', protoName: 'ECDSA512_pub_key', subBuilder: ECDSAPubKey512.create)
    ..aOM<AES128Key>(3, _omitFieldNames ? '' : 'AES128Key', protoName: 'AES128_key', subBuilder: AES128Key.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityWithAdditionalCryptoRes clone() => CreateDeviceIdentityWithAdditionalCryptoRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDeviceIdentityWithAdditionalCryptoRes copyWith(void Function(CreateDeviceIdentityWithAdditionalCryptoRes) updates) => super.copyWith((message) => updates(message as CreateDeviceIdentityWithAdditionalCryptoRes)) as CreateDeviceIdentityWithAdditionalCryptoRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityWithAdditionalCryptoRes create() => CreateDeviceIdentityWithAdditionalCryptoRes._();
  CreateDeviceIdentityWithAdditionalCryptoRes createEmptyInstance() => create();
  static $pb.PbList<CreateDeviceIdentityWithAdditionalCryptoRes> createRepeated() => $pb.PbList<CreateDeviceIdentityWithAdditionalCryptoRes>();
  @$core.pragma('dart2js:noInline')
  static CreateDeviceIdentityWithAdditionalCryptoRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDeviceIdentityWithAdditionalCryptoRes>(create);
  static CreateDeviceIdentityWithAdditionalCryptoRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);

  @$pb.TagNumber(2)
  ECDSAPubKey512 get eCDSA512PubKey => $_getN(1);
  @$pb.TagNumber(2)
  set eCDSA512PubKey(ECDSAPubKey512 v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasECDSA512PubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearECDSA512PubKey() => clearField(2);
  @$pb.TagNumber(2)
  ECDSAPubKey512 ensureECDSA512PubKey() => $_ensure(1);

  @$pb.TagNumber(3)
  AES128Key get aES128Key => $_getN(2);
  @$pb.TagNumber(3)
  set aES128Key(AES128Key v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAES128Key() => $_has(2);
  @$pb.TagNumber(3)
  void clearAES128Key() => clearField(3);
  @$pb.TagNumber(3)
  AES128Key ensureAES128Key() => $_ensure(2);
}

/// ECDSAPubKey512 is used to store the 512 bit ECDSA public key
/// Generate ECDSA-256 (P-512) Key Pair
class ECDSAPubKey512 extends $pb.GeneratedMessage {
  factory ECDSAPubKey512({
    $core.List<$core.int>? pubX,
    $core.List<$core.int>? pubY,
  }) {
    final $result = create();
    if (pubX != null) {
      $result.pubX = pubX;
    }
    if (pubY != null) {
      $result.pubY = pubY;
    }
    return $result;
  }
  ECDSAPubKey512._() : super();
  factory ECDSAPubKey512.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ECDSAPubKey512.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ECDSAPubKey512', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'pubX', $pb.PbFieldType.OY, protoName: 'pubX')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'pubY', $pb.PbFieldType.OY, protoName: 'pubY')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ECDSAPubKey512 clone() => ECDSAPubKey512()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ECDSAPubKey512 copyWith(void Function(ECDSAPubKey512) updates) => super.copyWith((message) => updates(message as ECDSAPubKey512)) as ECDSAPubKey512;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ECDSAPubKey512 create() => ECDSAPubKey512._();
  ECDSAPubKey512 createEmptyInstance() => create();
  static $pb.PbList<ECDSAPubKey512> createRepeated() => $pb.PbList<ECDSAPubKey512>();
  @$core.pragma('dart2js:noInline')
  static ECDSAPubKey512 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ECDSAPubKey512>(create);
  static ECDSAPubKey512? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get pubX => $_getN(0);
  @$pb.TagNumber(2)
  set pubX($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubX() => $_has(0);
  @$pb.TagNumber(2)
  void clearPubX() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pubY => $_getN(1);
  @$pb.TagNumber(3)
  set pubY($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubY() => $_has(1);
  @$pb.TagNumber(3)
  void clearPubY() => clearField(3);
}

/// AES128Key is used to store return the 128 bit AES key
/// returns both the key in bytes and string format
class AES128Key extends $pb.GeneratedMessage {
  factory AES128Key({
    $core.List<$core.int>? keyBits,
    $core.String? keyBitsString,
  }) {
    final $result = create();
    if (keyBits != null) {
      $result.keyBits = keyBits;
    }
    if (keyBitsString != null) {
      $result.keyBitsString = keyBitsString;
    }
    return $result;
  }
  AES128Key._() : super();
  factory AES128Key.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AES128Key.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AES128Key', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'keyBits', $pb.PbFieldType.OY, protoName: 'keyBits')
    ..aOS(2, _omitFieldNames ? '' : 'keyBitsString', protoName: 'keyBitsString')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AES128Key clone() => AES128Key()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AES128Key copyWith(void Function(AES128Key) updates) => super.copyWith((message) => updates(message as AES128Key)) as AES128Key;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AES128Key create() => AES128Key._();
  AES128Key createEmptyInstance() => create();
  static $pb.PbList<AES128Key> createRepeated() => $pb.PbList<AES128Key>();
  @$core.pragma('dart2js:noInline')
  static AES128Key getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AES128Key>(create);
  static AES128Key? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get keyBits => $_getN(0);
  @$pb.TagNumber(1)
  set keyBits($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyBits() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyBits() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get keyBitsString => $_getSZ(1);
  @$pb.TagNumber(2)
  set keyBitsString($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyBitsString() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyBitsString() => clearField(2);
}

/// IsAuthorisedReq is the req to check if user is authorised or not
class IsAuthorisedReq extends $pb.GeneratedMessage {
  factory IsAuthorisedReq({
    $core.String? sessionID,
  }) {
    final $result = create();
    if (sessionID != null) {
      $result.sessionID = sessionID;
    }
    return $result;
  }
  IsAuthorisedReq._() : super();
  factory IsAuthorisedReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAuthorisedReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsAuthorisedReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionID', protoName: 'sessionID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAuthorisedReq clone() => IsAuthorisedReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAuthorisedReq copyWith(void Function(IsAuthorisedReq) updates) => super.copyWith((message) => updates(message as IsAuthorisedReq)) as IsAuthorisedReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsAuthorisedReq create() => IsAuthorisedReq._();
  IsAuthorisedReq createEmptyInstance() => create();
  static $pb.PbList<IsAuthorisedReq> createRepeated() => $pb.PbList<IsAuthorisedReq>();
  @$core.pragma('dart2js:noInline')
  static IsAuthorisedReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAuthorisedReq>(create);
  static IsAuthorisedReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionID => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionID() => clearField(1);
}

/// IsAuthorisedRes is the response of the authorisation operation
class IsAuthorisedRes extends $pb.GeneratedMessage {
  factory IsAuthorisedRes({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  IsAuthorisedRes._() : super();
  factory IsAuthorisedRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAuthorisedRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IsAuthorisedRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAuthorisedRes clone() => IsAuthorisedRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAuthorisedRes copyWith(void Function(IsAuthorisedRes) updates) => super.copyWith((message) => updates(message as IsAuthorisedRes)) as IsAuthorisedRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IsAuthorisedRes create() => IsAuthorisedRes._();
  IsAuthorisedRes createEmptyInstance() => create();
  static $pb.PbList<IsAuthorisedRes> createRepeated() => $pb.PbList<IsAuthorisedRes>();
  @$core.pragma('dart2js:noInline')
  static IsAuthorisedRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAuthorisedRes>(create);
  static IsAuthorisedRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
