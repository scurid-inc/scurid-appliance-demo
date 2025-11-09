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
    $core.String? email,
    $core.String? agentDID,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (email != null) {
      $result.email = email;
    }
    if (agentDID != null) {
      $result.agentDID = agentDID;
    }
    return $result;
  }
  BiometricAuthReq._() : super();
  factory BiometricAuthReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BiometricAuthReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BiometricAuthReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'agentDID', protoName: 'agentDID')
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

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get agentDID => $_getSZ(2);
  @$pb.TagNumber(3)
  set agentDID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgentDID() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgentDID() => clearField(3);
}

class BiometricAuthRes extends $pb.GeneratedMessage {
  factory BiometricAuthRes({
    $core.bool? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  BiometricAuthRes._() : super();
  factory BiometricAuthRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BiometricAuthRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BiometricAuthRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'result')
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
  $core.bool get result => $_getBF(0);
  @$pb.TagNumber(1)
  set result($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class SendDeviceDataWithCustomFieldsReq extends $pb.GeneratedMessage {
  factory SendDeviceDataWithCustomFieldsReq({
    $core.String? agentDID,
    $core.Iterable<$core.String>? data,
  }) {
    final $result = create();
    if (agentDID != null) {
      $result.agentDID = agentDID;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  SendDeviceDataWithCustomFieldsReq._() : super();
  factory SendDeviceDataWithCustomFieldsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendDeviceDataWithCustomFieldsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendDeviceDataWithCustomFieldsReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'agentDID', protoName: 'agentDID')
    ..pPS(2, _omitFieldNames ? '' : 'data')
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

/// request structure to be sent
class DownloadFilesReq extends $pb.GeneratedMessage {
  factory DownloadFilesReq({
    $core.String? identity,
    $core.String? path,
  }) {
    final $result = create();
    if (identity != null) {
      $result.identity = identity;
    }
    if (path != null) {
      $result.path = path;
    }
    return $result;
  }
  DownloadFilesReq._() : super();
  factory DownloadFilesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DownloadFilesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFilesReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'edgeagentapis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'identity')
    ..aOS(2, _omitFieldNames ? '' : 'path')
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
