//
//  Generated code. Do not modify.
//  source: edgeagent.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getDeviceUsersReqDescriptor instead')
const GetDeviceUsersReq$json = {
  '1': 'GetDeviceUsersReq',
};

/// Descriptor for `GetDeviceUsersReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceUsersReqDescriptor = $convert.base64Decode(
    'ChFHZXREZXZpY2VVc2Vyc1JlcQ==');

@$core.Deprecated('Use getDeviceUsersResDescriptor instead')
const GetDeviceUsersRes$json = {
  '1': 'GetDeviceUsersRes',
  '2': [
    {'1': 'deviceUsers', '3': 1, '4': 3, '5': 11, '6': '.edgeagentapis.v1.DeviceUsers', '10': 'deviceUsers'},
  ],
};

/// Descriptor for `GetDeviceUsersRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceUsersResDescriptor = $convert.base64Decode(
    'ChFHZXREZXZpY2VVc2Vyc1JlcxI/CgtkZXZpY2VVc2VycxgBIAMoCzIdLmVkZ2VhZ2VudGFwaX'
    'MudjEuRGV2aWNlVXNlcnNSC2RldmljZVVzZXJz');

@$core.Deprecated('Use deviceUsersDescriptor instead')
const DeviceUsers$json = {
  '1': 'DeviceUsers',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'sessionID', '3': 2, '4': 1, '5': 9, '10': 'sessionID'},
  ],
};

/// Descriptor for `DeviceUsers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceUsersDescriptor = $convert.base64Decode(
    'CgtEZXZpY2VVc2VycxIUCgVlbWFpbBgBIAEoCVIFZW1haWwSHAoJc2Vzc2lvbklEGAIgASgJUg'
    'lzZXNzaW9uSUQ=');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use biometricAuthReqDescriptor instead')
const BiometricAuthReq$json = {
  '1': 'BiometricAuthReq',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `BiometricAuthReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List biometricAuthReqDescriptor = $convert.base64Decode(
    'ChBCaW9tZXRyaWNBdXRoUmVxEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use biometricAuthResDescriptor instead')
const BiometricAuthRes$json = {
  '1': 'BiometricAuthRes',
  '2': [
    {'1': 'verificationURL', '3': 1, '4': 1, '5': 9, '10': 'verificationURL'},
  ],
};

/// Descriptor for `BiometricAuthRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List biometricAuthResDescriptor = $convert.base64Decode(
    'ChBCaW9tZXRyaWNBdXRoUmVzEigKD3ZlcmlmaWNhdGlvblVSTBgBIAEoCVIPdmVyaWZpY2F0aW'
    '9uVVJM');

@$core.Deprecated('Use sendDeviceDataWithCustomFieldsReqDescriptor instead')
const SendDeviceDataWithCustomFieldsReq$json = {
  '1': 'SendDeviceDataWithCustomFieldsReq',
  '2': [
    {'1': 'agentDID', '3': 1, '4': 1, '5': 9, '10': 'agentDID'},
    {'1': 'data', '3': 2, '4': 3, '5': 9, '10': 'data'},
    {'1': 'influxData', '3': 3, '4': 1, '5': 11, '6': '.edgeagentapis.v1.InfluxData', '9': 0, '10': 'influxData', '17': true},
  ],
  '8': [
    {'1': '_influxData'},
  ],
};

/// Descriptor for `SendDeviceDataWithCustomFieldsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDeviceDataWithCustomFieldsReqDescriptor = $convert.base64Decode(
    'CiFTZW5kRGV2aWNlRGF0YVdpdGhDdXN0b21GaWVsZHNSZXESGgoIYWdlbnRESUQYASABKAlSCG'
    'FnZW50RElEEhIKBGRhdGEYAiADKAlSBGRhdGESQQoKaW5mbHV4RGF0YRgDIAEoCzIcLmVkZ2Vh'
    'Z2VudGFwaXMudjEuSW5mbHV4RGF0YUgAUgppbmZsdXhEYXRhiAEBQg0KC19pbmZsdXhEYXRh');

@$core.Deprecated('Use sendDeviceDataWithCustomFieldsResDescriptor instead')
const SendDeviceDataWithCustomFieldsRes$json = {
  '1': 'SendDeviceDataWithCustomFieldsRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `SendDeviceDataWithCustomFieldsRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDeviceDataWithCustomFieldsResDescriptor = $convert.base64Decode(
    'CiFTZW5kRGV2aWNlRGF0YVdpdGhDdXN0b21GaWVsZHNSZXMSFgoGcmVzdWx0GAEgASgIUgZyZX'
    'N1bHQ=');

@$core.Deprecated('Use getOnboardingPackageReqDescriptor instead')
const GetOnboardingPackageReq$json = {
  '1': 'GetOnboardingPackageReq',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `GetOnboardingPackageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOnboardingPackageReqDescriptor = $convert.base64Decode(
    'ChdHZXRPbmJvYXJkaW5nUGFja2FnZVJlcRIQCgNkaWQYASABKAlSA2RpZA==');

@$core.Deprecated('Use getOnboardingPackageResDescriptor instead')
const GetOnboardingPackageRes$json = {
  '1': 'GetOnboardingPackageRes',
  '2': [
    {'1': 'onboardingPkg', '3': 1, '4': 1, '5': 9, '10': 'onboardingPkg'},
  ],
};

/// Descriptor for `GetOnboardingPackageRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOnboardingPackageResDescriptor = $convert.base64Decode(
    'ChdHZXRPbmJvYXJkaW5nUGFja2FnZVJlcxIkCg1vbmJvYXJkaW5nUGtnGAEgASgJUg1vbmJvYX'
    'JkaW5nUGtn');

@$core.Deprecated('Use getTokenReqDescriptor instead')
const GetTokenReq$json = {
  '1': 'GetTokenReq',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

/// Descriptor for `GetTokenReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTokenReqDescriptor = $convert.base64Decode(
    'CgtHZXRUb2tlblJlcRIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWU=');

@$core.Deprecated('Use getTokenResDescriptor instead')
const GetTokenRes$json = {
  '1': 'GetTokenRes',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `GetTokenRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTokenResDescriptor = $convert.base64Decode(
    'CgtHZXRUb2tlblJlcxIUCgV0b2tlbhgBIAEoCVIFdG9rZW4=');

@$core.Deprecated('Use verifySignatureReqDescriptor instead')
const VerifySignatureReq$json = {
  '1': 'VerifySignatureReq',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
    {'1': 'payload', '3': 2, '4': 1, '5': 9, '10': 'payload'},
    {'1': 'did', '3': 3, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `VerifySignatureReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifySignatureReqDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlTaWduYXR1cmVSZXESHAoJc2lnbmF0dXJlGAEgASgJUglzaWduYXR1cmUSGAoHcG'
    'F5bG9hZBgCIAEoCVIHcGF5bG9hZBIQCgNkaWQYAyABKAlSA2RpZA==');

@$core.Deprecated('Use verifySignatureResDescriptor instead')
const VerifySignatureRes$json = {
  '1': 'VerifySignatureRes',
  '2': [
    {'1': 'isValid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
  ],
};

/// Descriptor for `VerifySignatureRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifySignatureResDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlTaWduYXR1cmVSZXMSGAoHaXNWYWxpZBgBIAEoCFIHaXNWYWxpZA==');

@$core.Deprecated('Use signWithIdentityReqDescriptor instead')
const SignWithIdentityReq$json = {
  '1': 'SignWithIdentityReq',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 9, '10': 'payload'},
    {'1': 'did', '3': 2, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `SignWithIdentityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signWithIdentityReqDescriptor = $convert.base64Decode(
    'ChNTaWduV2l0aElkZW50aXR5UmVxEhgKB3BheWxvYWQYASABKAlSB3BheWxvYWQSEAoDZGlkGA'
    'IgASgJUgNkaWQ=');

@$core.Deprecated('Use signWithIdentityResDescriptor instead')
const SignWithIdentityRes$json = {
  '1': 'SignWithIdentityRes',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `SignWithIdentityRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signWithIdentityResDescriptor = $convert.base64Decode(
    'ChNTaWduV2l0aElkZW50aXR5UmVzEhwKCXNpZ25hdHVyZRgBIAEoCVIJc2lnbmF0dXJl');

@$core.Deprecated('Use signBytePayloadWithIdentityReqDescriptor instead')
const SignBytePayloadWithIdentityReq$json = {
  '1': 'SignBytePayloadWithIdentityReq',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 12, '10': 'payload'},
    {'1': 'did', '3': 2, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `SignBytePayloadWithIdentityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signBytePayloadWithIdentityReqDescriptor = $convert.base64Decode(
    'Ch5TaWduQnl0ZVBheWxvYWRXaXRoSWRlbnRpdHlSZXESGAoHcGF5bG9hZBgBIAEoDFIHcGF5bG'
    '9hZBIQCgNkaWQYAiABKAlSA2RpZA==');

@$core.Deprecated('Use signBytePayloadWithIdentityResDescriptor instead')
const SignBytePayloadWithIdentityRes$json = {
  '1': 'SignBytePayloadWithIdentityRes',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `SignBytePayloadWithIdentityRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signBytePayloadWithIdentityResDescriptor = $convert.base64Decode(
    'Ch5TaWduQnl0ZVBheWxvYWRXaXRoSWRlbnRpdHlSZXMSHAoJc2lnbmF0dXJlGAEgASgJUglzaW'
    'duYXR1cmU=');

@$core.Deprecated('Use verifyBytePayloadWithIdentityReqDescriptor instead')
const VerifyBytePayloadWithIdentityReq$json = {
  '1': 'VerifyBytePayloadWithIdentityReq',
  '2': [
    {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
    {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
    {'1': 'did', '3': 3, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `VerifyBytePayloadWithIdentityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyBytePayloadWithIdentityReqDescriptor = $convert.base64Decode(
    'CiBWZXJpZnlCeXRlUGF5bG9hZFdpdGhJZGVudGl0eVJlcRIcCglzaWduYXR1cmUYASABKAlSCX'
    'NpZ25hdHVyZRIYCgdwYXlsb2FkGAIgASgMUgdwYXlsb2FkEhAKA2RpZBgDIAEoCVIDZGlk');

@$core.Deprecated('Use verifyBytePayloadWithIdentityResDescriptor instead')
const VerifyBytePayloadWithIdentityRes$json = {
  '1': 'VerifyBytePayloadWithIdentityRes',
  '2': [
    {'1': 'isValid', '3': 1, '4': 1, '5': 8, '10': 'isValid'},
  ],
};

/// Descriptor for `VerifyBytePayloadWithIdentityRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyBytePayloadWithIdentityResDescriptor = $convert.base64Decode(
    'CiBWZXJpZnlCeXRlUGF5bG9hZFdpdGhJZGVudGl0eVJlcxIYCgdpc1ZhbGlkGAEgASgIUgdpc1'
    'ZhbGlk');

@$core.Deprecated('Use createDeviceIdentityReqDescriptor instead')
const CreateDeviceIdentityReq$json = {
  '1': 'CreateDeviceIdentityReq',
};

/// Descriptor for `CreateDeviceIdentityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceIdentityReqDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVEZXZpY2VJZGVudGl0eVJlcQ==');

@$core.Deprecated('Use createDeviceIdentityResDescriptor instead')
const CreateDeviceIdentityRes$json = {
  '1': 'CreateDeviceIdentityRes',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `CreateDeviceIdentityRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceIdentityResDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVEZXZpY2VJZGVudGl0eVJlcxIQCgNkaWQYASABKAlSA2RpZA==');

@$core.Deprecated('Use deleteDeviceIdentityReqDescriptor instead')
const DeleteDeviceIdentityReq$json = {
  '1': 'DeleteDeviceIdentityReq',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `DeleteDeviceIdentityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDeviceIdentityReqDescriptor = $convert.base64Decode(
    'ChdEZWxldGVEZXZpY2VJZGVudGl0eVJlcRIQCgNkaWQYASABKAlSA2RpZA==');

@$core.Deprecated('Use deleteDeviceIdentityResDescriptor instead')
const DeleteDeviceIdentityRes$json = {
  '1': 'DeleteDeviceIdentityRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DeleteDeviceIdentityRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDeviceIdentityResDescriptor = $convert.base64Decode(
    'ChdEZWxldGVEZXZpY2VJZGVudGl0eVJlcxIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');

@$core.Deprecated('Use getDeviceIdentityReqDescriptor instead')
const GetDeviceIdentityReq$json = {
  '1': 'GetDeviceIdentityReq',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `GetDeviceIdentityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceIdentityReqDescriptor = $convert.base64Decode(
    'ChRHZXREZXZpY2VJZGVudGl0eVJlcRIQCgNkaWQYASABKAlSA2RpZA==');

@$core.Deprecated('Use getDeviceIdentityResDescriptor instead')
const GetDeviceIdentityRes$json = {
  '1': 'GetDeviceIdentityRes',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `GetDeviceIdentityRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDeviceIdentityResDescriptor = $convert.base64Decode(
    'ChRHZXREZXZpY2VJZGVudGl0eVJlcxIQCgNkaWQYASABKAlSA2RpZA==');

@$core.Deprecated('Use getScuridEdgeAgentVersionResDescriptor instead')
const GetScuridEdgeAgentVersionRes$json = {
  '1': 'GetScuridEdgeAgentVersionRes',
  '2': [
    {'1': 'agentVersion', '3': 1, '4': 1, '5': 9, '10': 'agentVersion'},
  ],
};

/// Descriptor for `GetScuridEdgeAgentVersionRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScuridEdgeAgentVersionResDescriptor = $convert.base64Decode(
    'ChxHZXRTY3VyaWRFZGdlQWdlbnRWZXJzaW9uUmVzEiIKDGFnZW50VmVyc2lvbhgBIAEoCVIMYW'
    'dlbnRWZXJzaW9u');

@$core.Deprecated('Use registerDeviceIdentityReqDescriptor instead')
const RegisterDeviceIdentityReq$json = {
  '1': 'RegisterDeviceIdentityReq',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
    {'1': 'unixTime', '3': 2, '4': 1, '5': 3, '10': 'unixTime'},
    {'1': 'deviceName', '3': 3, '4': 1, '5': 9, '10': 'deviceName'},
  ],
};

/// Descriptor for `RegisterDeviceIdentityReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDeviceIdentityReqDescriptor = $convert.base64Decode(
    'ChlSZWdpc3RlckRldmljZUlkZW50aXR5UmVxEhAKA2RpZBgBIAEoCVIDZGlkEhoKCHVuaXhUaW'
    '1lGAIgASgDUgh1bml4VGltZRIeCgpkZXZpY2VOYW1lGAMgASgJUgpkZXZpY2VOYW1l');

@$core.Deprecated('Use registerDeviceIdentityResDescriptor instead')
const RegisterDeviceIdentityRes$json = {
  '1': 'RegisterDeviceIdentityRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `RegisterDeviceIdentityRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDeviceIdentityResDescriptor = $convert.base64Decode(
    'ChlSZWdpc3RlckRldmljZUlkZW50aXR5UmVzEhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');

@$core.Deprecated('Use artifactHashDescriptor instead')
const ArtifactHash$json = {
  '1': 'ArtifactHash',
  '2': [
    {'1': 'fileName', '3': 1, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'fileHash', '3': 2, '4': 1, '5': 9, '10': 'fileHash'},
  ],
};

/// Descriptor for `ArtifactHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artifactHashDescriptor = $convert.base64Decode(
    'CgxBcnRpZmFjdEhhc2gSGgoIZmlsZU5hbWUYASABKAlSCGZpbGVOYW1lEhoKCGZpbGVIYXNoGA'
    'IgASgJUghmaWxlSGFzaA==');

@$core.Deprecated('Use downloadFilesReqDescriptor instead')
const DownloadFilesReq$json = {
  '1': 'DownloadFilesReq',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'autoCreateDir', '3': 3, '4': 1, '5': 8, '10': 'autoCreateDir'},
    {'1': 'enableStaging', '3': 4, '4': 1, '5': 8, '10': 'enableStaging'},
    {'1': 'artifactHashOnAgent', '3': 5, '4': 3, '5': 11, '6': '.edgeagentapis.v1.ArtifactHash', '10': 'artifactHashOnAgent'},
    {'1': 'artifactHashOnServer', '3': 6, '4': 3, '5': 11, '6': '.edgeagentapis.v1.ArtifactHash', '10': 'artifactHashOnServer'},
    {'1': 'offset', '3': 7, '4': 3, '5': 11, '6': '.edgeagentapis.v1.DownloadFilesReq.OffsetEntry', '10': 'offset'},
  ],
  '3': [DownloadFilesReq_OffsetEntry$json],
};

@$core.Deprecated('Use downloadFilesReqDescriptor instead')
const DownloadFilesReq_OffsetEntry$json = {
  '1': 'OffsetEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DownloadFilesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFilesReqDescriptor = $convert.base64Decode(
    'ChBEb3dubG9hZEZpbGVzUmVxEhoKCGlkZW50aXR5GAEgASgJUghpZGVudGl0eRISCgRwYXRoGA'
    'IgASgJUgRwYXRoEiQKDWF1dG9DcmVhdGVEaXIYAyABKAhSDWF1dG9DcmVhdGVEaXISJAoNZW5h'
    'YmxlU3RhZ2luZxgEIAEoCFINZW5hYmxlU3RhZ2luZxJQChNhcnRpZmFjdEhhc2hPbkFnZW50GA'
    'UgAygLMh4uZWRnZWFnZW50YXBpcy52MS5BcnRpZmFjdEhhc2hSE2FydGlmYWN0SGFzaE9uQWdl'
    'bnQSUgoUYXJ0aWZhY3RIYXNoT25TZXJ2ZXIYBiADKAsyHi5lZGdlYWdlbnRhcGlzLnYxLkFydG'
    'lmYWN0SGFzaFIUYXJ0aWZhY3RIYXNoT25TZXJ2ZXISRgoGb2Zmc2V0GAcgAygLMi4uZWRnZWFn'
    'ZW50YXBpcy52MS5Eb3dubG9hZEZpbGVzUmVxLk9mZnNldEVudHJ5UgZvZmZzZXQaOQoLT2Zmc2'
    'V0RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use downloadFilesResDescriptor instead')
const DownloadFilesRes$json = {
  '1': 'DownloadFilesRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `DownloadFilesRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFilesResDescriptor = $convert.base64Decode(
    'ChBEb3dubG9hZEZpbGVzUmVzEhYKBnJlc3VsdBgBIAEoCFIGcmVzdWx0');

@$core.Deprecated('Use sendDeviceDataReqDescriptor instead')
const SendDeviceDataReq$json = {
  '1': 'SendDeviceDataReq',
  '2': [
    {'1': 'identity', '3': 1, '4': 1, '5': 9, '10': 'identity'},
    {'1': 'deviceData', '3': 2, '4': 1, '5': 9, '10': 'deviceData'},
  ],
};

/// Descriptor for `SendDeviceDataReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDeviceDataReqDescriptor = $convert.base64Decode(
    'ChFTZW5kRGV2aWNlRGF0YVJlcRIaCghpZGVudGl0eRgBIAEoCVIIaWRlbnRpdHkSHgoKZGV2aW'
    'NlRGF0YRgCIAEoCVIKZGV2aWNlRGF0YQ==');

@$core.Deprecated('Use sendDeviceDataResDescriptor instead')
const SendDeviceDataRes$json = {
  '1': 'SendDeviceDataRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `SendDeviceDataRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendDeviceDataResDescriptor = $convert.base64Decode(
    'ChFTZW5kRGV2aWNlRGF0YVJlcxIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');

@$core.Deprecated('Use uploadFilesReqDescriptor instead')
const UploadFilesReq$json = {
  '1': 'UploadFilesReq',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.edgeagentapis.v1.FileInfo', '9': 0, '10': 'info'},
    {'1': 'chunkData', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'chunkData'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `UploadFilesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFilesReqDescriptor = $convert.base64Decode(
    'Cg5VcGxvYWRGaWxlc1JlcRIwCgRpbmZvGAEgASgLMhouZWRnZWFnZW50YXBpcy52MS5GaWxlSW'
    '5mb0gAUgRpbmZvEh4KCWNodW5rRGF0YRgCIAEoDEgAUgljaHVua0RhdGFCBgoEZGF0YQ==');

@$core.Deprecated('Use fileInfoDescriptor instead')
const FileInfo$json = {
  '1': 'FileInfo',
  '2': [
    {'1': 'deviceIdentity', '3': 1, '4': 1, '5': 9, '10': 'deviceIdentity'},
    {'1': 'fileId', '3': 2, '4': 1, '5': 9, '10': 'fileId'},
    {'1': 'fileType', '3': 3, '4': 1, '5': 9, '10': 'fileType'},
  ],
};

/// Descriptor for `FileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileInfoDescriptor = $convert.base64Decode(
    'CghGaWxlSW5mbxImCg5kZXZpY2VJZGVudGl0eRgBIAEoCVIOZGV2aWNlSWRlbnRpdHkSFgoGZm'
    'lsZUlkGAIgASgJUgZmaWxlSWQSGgoIZmlsZVR5cGUYAyABKAlSCGZpbGVUeXBl');

@$core.Deprecated('Use uploadFilesResDescriptor instead')
const UploadFilesRes$json = {
  '1': 'UploadFilesRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `UploadFilesRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadFilesResDescriptor = $convert.base64Decode(
    'Cg5VcGxvYWRGaWxlc1JlcxIWCgZyZXN1bHQYASABKAhSBnJlc3VsdA==');

@$core.Deprecated('Use influxDataDescriptor instead')
const InfluxData$json = {
  '1': 'InfluxData',
  '2': [
    {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.edgeagentapis.v1.InfluxData.TagsEntry', '10': 'tags'},
    {'1': 'fields', '3': 2, '4': 3, '5': 11, '6': '.edgeagentapis.v1.InfluxData.FieldsEntry', '10': 'fields'},
  ],
  '3': [InfluxData_TagsEntry$json, InfluxData_FieldsEntry$json],
};

@$core.Deprecated('Use influxDataDescriptor instead')
const InfluxData_TagsEntry$json = {
  '1': 'TagsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use influxDataDescriptor instead')
const InfluxData_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.edgeagentapis.v1.Value', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `InfluxData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List influxDataDescriptor = $convert.base64Decode(
    'CgpJbmZsdXhEYXRhEjoKBHRhZ3MYASADKAsyJi5lZGdlYWdlbnRhcGlzLnYxLkluZmx1eERhdG'
    'EuVGFnc0VudHJ5UgR0YWdzEkAKBmZpZWxkcxgCIAMoCzIoLmVkZ2VhZ2VudGFwaXMudjEuSW5m'
    'bHV4RGF0YS5GaWVsZHNFbnRyeVIGZmllbGRzGjcKCVRhZ3NFbnRyeRIQCgNrZXkYASABKAlSA2'
    'tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGlIKC0ZpZWxkc0VudHJ5EhAKA2tleRgBIAEo'
    'CVIDa2V5Ei0KBXZhbHVlGAIgASgLMhcuZWRnZWFnZW50YXBpcy52MS5WYWx1ZVIFdmFsdWU6Aj'
    'gB');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'int_value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'intValue'},
    {'1': 'double_value', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'string_value', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'bool_value', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRIdCglpbnRfdmFsdWUYASABKANIAFIIaW50VmFsdWUSIwoMZG91YmxlX3ZhbHVlGA'
    'IgASgBSABSC2RvdWJsZVZhbHVlEiMKDHN0cmluZ192YWx1ZRgDIAEoCUgAUgtzdHJpbmdWYWx1'
    'ZRIfCgpib29sX3ZhbHVlGAQgASgISABSCWJvb2xWYWx1ZUIHCgV2YWx1ZQ==');

@$core.Deprecated('Use createDeviceIdentityWithAdditionalCryptoReqDescriptor instead')
const CreateDeviceIdentityWithAdditionalCryptoReq$json = {
  '1': 'CreateDeviceIdentityWithAdditionalCryptoReq',
};

/// Descriptor for `CreateDeviceIdentityWithAdditionalCryptoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceIdentityWithAdditionalCryptoReqDescriptor = $convert.base64Decode(
    'CitDcmVhdGVEZXZpY2VJZGVudGl0eVdpdGhBZGRpdGlvbmFsQ3J5cHRvUmVx');

@$core.Deprecated('Use createDeviceIdentityWithAdditionalCryptoResDescriptor instead')
const CreateDeviceIdentityWithAdditionalCryptoRes$json = {
  '1': 'CreateDeviceIdentityWithAdditionalCryptoRes',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
    {'1': 'ECDSA512_pub_key', '3': 2, '4': 1, '5': 11, '6': '.edgeagentapis.v1.ECDSAPubKey512', '10': 'ECDSA512PubKey'},
    {'1': 'AES128_key', '3': 3, '4': 1, '5': 11, '6': '.edgeagentapis.v1.AES128Key', '10': 'AES128Key'},
  ],
};

/// Descriptor for `CreateDeviceIdentityWithAdditionalCryptoRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceIdentityWithAdditionalCryptoResDescriptor = $convert.base64Decode(
    'CitDcmVhdGVEZXZpY2VJZGVudGl0eVdpdGhBZGRpdGlvbmFsQ3J5cHRvUmVzEhAKA2RpZBgBIA'
    'EoCVIDZGlkEkoKEEVDRFNBNTEyX3B1Yl9rZXkYAiABKAsyIC5lZGdlYWdlbnRhcGlzLnYxLkVD'
    'RFNBUHViS2V5NTEyUg5FQ0RTQTUxMlB1YktleRI6CgpBRVMxMjhfa2V5GAMgASgLMhsuZWRnZW'
    'FnZW50YXBpcy52MS5BRVMxMjhLZXlSCUFFUzEyOEtleQ==');

@$core.Deprecated('Use eCDSAPubKey512Descriptor instead')
const ECDSAPubKey512$json = {
  '1': 'ECDSAPubKey512',
  '2': [
    {'1': 'pubX', '3': 2, '4': 1, '5': 12, '10': 'pubX'},
    {'1': 'pubY', '3': 3, '4': 1, '5': 12, '10': 'pubY'},
  ],
};

/// Descriptor for `ECDSAPubKey512`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eCDSAPubKey512Descriptor = $convert.base64Decode(
    'Cg5FQ0RTQVB1YktleTUxMhISCgRwdWJYGAIgASgMUgRwdWJYEhIKBHB1YlkYAyABKAxSBHB1Yl'
    'k=');

@$core.Deprecated('Use aES128KeyDescriptor instead')
const AES128Key$json = {
  '1': 'AES128Key',
  '2': [
    {'1': 'keyBits', '3': 1, '4': 1, '5': 12, '10': 'keyBits'},
    {'1': 'keyBitsString', '3': 2, '4': 1, '5': 9, '10': 'keyBitsString'},
  ],
};

/// Descriptor for `AES128Key`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aES128KeyDescriptor = $convert.base64Decode(
    'CglBRVMxMjhLZXkSGAoHa2V5Qml0cxgBIAEoDFIHa2V5Qml0cxIkCg1rZXlCaXRzU3RyaW5nGA'
    'IgASgJUg1rZXlCaXRzU3RyaW5n');

@$core.Deprecated('Use isAuthorisedReqDescriptor instead')
const IsAuthorisedReq$json = {
  '1': 'IsAuthorisedReq',
  '2': [
    {'1': 'sessionID', '3': 1, '4': 1, '5': 9, '10': 'sessionID'},
  ],
};

/// Descriptor for `IsAuthorisedReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isAuthorisedReqDescriptor = $convert.base64Decode(
    'Cg9Jc0F1dGhvcmlzZWRSZXESHAoJc2Vzc2lvbklEGAEgASgJUglzZXNzaW9uSUQ=');

@$core.Deprecated('Use isAuthorisedResDescriptor instead')
const IsAuthorisedRes$json = {
  '1': 'IsAuthorisedRes',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `IsAuthorisedRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isAuthorisedResDescriptor = $convert.base64Decode(
    'Cg9Jc0F1dGhvcmlzZWRSZXMSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

