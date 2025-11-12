//
//  Generated code. Do not modify.
//  source: edgeagent.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'edgeagent.pb.dart' as $0;

export 'edgeagent.pb.dart';

@$pb.GrpcServiceName('edgeagentapis.v1.ScuridEdgeAgentAPI')
class ScuridEdgeAgentAPIClient extends $grpc.Client {
  static final _$createDeviceIdentity = $grpc.ClientMethod<$0.CreateDeviceIdentityReq, $0.CreateDeviceIdentityRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/CreateDeviceIdentity',
      ($0.CreateDeviceIdentityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateDeviceIdentityRes.fromBuffer(value));
  static final _$deleteDeviceDID = $grpc.ClientMethod<$0.DeleteDeviceIdentityReq, $0.DeleteDeviceIdentityRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/DeleteDeviceDID',
      ($0.DeleteDeviceIdentityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteDeviceIdentityRes.fromBuffer(value));
  static final _$getDeviceIdentity = $grpc.ClientMethod<$0.GetDeviceIdentityReq, $0.GetDeviceIdentityRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetDeviceIdentity',
      ($0.GetDeviceIdentityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDeviceIdentityRes.fromBuffer(value));
  static final _$getScuridEdgeAgentVersion = $grpc.ClientMethod<$0.Empty, $0.GetScuridEdgeAgentVersionRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetScuridEdgeAgentVersion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetScuridEdgeAgentVersionRes.fromBuffer(value));
  static final _$signWithIdentity = $grpc.ClientMethod<$0.SignWithIdentityReq, $0.SignWithIdentityRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/SignWithIdentity',
      ($0.SignWithIdentityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignWithIdentityRes.fromBuffer(value));
  static final _$verifySignature = $grpc.ClientMethod<$0.VerifySignatureReq, $0.VerifySignatureRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/VerifySignature',
      ($0.VerifySignatureReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VerifySignatureRes.fromBuffer(value));
  static final _$signBytePayloadWithIdentity = $grpc.ClientMethod<$0.SignBytePayloadWithIdentityReq, $0.SignBytePayloadWithIdentityRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/SignBytePayloadWithIdentity',
      ($0.SignBytePayloadWithIdentityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignBytePayloadWithIdentityRes.fromBuffer(value));
  static final _$verifyBytePayloadWithIdentity = $grpc.ClientMethod<$0.VerifyBytePayloadWithIdentityReq, $0.VerifyBytePayloadWithIdentityRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/VerifyBytePayloadWithIdentity',
      ($0.VerifyBytePayloadWithIdentityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VerifyBytePayloadWithIdentityRes.fromBuffer(value));
  static final _$registerDeviceIdentity = $grpc.ClientMethod<$0.RegisterDeviceIdentityReq, $0.RegisterDeviceIdentityRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/RegisterDeviceIdentity',
      ($0.RegisterDeviceIdentityReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RegisterDeviceIdentityRes.fromBuffer(value));
  static final _$getToken = $grpc.ClientMethod<$0.GetTokenReq, $0.GetTokenRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetToken',
      ($0.GetTokenReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTokenRes.fromBuffer(value));
  static final _$downloadFiles = $grpc.ClientMethod<$0.DownloadFilesReq, $0.DownloadFilesRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/DownloadFiles',
      ($0.DownloadFilesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DownloadFilesRes.fromBuffer(value));
  static final _$uploadFiles = $grpc.ClientMethod<$0.UploadFilesReq, $0.UploadFilesRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/UploadFiles',
      ($0.UploadFilesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UploadFilesRes.fromBuffer(value));
  static final _$sendDeviceData = $grpc.ClientMethod<$0.SendDeviceDataReq, $0.SendDeviceDataRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/SendDeviceData',
      ($0.SendDeviceDataReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SendDeviceDataRes.fromBuffer(value));
  static final _$sendDeviceDataWithCustomFields = $grpc.ClientMethod<$0.SendDeviceDataWithCustomFieldsReq, $0.SendDeviceDataWithCustomFieldsRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/SendDeviceDataWithCustomFields',
      ($0.SendDeviceDataWithCustomFieldsReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SendDeviceDataWithCustomFieldsRes.fromBuffer(value));
  static final _$biometricAuth = $grpc.ClientMethod<$0.BiometricAuthReq, $0.BiometricAuthRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/BiometricAuth',
      ($0.BiometricAuthReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BiometricAuthRes.fromBuffer(value));
  static final _$getDeviceUsers = $grpc.ClientMethod<$0.GetDeviceUsersReq, $0.GetDeviceUsersRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetDeviceUsers',
      ($0.GetDeviceUsersReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDeviceUsersRes.fromBuffer(value));
  static final _$createDeviceIdentityWithAdditionalCrypto = $grpc.ClientMethod<$0.CreateDeviceIdentityWithAdditionalCryptoReq, $0.CreateDeviceIdentityWithAdditionalCryptoRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/CreateDeviceIdentityWithAdditionalCrypto',
      ($0.CreateDeviceIdentityWithAdditionalCryptoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateDeviceIdentityWithAdditionalCryptoRes.fromBuffer(value));
  static final _$isAuthorised = $grpc.ClientMethod<$0.IsAuthorisedReq, $0.IsAuthorisedRes>(
      '/edgeagentapis.v1.ScuridEdgeAgentAPI/IsAuthorised',
      ($0.IsAuthorisedReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IsAuthorisedRes.fromBuffer(value));

  ScuridEdgeAgentAPIClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateDeviceIdentityRes> createDeviceIdentity($0.CreateDeviceIdentityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDeviceIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteDeviceIdentityRes> deleteDeviceDID($0.DeleteDeviceIdentityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDeviceDID, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDeviceIdentityRes> getDeviceIdentity($0.GetDeviceIdentityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDeviceIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetScuridEdgeAgentVersionRes> getScuridEdgeAgentVersion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getScuridEdgeAgentVersion, request, options: options);
  }

  $grpc.ResponseFuture<$0.SignWithIdentityRes> signWithIdentity($0.SignWithIdentityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signWithIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifySignatureRes> verifySignature($0.VerifySignatureReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifySignature, request, options: options);
  }

  $grpc.ResponseFuture<$0.SignBytePayloadWithIdentityRes> signBytePayloadWithIdentity($0.SignBytePayloadWithIdentityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signBytePayloadWithIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyBytePayloadWithIdentityRes> verifyBytePayloadWithIdentity($0.VerifyBytePayloadWithIdentityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyBytePayloadWithIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterDeviceIdentityRes> registerDeviceIdentity($0.RegisterDeviceIdentityReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerDeviceIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTokenRes> getToken($0.GetTokenReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.DownloadFilesRes> downloadFiles($0.DownloadFilesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downloadFiles, request, options: options);
  }

  $grpc.ResponseFuture<$0.UploadFilesRes> uploadFiles($0.UploadFilesReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadFiles, request, options: options);
  }

  $grpc.ResponseFuture<$0.SendDeviceDataRes> sendDeviceData($0.SendDeviceDataReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendDeviceData, request, options: options);
  }

  $grpc.ResponseFuture<$0.SendDeviceDataWithCustomFieldsRes> sendDeviceDataWithCustomFields($0.SendDeviceDataWithCustomFieldsReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendDeviceDataWithCustomFields, request, options: options);
  }

  $grpc.ResponseFuture<$0.BiometricAuthRes> biometricAuth($0.BiometricAuthReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$biometricAuth, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDeviceUsersRes> getDeviceUsers($0.GetDeviceUsersReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDeviceUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateDeviceIdentityWithAdditionalCryptoRes> createDeviceIdentityWithAdditionalCrypto($0.CreateDeviceIdentityWithAdditionalCryptoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDeviceIdentityWithAdditionalCrypto, request, options: options);
  }

  $grpc.ResponseFuture<$0.IsAuthorisedRes> isAuthorised($0.IsAuthorisedReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isAuthorised, request, options: options);
  }
}

@$pb.GrpcServiceName('edgeagentapis.v1.ScuridEdgeAgentAPI')
abstract class ScuridEdgeAgentAPIServiceBase extends $grpc.Service {
  $core.String get $name => 'edgeagentapis.v1.ScuridEdgeAgentAPI';

  ScuridEdgeAgentAPIServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateDeviceIdentityReq, $0.CreateDeviceIdentityRes>(
        'CreateDeviceIdentity',
        createDeviceIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateDeviceIdentityReq.fromBuffer(value),
        ($0.CreateDeviceIdentityRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteDeviceIdentityReq, $0.DeleteDeviceIdentityRes>(
        'DeleteDeviceDID',
        deleteDeviceDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteDeviceIdentityReq.fromBuffer(value),
        ($0.DeleteDeviceIdentityRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDeviceIdentityReq, $0.GetDeviceIdentityRes>(
        'GetDeviceIdentity',
        getDeviceIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDeviceIdentityReq.fromBuffer(value),
        ($0.GetDeviceIdentityRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.GetScuridEdgeAgentVersionRes>(
        'GetScuridEdgeAgentVersion',
        getScuridEdgeAgentVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.GetScuridEdgeAgentVersionRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignWithIdentityReq, $0.SignWithIdentityRes>(
        'SignWithIdentity',
        signWithIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignWithIdentityReq.fromBuffer(value),
        ($0.SignWithIdentityRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifySignatureReq, $0.VerifySignatureRes>(
        'VerifySignature',
        verifySignature_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifySignatureReq.fromBuffer(value),
        ($0.VerifySignatureRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignBytePayloadWithIdentityReq, $0.SignBytePayloadWithIdentityRes>(
        'SignBytePayloadWithIdentity',
        signBytePayloadWithIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignBytePayloadWithIdentityReq.fromBuffer(value),
        ($0.SignBytePayloadWithIdentityRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyBytePayloadWithIdentityReq, $0.VerifyBytePayloadWithIdentityRes>(
        'VerifyBytePayloadWithIdentity',
        verifyBytePayloadWithIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyBytePayloadWithIdentityReq.fromBuffer(value),
        ($0.VerifyBytePayloadWithIdentityRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterDeviceIdentityReq, $0.RegisterDeviceIdentityRes>(
        'RegisterDeviceIdentity',
        registerDeviceIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterDeviceIdentityReq.fromBuffer(value),
        ($0.RegisterDeviceIdentityRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTokenReq, $0.GetTokenRes>(
        'GetToken',
        getToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTokenReq.fromBuffer(value),
        ($0.GetTokenRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DownloadFilesReq, $0.DownloadFilesRes>(
        'DownloadFiles',
        downloadFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DownloadFilesReq.fromBuffer(value),
        ($0.DownloadFilesRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UploadFilesReq, $0.UploadFilesRes>(
        'UploadFiles',
        uploadFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UploadFilesReq.fromBuffer(value),
        ($0.UploadFilesRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendDeviceDataReq, $0.SendDeviceDataRes>(
        'SendDeviceData',
        sendDeviceData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendDeviceDataReq.fromBuffer(value),
        ($0.SendDeviceDataRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendDeviceDataWithCustomFieldsReq, $0.SendDeviceDataWithCustomFieldsRes>(
        'SendDeviceDataWithCustomFields',
        sendDeviceDataWithCustomFields_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendDeviceDataWithCustomFieldsReq.fromBuffer(value),
        ($0.SendDeviceDataWithCustomFieldsRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BiometricAuthReq, $0.BiometricAuthRes>(
        'BiometricAuth',
        biometricAuth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BiometricAuthReq.fromBuffer(value),
        ($0.BiometricAuthRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDeviceUsersReq, $0.GetDeviceUsersRes>(
        'GetDeviceUsers',
        getDeviceUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDeviceUsersReq.fromBuffer(value),
        ($0.GetDeviceUsersRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateDeviceIdentityWithAdditionalCryptoReq, $0.CreateDeviceIdentityWithAdditionalCryptoRes>(
        'CreateDeviceIdentityWithAdditionalCrypto',
        createDeviceIdentityWithAdditionalCrypto_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateDeviceIdentityWithAdditionalCryptoReq.fromBuffer(value),
        ($0.CreateDeviceIdentityWithAdditionalCryptoRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.IsAuthorisedReq, $0.IsAuthorisedRes>(
        'IsAuthorised',
        isAuthorised_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.IsAuthorisedReq.fromBuffer(value),
        ($0.IsAuthorisedRes value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateDeviceIdentityRes> createDeviceIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.CreateDeviceIdentityReq> request) async {
    return createDeviceIdentity(call, await request);
  }

  $async.Future<$0.DeleteDeviceIdentityRes> deleteDeviceDID_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteDeviceIdentityReq> request) async {
    return deleteDeviceDID(call, await request);
  }

  $async.Future<$0.GetDeviceIdentityRes> getDeviceIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.GetDeviceIdentityReq> request) async {
    return getDeviceIdentity(call, await request);
  }

  $async.Future<$0.GetScuridEdgeAgentVersionRes> getScuridEdgeAgentVersion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getScuridEdgeAgentVersion(call, await request);
  }

  $async.Future<$0.SignWithIdentityRes> signWithIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.SignWithIdentityReq> request) async {
    return signWithIdentity(call, await request);
  }

  $async.Future<$0.VerifySignatureRes> verifySignature_Pre($grpc.ServiceCall call, $async.Future<$0.VerifySignatureReq> request) async {
    return verifySignature(call, await request);
  }

  $async.Future<$0.SignBytePayloadWithIdentityRes> signBytePayloadWithIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.SignBytePayloadWithIdentityReq> request) async {
    return signBytePayloadWithIdentity(call, await request);
  }

  $async.Future<$0.VerifyBytePayloadWithIdentityRes> verifyBytePayloadWithIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.VerifyBytePayloadWithIdentityReq> request) async {
    return verifyBytePayloadWithIdentity(call, await request);
  }

  $async.Future<$0.RegisterDeviceIdentityRes> registerDeviceIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterDeviceIdentityReq> request) async {
    return registerDeviceIdentity(call, await request);
  }

  $async.Future<$0.GetTokenRes> getToken_Pre($grpc.ServiceCall call, $async.Future<$0.GetTokenReq> request) async {
    return getToken(call, await request);
  }

  $async.Future<$0.DownloadFilesRes> downloadFiles_Pre($grpc.ServiceCall call, $async.Future<$0.DownloadFilesReq> request) async {
    return downloadFiles(call, await request);
  }

  $async.Future<$0.UploadFilesRes> uploadFiles_Pre($grpc.ServiceCall call, $async.Future<$0.UploadFilesReq> request) async {
    return uploadFiles(call, await request);
  }

  $async.Future<$0.SendDeviceDataRes> sendDeviceData_Pre($grpc.ServiceCall call, $async.Future<$0.SendDeviceDataReq> request) async {
    return sendDeviceData(call, await request);
  }

  $async.Future<$0.SendDeviceDataWithCustomFieldsRes> sendDeviceDataWithCustomFields_Pre($grpc.ServiceCall call, $async.Future<$0.SendDeviceDataWithCustomFieldsReq> request) async {
    return sendDeviceDataWithCustomFields(call, await request);
  }

  $async.Future<$0.BiometricAuthRes> biometricAuth_Pre($grpc.ServiceCall call, $async.Future<$0.BiometricAuthReq> request) async {
    return biometricAuth(call, await request);
  }

  $async.Future<$0.GetDeviceUsersRes> getDeviceUsers_Pre($grpc.ServiceCall call, $async.Future<$0.GetDeviceUsersReq> request) async {
    return getDeviceUsers(call, await request);
  }

  $async.Future<$0.CreateDeviceIdentityWithAdditionalCryptoRes> createDeviceIdentityWithAdditionalCrypto_Pre($grpc.ServiceCall call, $async.Future<$0.CreateDeviceIdentityWithAdditionalCryptoReq> request) async {
    return createDeviceIdentityWithAdditionalCrypto(call, await request);
  }

  $async.Future<$0.IsAuthorisedRes> isAuthorised_Pre($grpc.ServiceCall call, $async.Future<$0.IsAuthorisedReq> request) async {
    return isAuthorised(call, await request);
  }

  $async.Future<$0.CreateDeviceIdentityRes> createDeviceIdentity($grpc.ServiceCall call, $0.CreateDeviceIdentityReq request);
  $async.Future<$0.DeleteDeviceIdentityRes> deleteDeviceDID($grpc.ServiceCall call, $0.DeleteDeviceIdentityReq request);
  $async.Future<$0.GetDeviceIdentityRes> getDeviceIdentity($grpc.ServiceCall call, $0.GetDeviceIdentityReq request);
  $async.Future<$0.GetScuridEdgeAgentVersionRes> getScuridEdgeAgentVersion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.SignWithIdentityRes> signWithIdentity($grpc.ServiceCall call, $0.SignWithIdentityReq request);
  $async.Future<$0.VerifySignatureRes> verifySignature($grpc.ServiceCall call, $0.VerifySignatureReq request);
  $async.Future<$0.SignBytePayloadWithIdentityRes> signBytePayloadWithIdentity($grpc.ServiceCall call, $0.SignBytePayloadWithIdentityReq request);
  $async.Future<$0.VerifyBytePayloadWithIdentityRes> verifyBytePayloadWithIdentity($grpc.ServiceCall call, $0.VerifyBytePayloadWithIdentityReq request);
  $async.Future<$0.RegisterDeviceIdentityRes> registerDeviceIdentity($grpc.ServiceCall call, $0.RegisterDeviceIdentityReq request);
  $async.Future<$0.GetTokenRes> getToken($grpc.ServiceCall call, $0.GetTokenReq request);
  $async.Future<$0.DownloadFilesRes> downloadFiles($grpc.ServiceCall call, $0.DownloadFilesReq request);
  $async.Future<$0.UploadFilesRes> uploadFiles($grpc.ServiceCall call, $0.UploadFilesReq request);
  $async.Future<$0.SendDeviceDataRes> sendDeviceData($grpc.ServiceCall call, $0.SendDeviceDataReq request);
  $async.Future<$0.SendDeviceDataWithCustomFieldsRes> sendDeviceDataWithCustomFields($grpc.ServiceCall call, $0.SendDeviceDataWithCustomFieldsReq request);
  $async.Future<$0.BiometricAuthRes> biometricAuth($grpc.ServiceCall call, $0.BiometricAuthReq request);
  $async.Future<$0.GetDeviceUsersRes> getDeviceUsers($grpc.ServiceCall call, $0.GetDeviceUsersReq request);
  $async.Future<$0.CreateDeviceIdentityWithAdditionalCryptoRes> createDeviceIdentityWithAdditionalCrypto($grpc.ServiceCall call, $0.CreateDeviceIdentityWithAdditionalCryptoReq request);
  $async.Future<$0.IsAuthorisedRes> isAuthorised($grpc.ServiceCall call, $0.IsAuthorisedReq request);
}
