// package: edgeagentapis.v1
// file: edgeagent.proto

/* tslint:disable */
/* eslint-disable */

import * as grpc from "@grpc/grpc-js";
import * as edgeagent_pb from "./edgeagent_pb";

interface IScuridEdgeAgentAPIService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
    createDeviceIdentity: IScuridEdgeAgentAPIService_ICreateDeviceIdentity;
    deleteDeviceDID: IScuridEdgeAgentAPIService_IDeleteDeviceDID;
    getDeviceIdentity: IScuridEdgeAgentAPIService_IGetDeviceIdentity;
    getScuridEdgeAgentVersion: IScuridEdgeAgentAPIService_IGetScuridEdgeAgentVersion;
    signWithIdentity: IScuridEdgeAgentAPIService_ISignWithIdentity;
    verifySignature: IScuridEdgeAgentAPIService_IVerifySignature;
    signBytePayloadWithIdentity: IScuridEdgeAgentAPIService_ISignBytePayloadWithIdentity;
    verifyBytePayloadWithIdentity: IScuridEdgeAgentAPIService_IVerifyBytePayloadWithIdentity;
    registerDeviceIdentity: IScuridEdgeAgentAPIService_IRegisterDeviceIdentity;
    getToken: IScuridEdgeAgentAPIService_IGetToken;
    downloadFiles: IScuridEdgeAgentAPIService_IDownloadFiles;
    uploadFiles: IScuridEdgeAgentAPIService_IUploadFiles;
    sendDeviceData: IScuridEdgeAgentAPIService_ISendDeviceData;
    sendDeviceDataWithCustomFields: IScuridEdgeAgentAPIService_ISendDeviceDataWithCustomFields;
    biometricAuth: IScuridEdgeAgentAPIService_IBiometricAuth;
    getDeviceUsers: IScuridEdgeAgentAPIService_IGetDeviceUsers;
    createDeviceIdentityWithAdditionalCrypto: IScuridEdgeAgentAPIService_ICreateDeviceIdentityWithAdditionalCrypto;
    isAuthorised: IScuridEdgeAgentAPIService_IIsAuthorised;
}

interface IScuridEdgeAgentAPIService_ICreateDeviceIdentity extends grpc.MethodDefinition<edgeagent_pb.CreateDeviceIdentityReq, edgeagent_pb.CreateDeviceIdentityRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/CreateDeviceIdentity";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.CreateDeviceIdentityReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.CreateDeviceIdentityReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.CreateDeviceIdentityRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.CreateDeviceIdentityRes>;
}
interface IScuridEdgeAgentAPIService_IDeleteDeviceDID extends grpc.MethodDefinition<edgeagent_pb.DeleteDeviceIdentityReq, edgeagent_pb.DeleteDeviceIdentityRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/DeleteDeviceDID";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.DeleteDeviceIdentityReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.DeleteDeviceIdentityReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.DeleteDeviceIdentityRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.DeleteDeviceIdentityRes>;
}
interface IScuridEdgeAgentAPIService_IGetDeviceIdentity extends grpc.MethodDefinition<edgeagent_pb.GetDeviceIdentityReq, edgeagent_pb.GetDeviceIdentityRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/GetDeviceIdentity";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.GetDeviceIdentityReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.GetDeviceIdentityReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.GetDeviceIdentityRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.GetDeviceIdentityRes>;
}
interface IScuridEdgeAgentAPIService_IGetScuridEdgeAgentVersion extends grpc.MethodDefinition<edgeagent_pb.Empty, edgeagent_pb.GetScuridEdgeAgentVersionRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/GetScuridEdgeAgentVersion";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.Empty>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.Empty>;
    responseSerialize: grpc.serialize<edgeagent_pb.GetScuridEdgeAgentVersionRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.GetScuridEdgeAgentVersionRes>;
}
interface IScuridEdgeAgentAPIService_ISignWithIdentity extends grpc.MethodDefinition<edgeagent_pb.SignWithIdentityReq, edgeagent_pb.SignWithIdentityRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/SignWithIdentity";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.SignWithIdentityReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.SignWithIdentityReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.SignWithIdentityRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.SignWithIdentityRes>;
}
interface IScuridEdgeAgentAPIService_IVerifySignature extends grpc.MethodDefinition<edgeagent_pb.VerifySignatureReq, edgeagent_pb.VerifySignatureRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/VerifySignature";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.VerifySignatureReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.VerifySignatureReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.VerifySignatureRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.VerifySignatureRes>;
}
interface IScuridEdgeAgentAPIService_ISignBytePayloadWithIdentity extends grpc.MethodDefinition<edgeagent_pb.SignBytePayloadWithIdentityReq, edgeagent_pb.SignBytePayloadWithIdentityRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/SignBytePayloadWithIdentity";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.SignBytePayloadWithIdentityReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.SignBytePayloadWithIdentityReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.SignBytePayloadWithIdentityRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.SignBytePayloadWithIdentityRes>;
}
interface IScuridEdgeAgentAPIService_IVerifyBytePayloadWithIdentity extends grpc.MethodDefinition<edgeagent_pb.VerifyBytePayloadWithIdentityReq, edgeagent_pb.VerifyBytePayloadWithIdentityRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/VerifyBytePayloadWithIdentity";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.VerifyBytePayloadWithIdentityReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.VerifyBytePayloadWithIdentityReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.VerifyBytePayloadWithIdentityRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.VerifyBytePayloadWithIdentityRes>;
}
interface IScuridEdgeAgentAPIService_IRegisterDeviceIdentity extends grpc.MethodDefinition<edgeagent_pb.RegisterDeviceIdentityReq, edgeagent_pb.RegisterDeviceIdentityRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/RegisterDeviceIdentity";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.RegisterDeviceIdentityReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.RegisterDeviceIdentityReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.RegisterDeviceIdentityRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.RegisterDeviceIdentityRes>;
}
interface IScuridEdgeAgentAPIService_IGetToken extends grpc.MethodDefinition<edgeagent_pb.GetTokenReq, edgeagent_pb.GetTokenRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/GetToken";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.GetTokenReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.GetTokenReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.GetTokenRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.GetTokenRes>;
}
interface IScuridEdgeAgentAPIService_IDownloadFiles extends grpc.MethodDefinition<edgeagent_pb.DownloadFilesReq, edgeagent_pb.DownloadFilesRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/DownloadFiles";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.DownloadFilesReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.DownloadFilesReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.DownloadFilesRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.DownloadFilesRes>;
}
interface IScuridEdgeAgentAPIService_IUploadFiles extends grpc.MethodDefinition<edgeagent_pb.UploadFilesReq, edgeagent_pb.UploadFilesRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/UploadFiles";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.UploadFilesReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.UploadFilesReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.UploadFilesRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.UploadFilesRes>;
}
interface IScuridEdgeAgentAPIService_ISendDeviceData extends grpc.MethodDefinition<edgeagent_pb.SendDeviceDataReq, edgeagent_pb.SendDeviceDataRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/SendDeviceData";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.SendDeviceDataReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.SendDeviceDataReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.SendDeviceDataRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.SendDeviceDataRes>;
}
interface IScuridEdgeAgentAPIService_ISendDeviceDataWithCustomFields extends grpc.MethodDefinition<edgeagent_pb.SendDeviceDataWithCustomFieldsReq, edgeagent_pb.SendDeviceDataWithCustomFieldsRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/SendDeviceDataWithCustomFields";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.SendDeviceDataWithCustomFieldsReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.SendDeviceDataWithCustomFieldsReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.SendDeviceDataWithCustomFieldsRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.SendDeviceDataWithCustomFieldsRes>;
}
interface IScuridEdgeAgentAPIService_IBiometricAuth extends grpc.MethodDefinition<edgeagent_pb.BiometricAuthReq, edgeagent_pb.BiometricAuthRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/BiometricAuth";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.BiometricAuthReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.BiometricAuthReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.BiometricAuthRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.BiometricAuthRes>;
}
interface IScuridEdgeAgentAPIService_IGetDeviceUsers extends grpc.MethodDefinition<edgeagent_pb.GetDeviceUsersReq, edgeagent_pb.GetDeviceUsersRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/GetDeviceUsers";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.GetDeviceUsersReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.GetDeviceUsersReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.GetDeviceUsersRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.GetDeviceUsersRes>;
}
interface IScuridEdgeAgentAPIService_ICreateDeviceIdentityWithAdditionalCrypto extends grpc.MethodDefinition<edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/CreateDeviceIdentityWithAdditionalCrypto";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes>;
}
interface IScuridEdgeAgentAPIService_IIsAuthorised extends grpc.MethodDefinition<edgeagent_pb.IsAuthorisedReq, edgeagent_pb.IsAuthorisedRes> {
    path: "/edgeagentapis.v1.ScuridEdgeAgentAPI/IsAuthorised";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<edgeagent_pb.IsAuthorisedReq>;
    requestDeserialize: grpc.deserialize<edgeagent_pb.IsAuthorisedReq>;
    responseSerialize: grpc.serialize<edgeagent_pb.IsAuthorisedRes>;
    responseDeserialize: grpc.deserialize<edgeagent_pb.IsAuthorisedRes>;
}

export const ScuridEdgeAgentAPIService: IScuridEdgeAgentAPIService;

export interface IScuridEdgeAgentAPIServer extends grpc.UntypedServiceImplementation {
    createDeviceIdentity: grpc.handleUnaryCall<edgeagent_pb.CreateDeviceIdentityReq, edgeagent_pb.CreateDeviceIdentityRes>;
    deleteDeviceDID: grpc.handleUnaryCall<edgeagent_pb.DeleteDeviceIdentityReq, edgeagent_pb.DeleteDeviceIdentityRes>;
    getDeviceIdentity: grpc.handleUnaryCall<edgeagent_pb.GetDeviceIdentityReq, edgeagent_pb.GetDeviceIdentityRes>;
    getScuridEdgeAgentVersion: grpc.handleUnaryCall<edgeagent_pb.Empty, edgeagent_pb.GetScuridEdgeAgentVersionRes>;
    signWithIdentity: grpc.handleUnaryCall<edgeagent_pb.SignWithIdentityReq, edgeagent_pb.SignWithIdentityRes>;
    verifySignature: grpc.handleUnaryCall<edgeagent_pb.VerifySignatureReq, edgeagent_pb.VerifySignatureRes>;
    signBytePayloadWithIdentity: grpc.handleUnaryCall<edgeagent_pb.SignBytePayloadWithIdentityReq, edgeagent_pb.SignBytePayloadWithIdentityRes>;
    verifyBytePayloadWithIdentity: grpc.handleUnaryCall<edgeagent_pb.VerifyBytePayloadWithIdentityReq, edgeagent_pb.VerifyBytePayloadWithIdentityRes>;
    registerDeviceIdentity: grpc.handleUnaryCall<edgeagent_pb.RegisterDeviceIdentityReq, edgeagent_pb.RegisterDeviceIdentityRes>;
    getToken: grpc.handleUnaryCall<edgeagent_pb.GetTokenReq, edgeagent_pb.GetTokenRes>;
    downloadFiles: grpc.handleUnaryCall<edgeagent_pb.DownloadFilesReq, edgeagent_pb.DownloadFilesRes>;
    uploadFiles: grpc.handleUnaryCall<edgeagent_pb.UploadFilesReq, edgeagent_pb.UploadFilesRes>;
    sendDeviceData: grpc.handleUnaryCall<edgeagent_pb.SendDeviceDataReq, edgeagent_pb.SendDeviceDataRes>;
    sendDeviceDataWithCustomFields: grpc.handleUnaryCall<edgeagent_pb.SendDeviceDataWithCustomFieldsReq, edgeagent_pb.SendDeviceDataWithCustomFieldsRes>;
    biometricAuth: grpc.handleUnaryCall<edgeagent_pb.BiometricAuthReq, edgeagent_pb.BiometricAuthRes>;
    getDeviceUsers: grpc.handleUnaryCall<edgeagent_pb.GetDeviceUsersReq, edgeagent_pb.GetDeviceUsersRes>;
    createDeviceIdentityWithAdditionalCrypto: grpc.handleUnaryCall<edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes>;
    isAuthorised: grpc.handleUnaryCall<edgeagent_pb.IsAuthorisedReq, edgeagent_pb.IsAuthorisedRes>;
}

export interface IScuridEdgeAgentAPIClient {
    createDeviceIdentity(request: edgeagent_pb.CreateDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    createDeviceIdentity(request: edgeagent_pb.CreateDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    createDeviceIdentity(request: edgeagent_pb.CreateDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    deleteDeviceDID(request: edgeagent_pb.DeleteDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DeleteDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    deleteDeviceDID(request: edgeagent_pb.DeleteDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DeleteDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    deleteDeviceDID(request: edgeagent_pb.DeleteDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DeleteDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    getDeviceIdentity(request: edgeagent_pb.GetDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    getDeviceIdentity(request: edgeagent_pb.GetDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    getDeviceIdentity(request: edgeagent_pb.GetDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    getScuridEdgeAgentVersion(request: edgeagent_pb.Empty, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetScuridEdgeAgentVersionRes) => void): grpc.ClientUnaryCall;
    getScuridEdgeAgentVersion(request: edgeagent_pb.Empty, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetScuridEdgeAgentVersionRes) => void): grpc.ClientUnaryCall;
    getScuridEdgeAgentVersion(request: edgeagent_pb.Empty, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetScuridEdgeAgentVersionRes) => void): grpc.ClientUnaryCall;
    signWithIdentity(request: edgeagent_pb.SignWithIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignWithIdentityRes) => void): grpc.ClientUnaryCall;
    signWithIdentity(request: edgeagent_pb.SignWithIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignWithIdentityRes) => void): grpc.ClientUnaryCall;
    signWithIdentity(request: edgeagent_pb.SignWithIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignWithIdentityRes) => void): grpc.ClientUnaryCall;
    verifySignature(request: edgeagent_pb.VerifySignatureReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifySignatureRes) => void): grpc.ClientUnaryCall;
    verifySignature(request: edgeagent_pb.VerifySignatureReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifySignatureRes) => void): grpc.ClientUnaryCall;
    verifySignature(request: edgeagent_pb.VerifySignatureReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifySignatureRes) => void): grpc.ClientUnaryCall;
    signBytePayloadWithIdentity(request: edgeagent_pb.SignBytePayloadWithIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    signBytePayloadWithIdentity(request: edgeagent_pb.SignBytePayloadWithIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    signBytePayloadWithIdentity(request: edgeagent_pb.SignBytePayloadWithIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    verifyBytePayloadWithIdentity(request: edgeagent_pb.VerifyBytePayloadWithIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifyBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    verifyBytePayloadWithIdentity(request: edgeagent_pb.VerifyBytePayloadWithIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifyBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    verifyBytePayloadWithIdentity(request: edgeagent_pb.VerifyBytePayloadWithIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifyBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    registerDeviceIdentity(request: edgeagent_pb.RegisterDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.RegisterDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    registerDeviceIdentity(request: edgeagent_pb.RegisterDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.RegisterDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    registerDeviceIdentity(request: edgeagent_pb.RegisterDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.RegisterDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    getToken(request: edgeagent_pb.GetTokenReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetTokenRes) => void): grpc.ClientUnaryCall;
    getToken(request: edgeagent_pb.GetTokenReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetTokenRes) => void): grpc.ClientUnaryCall;
    getToken(request: edgeagent_pb.GetTokenReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetTokenRes) => void): grpc.ClientUnaryCall;
    downloadFiles(request: edgeagent_pb.DownloadFilesReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DownloadFilesRes) => void): grpc.ClientUnaryCall;
    downloadFiles(request: edgeagent_pb.DownloadFilesReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DownloadFilesRes) => void): grpc.ClientUnaryCall;
    downloadFiles(request: edgeagent_pb.DownloadFilesReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DownloadFilesRes) => void): grpc.ClientUnaryCall;
    uploadFiles(request: edgeagent_pb.UploadFilesReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.UploadFilesRes) => void): grpc.ClientUnaryCall;
    uploadFiles(request: edgeagent_pb.UploadFilesReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.UploadFilesRes) => void): grpc.ClientUnaryCall;
    uploadFiles(request: edgeagent_pb.UploadFilesReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.UploadFilesRes) => void): grpc.ClientUnaryCall;
    sendDeviceData(request: edgeagent_pb.SendDeviceDataReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataRes) => void): grpc.ClientUnaryCall;
    sendDeviceData(request: edgeagent_pb.SendDeviceDataReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataRes) => void): grpc.ClientUnaryCall;
    sendDeviceData(request: edgeagent_pb.SendDeviceDataReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataRes) => void): grpc.ClientUnaryCall;
    sendDeviceDataWithCustomFields(request: edgeagent_pb.SendDeviceDataWithCustomFieldsReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataWithCustomFieldsRes) => void): grpc.ClientUnaryCall;
    sendDeviceDataWithCustomFields(request: edgeagent_pb.SendDeviceDataWithCustomFieldsReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataWithCustomFieldsRes) => void): grpc.ClientUnaryCall;
    sendDeviceDataWithCustomFields(request: edgeagent_pb.SendDeviceDataWithCustomFieldsReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataWithCustomFieldsRes) => void): grpc.ClientUnaryCall;
    biometricAuth(request: edgeagent_pb.BiometricAuthReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.BiometricAuthRes) => void): grpc.ClientUnaryCall;
    biometricAuth(request: edgeagent_pb.BiometricAuthReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.BiometricAuthRes) => void): grpc.ClientUnaryCall;
    biometricAuth(request: edgeagent_pb.BiometricAuthReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.BiometricAuthRes) => void): grpc.ClientUnaryCall;
    getDeviceUsers(request: edgeagent_pb.GetDeviceUsersReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceUsersRes) => void): grpc.ClientUnaryCall;
    getDeviceUsers(request: edgeagent_pb.GetDeviceUsersReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceUsersRes) => void): grpc.ClientUnaryCall;
    getDeviceUsers(request: edgeagent_pb.GetDeviceUsersReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceUsersRes) => void): grpc.ClientUnaryCall;
    createDeviceIdentityWithAdditionalCrypto(request: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes) => void): grpc.ClientUnaryCall;
    createDeviceIdentityWithAdditionalCrypto(request: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes) => void): grpc.ClientUnaryCall;
    createDeviceIdentityWithAdditionalCrypto(request: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes) => void): grpc.ClientUnaryCall;
    isAuthorised(request: edgeagent_pb.IsAuthorisedReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.IsAuthorisedRes) => void): grpc.ClientUnaryCall;
    isAuthorised(request: edgeagent_pb.IsAuthorisedReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.IsAuthorisedRes) => void): grpc.ClientUnaryCall;
    isAuthorised(request: edgeagent_pb.IsAuthorisedReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.IsAuthorisedRes) => void): grpc.ClientUnaryCall;
}

export class ScuridEdgeAgentAPIClient extends grpc.Client implements IScuridEdgeAgentAPIClient {
    constructor(address: string, credentials: grpc.ChannelCredentials, options?: Partial<grpc.ClientOptions>);
    public createDeviceIdentity(request: edgeagent_pb.CreateDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public createDeviceIdentity(request: edgeagent_pb.CreateDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public createDeviceIdentity(request: edgeagent_pb.CreateDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public deleteDeviceDID(request: edgeagent_pb.DeleteDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DeleteDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public deleteDeviceDID(request: edgeagent_pb.DeleteDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DeleteDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public deleteDeviceDID(request: edgeagent_pb.DeleteDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DeleteDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public getDeviceIdentity(request: edgeagent_pb.GetDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public getDeviceIdentity(request: edgeagent_pb.GetDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public getDeviceIdentity(request: edgeagent_pb.GetDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public getScuridEdgeAgentVersion(request: edgeagent_pb.Empty, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetScuridEdgeAgentVersionRes) => void): grpc.ClientUnaryCall;
    public getScuridEdgeAgentVersion(request: edgeagent_pb.Empty, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetScuridEdgeAgentVersionRes) => void): grpc.ClientUnaryCall;
    public getScuridEdgeAgentVersion(request: edgeagent_pb.Empty, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetScuridEdgeAgentVersionRes) => void): grpc.ClientUnaryCall;
    public signWithIdentity(request: edgeagent_pb.SignWithIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignWithIdentityRes) => void): grpc.ClientUnaryCall;
    public signWithIdentity(request: edgeagent_pb.SignWithIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignWithIdentityRes) => void): grpc.ClientUnaryCall;
    public signWithIdentity(request: edgeagent_pb.SignWithIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignWithIdentityRes) => void): grpc.ClientUnaryCall;
    public verifySignature(request: edgeagent_pb.VerifySignatureReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifySignatureRes) => void): grpc.ClientUnaryCall;
    public verifySignature(request: edgeagent_pb.VerifySignatureReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifySignatureRes) => void): grpc.ClientUnaryCall;
    public verifySignature(request: edgeagent_pb.VerifySignatureReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifySignatureRes) => void): grpc.ClientUnaryCall;
    public signBytePayloadWithIdentity(request: edgeagent_pb.SignBytePayloadWithIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    public signBytePayloadWithIdentity(request: edgeagent_pb.SignBytePayloadWithIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    public signBytePayloadWithIdentity(request: edgeagent_pb.SignBytePayloadWithIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SignBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    public verifyBytePayloadWithIdentity(request: edgeagent_pb.VerifyBytePayloadWithIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifyBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    public verifyBytePayloadWithIdentity(request: edgeagent_pb.VerifyBytePayloadWithIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifyBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    public verifyBytePayloadWithIdentity(request: edgeagent_pb.VerifyBytePayloadWithIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.VerifyBytePayloadWithIdentityRes) => void): grpc.ClientUnaryCall;
    public registerDeviceIdentity(request: edgeagent_pb.RegisterDeviceIdentityReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.RegisterDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public registerDeviceIdentity(request: edgeagent_pb.RegisterDeviceIdentityReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.RegisterDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public registerDeviceIdentity(request: edgeagent_pb.RegisterDeviceIdentityReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.RegisterDeviceIdentityRes) => void): grpc.ClientUnaryCall;
    public getToken(request: edgeagent_pb.GetTokenReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetTokenRes) => void): grpc.ClientUnaryCall;
    public getToken(request: edgeagent_pb.GetTokenReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetTokenRes) => void): grpc.ClientUnaryCall;
    public getToken(request: edgeagent_pb.GetTokenReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetTokenRes) => void): grpc.ClientUnaryCall;
    public downloadFiles(request: edgeagent_pb.DownloadFilesReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DownloadFilesRes) => void): grpc.ClientUnaryCall;
    public downloadFiles(request: edgeagent_pb.DownloadFilesReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DownloadFilesRes) => void): grpc.ClientUnaryCall;
    public downloadFiles(request: edgeagent_pb.DownloadFilesReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.DownloadFilesRes) => void): grpc.ClientUnaryCall;
    public uploadFiles(request: edgeagent_pb.UploadFilesReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.UploadFilesRes) => void): grpc.ClientUnaryCall;
    public uploadFiles(request: edgeagent_pb.UploadFilesReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.UploadFilesRes) => void): grpc.ClientUnaryCall;
    public uploadFiles(request: edgeagent_pb.UploadFilesReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.UploadFilesRes) => void): grpc.ClientUnaryCall;
    public sendDeviceData(request: edgeagent_pb.SendDeviceDataReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataRes) => void): grpc.ClientUnaryCall;
    public sendDeviceData(request: edgeagent_pb.SendDeviceDataReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataRes) => void): grpc.ClientUnaryCall;
    public sendDeviceData(request: edgeagent_pb.SendDeviceDataReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataRes) => void): grpc.ClientUnaryCall;
    public sendDeviceDataWithCustomFields(request: edgeagent_pb.SendDeviceDataWithCustomFieldsReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataWithCustomFieldsRes) => void): grpc.ClientUnaryCall;
    public sendDeviceDataWithCustomFields(request: edgeagent_pb.SendDeviceDataWithCustomFieldsReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataWithCustomFieldsRes) => void): grpc.ClientUnaryCall;
    public sendDeviceDataWithCustomFields(request: edgeagent_pb.SendDeviceDataWithCustomFieldsReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.SendDeviceDataWithCustomFieldsRes) => void): grpc.ClientUnaryCall;
    public biometricAuth(request: edgeagent_pb.BiometricAuthReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.BiometricAuthRes) => void): grpc.ClientUnaryCall;
    public biometricAuth(request: edgeagent_pb.BiometricAuthReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.BiometricAuthRes) => void): grpc.ClientUnaryCall;
    public biometricAuth(request: edgeagent_pb.BiometricAuthReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.BiometricAuthRes) => void): grpc.ClientUnaryCall;
    public getDeviceUsers(request: edgeagent_pb.GetDeviceUsersReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceUsersRes) => void): grpc.ClientUnaryCall;
    public getDeviceUsers(request: edgeagent_pb.GetDeviceUsersReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceUsersRes) => void): grpc.ClientUnaryCall;
    public getDeviceUsers(request: edgeagent_pb.GetDeviceUsersReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.GetDeviceUsersRes) => void): grpc.ClientUnaryCall;
    public createDeviceIdentityWithAdditionalCrypto(request: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes) => void): grpc.ClientUnaryCall;
    public createDeviceIdentityWithAdditionalCrypto(request: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes) => void): grpc.ClientUnaryCall;
    public createDeviceIdentityWithAdditionalCrypto(request: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.CreateDeviceIdentityWithAdditionalCryptoRes) => void): grpc.ClientUnaryCall;
    public isAuthorised(request: edgeagent_pb.IsAuthorisedReq, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.IsAuthorisedRes) => void): grpc.ClientUnaryCall;
    public isAuthorised(request: edgeagent_pb.IsAuthorisedReq, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.IsAuthorisedRes) => void): grpc.ClientUnaryCall;
    public isAuthorised(request: edgeagent_pb.IsAuthorisedReq, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: edgeagent_pb.IsAuthorisedRes) => void): grpc.ClientUnaryCall;
}
