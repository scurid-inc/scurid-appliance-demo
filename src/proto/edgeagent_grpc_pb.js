// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('@grpc/grpc-js');
var edgeagent_pb = require('./edgeagent_pb.js');

function serialize_edgeagentapis_v1_BiometricAuthReq(arg) {
  if (!(arg instanceof edgeagent_pb.BiometricAuthReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.BiometricAuthReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_BiometricAuthReq(buffer_arg) {
  return edgeagent_pb.BiometricAuthReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_BiometricAuthRes(arg) {
  if (!(arg instanceof edgeagent_pb.BiometricAuthRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.BiometricAuthRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_BiometricAuthRes(buffer_arg) {
  return edgeagent_pb.BiometricAuthRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_CreateDeviceIdentityReq(arg) {
  if (!(arg instanceof edgeagent_pb.CreateDeviceIdentityReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.CreateDeviceIdentityReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_CreateDeviceIdentityReq(buffer_arg) {
  return edgeagent_pb.CreateDeviceIdentityReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_CreateDeviceIdentityRes(arg) {
  if (!(arg instanceof edgeagent_pb.CreateDeviceIdentityRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.CreateDeviceIdentityRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_CreateDeviceIdentityRes(buffer_arg) {
  return edgeagent_pb.CreateDeviceIdentityRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoReq(arg) {
  if (!(arg instanceof edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.CreateDeviceIdentityWithAdditionalCryptoReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoReq(buffer_arg) {
  return edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoRes(arg) {
  if (!(arg instanceof edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.CreateDeviceIdentityWithAdditionalCryptoRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoRes(buffer_arg) {
  return edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_DeleteDeviceIdentityReq(arg) {
  if (!(arg instanceof edgeagent_pb.DeleteDeviceIdentityReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.DeleteDeviceIdentityReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_DeleteDeviceIdentityReq(buffer_arg) {
  return edgeagent_pb.DeleteDeviceIdentityReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_DeleteDeviceIdentityRes(arg) {
  if (!(arg instanceof edgeagent_pb.DeleteDeviceIdentityRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.DeleteDeviceIdentityRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_DeleteDeviceIdentityRes(buffer_arg) {
  return edgeagent_pb.DeleteDeviceIdentityRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_DownloadFilesReq(arg) {
  if (!(arg instanceof edgeagent_pb.DownloadFilesReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.DownloadFilesReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_DownloadFilesReq(buffer_arg) {
  return edgeagent_pb.DownloadFilesReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_DownloadFilesRes(arg) {
  if (!(arg instanceof edgeagent_pb.DownloadFilesRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.DownloadFilesRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_DownloadFilesRes(buffer_arg) {
  return edgeagent_pb.DownloadFilesRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_Empty(arg) {
  if (!(arg instanceof edgeagent_pb.Empty)) {
    throw new Error('Expected argument of type edgeagentapis.v1.Empty');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_Empty(buffer_arg) {
  return edgeagent_pb.Empty.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_GetDeviceIdentityReq(arg) {
  if (!(arg instanceof edgeagent_pb.GetDeviceIdentityReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.GetDeviceIdentityReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_GetDeviceIdentityReq(buffer_arg) {
  return edgeagent_pb.GetDeviceIdentityReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_GetDeviceIdentityRes(arg) {
  if (!(arg instanceof edgeagent_pb.GetDeviceIdentityRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.GetDeviceIdentityRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_GetDeviceIdentityRes(buffer_arg) {
  return edgeagent_pb.GetDeviceIdentityRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_GetDeviceUsersReq(arg) {
  if (!(arg instanceof edgeagent_pb.GetDeviceUsersReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.GetDeviceUsersReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_GetDeviceUsersReq(buffer_arg) {
  return edgeagent_pb.GetDeviceUsersReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_GetDeviceUsersRes(arg) {
  if (!(arg instanceof edgeagent_pb.GetDeviceUsersRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.GetDeviceUsersRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_GetDeviceUsersRes(buffer_arg) {
  return edgeagent_pb.GetDeviceUsersRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_GetScuridEdgeAgentVersionRes(arg) {
  if (!(arg instanceof edgeagent_pb.GetScuridEdgeAgentVersionRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.GetScuridEdgeAgentVersionRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_GetScuridEdgeAgentVersionRes(buffer_arg) {
  return edgeagent_pb.GetScuridEdgeAgentVersionRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_GetTokenReq(arg) {
  if (!(arg instanceof edgeagent_pb.GetTokenReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.GetTokenReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_GetTokenReq(buffer_arg) {
  return edgeagent_pb.GetTokenReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_GetTokenRes(arg) {
  if (!(arg instanceof edgeagent_pb.GetTokenRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.GetTokenRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_GetTokenRes(buffer_arg) {
  return edgeagent_pb.GetTokenRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_IsAuthorisedReq(arg) {
  if (!(arg instanceof edgeagent_pb.IsAuthorisedReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.IsAuthorisedReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_IsAuthorisedReq(buffer_arg) {
  return edgeagent_pb.IsAuthorisedReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_IsAuthorisedRes(arg) {
  if (!(arg instanceof edgeagent_pb.IsAuthorisedRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.IsAuthorisedRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_IsAuthorisedRes(buffer_arg) {
  return edgeagent_pb.IsAuthorisedRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_RegisterDeviceIdentityReq(arg) {
  if (!(arg instanceof edgeagent_pb.RegisterDeviceIdentityReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.RegisterDeviceIdentityReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_RegisterDeviceIdentityReq(buffer_arg) {
  return edgeagent_pb.RegisterDeviceIdentityReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_RegisterDeviceIdentityRes(arg) {
  if (!(arg instanceof edgeagent_pb.RegisterDeviceIdentityRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.RegisterDeviceIdentityRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_RegisterDeviceIdentityRes(buffer_arg) {
  return edgeagent_pb.RegisterDeviceIdentityRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SendDeviceDataReq(arg) {
  if (!(arg instanceof edgeagent_pb.SendDeviceDataReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SendDeviceDataReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SendDeviceDataReq(buffer_arg) {
  return edgeagent_pb.SendDeviceDataReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SendDeviceDataRes(arg) {
  if (!(arg instanceof edgeagent_pb.SendDeviceDataRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SendDeviceDataRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SendDeviceDataRes(buffer_arg) {
  return edgeagent_pb.SendDeviceDataRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsReq(arg) {
  if (!(arg instanceof edgeagent_pb.SendDeviceDataWithCustomFieldsReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SendDeviceDataWithCustomFieldsReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsReq(buffer_arg) {
  return edgeagent_pb.SendDeviceDataWithCustomFieldsReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsRes(arg) {
  if (!(arg instanceof edgeagent_pb.SendDeviceDataWithCustomFieldsRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SendDeviceDataWithCustomFieldsRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsRes(buffer_arg) {
  return edgeagent_pb.SendDeviceDataWithCustomFieldsRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SignBytePayloadWithIdentityReq(arg) {
  if (!(arg instanceof edgeagent_pb.SignBytePayloadWithIdentityReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SignBytePayloadWithIdentityReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SignBytePayloadWithIdentityReq(buffer_arg) {
  return edgeagent_pb.SignBytePayloadWithIdentityReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SignBytePayloadWithIdentityRes(arg) {
  if (!(arg instanceof edgeagent_pb.SignBytePayloadWithIdentityRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SignBytePayloadWithIdentityRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SignBytePayloadWithIdentityRes(buffer_arg) {
  return edgeagent_pb.SignBytePayloadWithIdentityRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SignWithIdentityReq(arg) {
  if (!(arg instanceof edgeagent_pb.SignWithIdentityReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SignWithIdentityReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SignWithIdentityReq(buffer_arg) {
  return edgeagent_pb.SignWithIdentityReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_SignWithIdentityRes(arg) {
  if (!(arg instanceof edgeagent_pb.SignWithIdentityRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.SignWithIdentityRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_SignWithIdentityRes(buffer_arg) {
  return edgeagent_pb.SignWithIdentityRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_UploadFilesReq(arg) {
  if (!(arg instanceof edgeagent_pb.UploadFilesReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.UploadFilesReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_UploadFilesReq(buffer_arg) {
  return edgeagent_pb.UploadFilesReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_UploadFilesRes(arg) {
  if (!(arg instanceof edgeagent_pb.UploadFilesRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.UploadFilesRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_UploadFilesRes(buffer_arg) {
  return edgeagent_pb.UploadFilesRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityReq(arg) {
  if (!(arg instanceof edgeagent_pb.VerifyBytePayloadWithIdentityReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.VerifyBytePayloadWithIdentityReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityReq(buffer_arg) {
  return edgeagent_pb.VerifyBytePayloadWithIdentityReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityRes(arg) {
  if (!(arg instanceof edgeagent_pb.VerifyBytePayloadWithIdentityRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.VerifyBytePayloadWithIdentityRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityRes(buffer_arg) {
  return edgeagent_pb.VerifyBytePayloadWithIdentityRes.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_VerifySignatureReq(arg) {
  if (!(arg instanceof edgeagent_pb.VerifySignatureReq)) {
    throw new Error('Expected argument of type edgeagentapis.v1.VerifySignatureReq');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_VerifySignatureReq(buffer_arg) {
  return edgeagent_pb.VerifySignatureReq.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_edgeagentapis_v1_VerifySignatureRes(arg) {
  if (!(arg instanceof edgeagent_pb.VerifySignatureRes)) {
    throw new Error('Expected argument of type edgeagentapis.v1.VerifySignatureRes');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_edgeagentapis_v1_VerifySignatureRes(buffer_arg) {
  return edgeagent_pb.VerifySignatureRes.deserializeBinary(new Uint8Array(buffer_arg));
}


// provides set of services that will be exposed as APIs for -
// Edge clients looking to interact with ScuridEdgeAgent
//
var ScuridEdgeAgentAPIService = exports.ScuridEdgeAgentAPIService = {
  // Create an identity
createDeviceIdentity: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/CreateDeviceIdentity',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.CreateDeviceIdentityReq,
    responseType: edgeagent_pb.CreateDeviceIdentityRes,
    requestSerialize: serialize_edgeagentapis_v1_CreateDeviceIdentityReq,
    requestDeserialize: deserialize_edgeagentapis_v1_CreateDeviceIdentityReq,
    responseSerialize: serialize_edgeagentapis_v1_CreateDeviceIdentityRes,
    responseDeserialize: deserialize_edgeagentapis_v1_CreateDeviceIdentityRes,
  },
  // Delete an existing DID
deleteDeviceDID: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/DeleteDeviceDID',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.DeleteDeviceIdentityReq,
    responseType: edgeagent_pb.DeleteDeviceIdentityRes,
    requestSerialize: serialize_edgeagentapis_v1_DeleteDeviceIdentityReq,
    requestDeserialize: deserialize_edgeagentapis_v1_DeleteDeviceIdentityReq,
    responseSerialize: serialize_edgeagentapis_v1_DeleteDeviceIdentityRes,
    responseDeserialize: deserialize_edgeagentapis_v1_DeleteDeviceIdentityRes,
  },
  // Validates if particular identity was already created locally
getDeviceIdentity: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetDeviceIdentity',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.GetDeviceIdentityReq,
    responseType: edgeagent_pb.GetDeviceIdentityRes,
    requestSerialize: serialize_edgeagentapis_v1_GetDeviceIdentityReq,
    requestDeserialize: deserialize_edgeagentapis_v1_GetDeviceIdentityReq,
    responseSerialize: serialize_edgeagentapis_v1_GetDeviceIdentityRes,
    responseDeserialize: deserialize_edgeagentapis_v1_GetDeviceIdentityRes,
  },
  // Get currently installed version of edge agent
getScuridEdgeAgentVersion: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetScuridEdgeAgentVersion',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.Empty,
    responseType: edgeagent_pb.GetScuridEdgeAgentVersionRes,
    requestSerialize: serialize_edgeagentapis_v1_Empty,
    requestDeserialize: deserialize_edgeagentapis_v1_Empty,
    responseSerialize: serialize_edgeagentapis_v1_GetScuridEdgeAgentVersionRes,
    responseDeserialize: deserialize_edgeagentapis_v1_GetScuridEdgeAgentVersionRes,
  },
  // Signs a payload with identity
signWithIdentity: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/SignWithIdentity',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.SignWithIdentityReq,
    responseType: edgeagent_pb.SignWithIdentityRes,
    requestSerialize: serialize_edgeagentapis_v1_SignWithIdentityReq,
    requestDeserialize: deserialize_edgeagentapis_v1_SignWithIdentityReq,
    responseSerialize: serialize_edgeagentapis_v1_SignWithIdentityRes,
    responseDeserialize: deserialize_edgeagentapis_v1_SignWithIdentityRes,
  },
  // Verifies a signature tagged to the payload
verifySignature: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/VerifySignature',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.VerifySignatureReq,
    responseType: edgeagent_pb.VerifySignatureRes,
    requestSerialize: serialize_edgeagentapis_v1_VerifySignatureReq,
    requestDeserialize: deserialize_edgeagentapis_v1_VerifySignatureReq,
    responseSerialize: serialize_edgeagentapis_v1_VerifySignatureRes,
    responseDeserialize: deserialize_edgeagentapis_v1_VerifySignatureRes,
  },
  // Signs a byte array payload with identity
signBytePayloadWithIdentity: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/SignBytePayloadWithIdentity',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.SignBytePayloadWithIdentityReq,
    responseType: edgeagent_pb.SignBytePayloadWithIdentityRes,
    requestSerialize: serialize_edgeagentapis_v1_SignBytePayloadWithIdentityReq,
    requestDeserialize: deserialize_edgeagentapis_v1_SignBytePayloadWithIdentityReq,
    responseSerialize: serialize_edgeagentapis_v1_SignBytePayloadWithIdentityRes,
    responseDeserialize: deserialize_edgeagentapis_v1_SignBytePayloadWithIdentityRes,
  },
  // Verifies a byte array payload with identity
verifyBytePayloadWithIdentity: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/VerifyBytePayloadWithIdentity',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.VerifyBytePayloadWithIdentityReq,
    responseType: edgeagent_pb.VerifyBytePayloadWithIdentityRes,
    requestSerialize: serialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityReq,
    requestDeserialize: deserialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityReq,
    responseSerialize: serialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityRes,
    responseDeserialize: deserialize_edgeagentapis_v1_VerifyBytePayloadWithIdentityRes,
  },
  // To be called for registering the device identity for the first time
// Expects additional device data that will be used for binding the identity with the device
registerDeviceIdentity: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/RegisterDeviceIdentity',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.RegisterDeviceIdentityReq,
    responseType: edgeagent_pb.RegisterDeviceIdentityRes,
    requestSerialize: serialize_edgeagentapis_v1_RegisterDeviceIdentityReq,
    requestDeserialize: deserialize_edgeagentapis_v1_RegisterDeviceIdentityReq,
    responseSerialize: serialize_edgeagentapis_v1_RegisterDeviceIdentityRes,
    responseDeserialize: deserialize_edgeagentapis_v1_RegisterDeviceIdentityRes,
  },
  // GetToken to receive required token from Scurid Platform App
// Needed in order to access APIs that need authentication from the Scurid Platform App
// Not used for authentication locally on the Scurid Edge Agent
// Also used for refreshing the token
getToken: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetToken',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.GetTokenReq,
    responseType: edgeagent_pb.GetTokenRes,
    requestSerialize: serialize_edgeagentapis_v1_GetTokenReq,
    requestDeserialize: deserialize_edgeagentapis_v1_GetTokenReq,
    responseSerialize: serialize_edgeagentapis_v1_GetTokenRes,
    responseDeserialize: deserialize_edgeagentapis_v1_GetTokenRes,
  },
  // Used for downloading one or more files
// number of files to download will depend on files prepared by the admin on Scurid Platform App
downloadFiles: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/DownloadFiles',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.DownloadFilesReq,
    responseType: edgeagent_pb.DownloadFilesRes,
    requestSerialize: serialize_edgeagentapis_v1_DownloadFilesReq,
    requestDeserialize: deserialize_edgeagentapis_v1_DownloadFilesReq,
    responseSerialize: serialize_edgeagentapis_v1_DownloadFilesRes,
    responseDeserialize: deserialize_edgeagentapis_v1_DownloadFilesRes,
  },
  // Used for uploading one or more files
// number of files to upload will depend on files prepared by the admin on Scurid Platform App
uploadFiles: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/UploadFiles',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.UploadFilesReq,
    responseType: edgeagent_pb.UploadFilesRes,
    requestSerialize: serialize_edgeagentapis_v1_UploadFilesReq,
    requestDeserialize: deserialize_edgeagentapis_v1_UploadFilesReq,
    responseSerialize: serialize_edgeagentapis_v1_UploadFilesRes,
    responseDeserialize: deserialize_edgeagentapis_v1_UploadFilesRes,
  },
  // invokes send data services within the Agent to send to the Scurid backend Server
sendDeviceData: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/SendDeviceData',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.SendDeviceDataReq,
    responseType: edgeagent_pb.SendDeviceDataRes,
    requestSerialize: serialize_edgeagentapis_v1_SendDeviceDataReq,
    requestDeserialize: deserialize_edgeagentapis_v1_SendDeviceDataReq,
    responseSerialize: serialize_edgeagentapis_v1_SendDeviceDataRes,
    responseDeserialize: deserialize_edgeagentapis_v1_SendDeviceDataRes,
  },
  // SendDeviceDataWithCustomFields this is used to send data to the Scurid backend Server with JSON formatted with custom fields
sendDeviceDataWithCustomFields: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/SendDeviceDataWithCustomFields',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.SendDeviceDataWithCustomFieldsReq,
    responseType: edgeagent_pb.SendDeviceDataWithCustomFieldsRes,
    requestSerialize: serialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsReq,
    requestDeserialize: deserialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsReq,
    responseSerialize: serialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsRes,
    responseDeserialize: deserialize_edgeagentapis_v1_SendDeviceDataWithCustomFieldsRes,
  },
  // Initiates a human authentication with the device on which the Scurid Edge Agent is running
// before using this make sure user has enrolled biometric data with Scurid Server; if the user has never enrolled for bio-metric data, calling this API endpoint
// will not be enough. Post enrollment an administrator must grant required access rights and mapping of the user to the device
biometricAuth: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/BiometricAuth',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.BiometricAuthReq,
    responseType: edgeagent_pb.BiometricAuthRes,
    requestSerialize: serialize_edgeagentapis_v1_BiometricAuthReq,
    requestDeserialize: deserialize_edgeagentapis_v1_BiometricAuthReq,
    responseSerialize: serialize_edgeagentapis_v1_BiometricAuthRes,
    responseDeserialize: deserialize_edgeagentapis_v1_BiometricAuthRes,
  },
  // GetDeviceUsers returns the list of users who have access to the device
// this is the list of users who have enrolled with biometrics and have received access rights from the administrator
getDeviceUsers: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/GetDeviceUsers',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.GetDeviceUsersReq,
    responseType: edgeagent_pb.GetDeviceUsersRes,
    requestSerialize: serialize_edgeagentapis_v1_GetDeviceUsersReq,
    requestDeserialize: deserialize_edgeagentapis_v1_GetDeviceUsersReq,
    responseSerialize: serialize_edgeagentapis_v1_GetDeviceUsersRes,
    responseDeserialize: deserialize_edgeagentapis_v1_GetDeviceUsersRes,
  },
  // CreateDeviceIdentityWithAdditionalCrypto is an extended version of CreateDeviceIdentity
// allows to create an identity with additional crypto artefacts
createDeviceIdentityWithAdditionalCrypto: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/CreateDeviceIdentityWithAdditionalCrypto',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq,
    responseType: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes,
    requestSerialize: serialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoReq,
    requestDeserialize: deserialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoReq,
    responseSerialize: serialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoRes,
    responseDeserialize: deserialize_edgeagentapis_v1_CreateDeviceIdentityWithAdditionalCryptoRes,
  },
  isAuthorised: {
    path: '/edgeagentapis.v1.ScuridEdgeAgentAPI/IsAuthorised',
    requestStream: false,
    responseStream: false,
    requestType: edgeagent_pb.IsAuthorisedReq,
    responseType: edgeagent_pb.IsAuthorisedRes,
    requestSerialize: serialize_edgeagentapis_v1_IsAuthorisedReq,
    requestDeserialize: deserialize_edgeagentapis_v1_IsAuthorisedReq,
    responseSerialize: serialize_edgeagentapis_v1_IsAuthorisedRes,
    responseDeserialize: deserialize_edgeagentapis_v1_IsAuthorisedRes,
  },
};

exports.ScuridEdgeAgentAPIClient = grpc.makeGenericClientConstructor(ScuridEdgeAgentAPIService, 'ScuridEdgeAgentAPI');
