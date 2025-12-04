// package: edgeagentapis.v1
// file: edgeagent.proto

/* tslint:disable */
/* eslint-disable */

import * as jspb from "google-protobuf";

export class GetDeviceUsersReq extends jspb.Message { 

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetDeviceUsersReq.AsObject;
    static toObject(includeInstance: boolean, msg: GetDeviceUsersReq): GetDeviceUsersReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetDeviceUsersReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetDeviceUsersReq;
    static deserializeBinaryFromReader(message: GetDeviceUsersReq, reader: jspb.BinaryReader): GetDeviceUsersReq;
}

export namespace GetDeviceUsersReq {
    export type AsObject = {
    }
}

export class GetDeviceUsersRes extends jspb.Message { 
    clearDeviceusersList(): void;
    getDeviceusersList(): Array<DeviceUsers>;
    setDeviceusersList(value: Array<DeviceUsers>): GetDeviceUsersRes;
    addDeviceusers(value?: DeviceUsers, index?: number): DeviceUsers;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetDeviceUsersRes.AsObject;
    static toObject(includeInstance: boolean, msg: GetDeviceUsersRes): GetDeviceUsersRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetDeviceUsersRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetDeviceUsersRes;
    static deserializeBinaryFromReader(message: GetDeviceUsersRes, reader: jspb.BinaryReader): GetDeviceUsersRes;
}

export namespace GetDeviceUsersRes {
    export type AsObject = {
        deviceusersList: Array<DeviceUsers.AsObject>,
    }
}

export class DeviceUsers extends jspb.Message { 
    getEmail(): string;
    setEmail(value: string): DeviceUsers;
    getSessionid(): string;
    setSessionid(value: string): DeviceUsers;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): DeviceUsers.AsObject;
    static toObject(includeInstance: boolean, msg: DeviceUsers): DeviceUsers.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: DeviceUsers, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): DeviceUsers;
    static deserializeBinaryFromReader(message: DeviceUsers, reader: jspb.BinaryReader): DeviceUsers;
}

export namespace DeviceUsers {
    export type AsObject = {
        email: string,
        sessionid: string,
    }
}

export class Empty extends jspb.Message { 

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Empty.AsObject;
    static toObject(includeInstance: boolean, msg: Empty): Empty.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: Empty, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Empty;
    static deserializeBinaryFromReader(message: Empty, reader: jspb.BinaryReader): Empty;
}

export namespace Empty {
    export type AsObject = {
    }
}

export class BiometricAuthReq extends jspb.Message { 
    getId(): string;
    setId(value: string): BiometricAuthReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): BiometricAuthReq.AsObject;
    static toObject(includeInstance: boolean, msg: BiometricAuthReq): BiometricAuthReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: BiometricAuthReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): BiometricAuthReq;
    static deserializeBinaryFromReader(message: BiometricAuthReq, reader: jspb.BinaryReader): BiometricAuthReq;
}

export namespace BiometricAuthReq {
    export type AsObject = {
        id: string,
    }
}

export class BiometricAuthRes extends jspb.Message { 
    getVerificationurl(): string;
    setVerificationurl(value: string): BiometricAuthRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): BiometricAuthRes.AsObject;
    static toObject(includeInstance: boolean, msg: BiometricAuthRes): BiometricAuthRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: BiometricAuthRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): BiometricAuthRes;
    static deserializeBinaryFromReader(message: BiometricAuthRes, reader: jspb.BinaryReader): BiometricAuthRes;
}

export namespace BiometricAuthRes {
    export type AsObject = {
        verificationurl: string,
    }
}

export class SendDeviceDataWithCustomFieldsReq extends jspb.Message { 
    getAgentdid(): string;
    setAgentdid(value: string): SendDeviceDataWithCustomFieldsReq;
    clearDataList(): void;
    getDataList(): Array<string>;
    setDataList(value: Array<string>): SendDeviceDataWithCustomFieldsReq;
    addData(value: string, index?: number): string;

    hasInfluxdata(): boolean;
    clearInfluxdata(): void;
    getInfluxdata(): InfluxData | undefined;
    setInfluxdata(value?: InfluxData): SendDeviceDataWithCustomFieldsReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SendDeviceDataWithCustomFieldsReq.AsObject;
    static toObject(includeInstance: boolean, msg: SendDeviceDataWithCustomFieldsReq): SendDeviceDataWithCustomFieldsReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SendDeviceDataWithCustomFieldsReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SendDeviceDataWithCustomFieldsReq;
    static deserializeBinaryFromReader(message: SendDeviceDataWithCustomFieldsReq, reader: jspb.BinaryReader): SendDeviceDataWithCustomFieldsReq;
}

export namespace SendDeviceDataWithCustomFieldsReq {
    export type AsObject = {
        agentdid: string,
        dataList: Array<string>,
        influxdata?: InfluxData.AsObject,
    }
}

export class SendDeviceDataWithCustomFieldsRes extends jspb.Message { 
    getResult(): boolean;
    setResult(value: boolean): SendDeviceDataWithCustomFieldsRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SendDeviceDataWithCustomFieldsRes.AsObject;
    static toObject(includeInstance: boolean, msg: SendDeviceDataWithCustomFieldsRes): SendDeviceDataWithCustomFieldsRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SendDeviceDataWithCustomFieldsRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SendDeviceDataWithCustomFieldsRes;
    static deserializeBinaryFromReader(message: SendDeviceDataWithCustomFieldsRes, reader: jspb.BinaryReader): SendDeviceDataWithCustomFieldsRes;
}

export namespace SendDeviceDataWithCustomFieldsRes {
    export type AsObject = {
        result: boolean,
    }
}

export class GetOnboardingPackageReq extends jspb.Message { 
    getDid(): string;
    setDid(value: string): GetOnboardingPackageReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetOnboardingPackageReq.AsObject;
    static toObject(includeInstance: boolean, msg: GetOnboardingPackageReq): GetOnboardingPackageReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetOnboardingPackageReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetOnboardingPackageReq;
    static deserializeBinaryFromReader(message: GetOnboardingPackageReq, reader: jspb.BinaryReader): GetOnboardingPackageReq;
}

export namespace GetOnboardingPackageReq {
    export type AsObject = {
        did: string,
    }
}

export class GetOnboardingPackageRes extends jspb.Message { 
    getOnboardingpkg(): string;
    setOnboardingpkg(value: string): GetOnboardingPackageRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetOnboardingPackageRes.AsObject;
    static toObject(includeInstance: boolean, msg: GetOnboardingPackageRes): GetOnboardingPackageRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetOnboardingPackageRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetOnboardingPackageRes;
    static deserializeBinaryFromReader(message: GetOnboardingPackageRes, reader: jspb.BinaryReader): GetOnboardingPackageRes;
}

export namespace GetOnboardingPackageRes {
    export type AsObject = {
        onboardingpkg: string,
    }
}

export class GetTokenReq extends jspb.Message { 
    getUsername(): string;
    setUsername(value: string): GetTokenReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetTokenReq.AsObject;
    static toObject(includeInstance: boolean, msg: GetTokenReq): GetTokenReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetTokenReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetTokenReq;
    static deserializeBinaryFromReader(message: GetTokenReq, reader: jspb.BinaryReader): GetTokenReq;
}

export namespace GetTokenReq {
    export type AsObject = {
        username: string,
    }
}

export class GetTokenRes extends jspb.Message { 
    getToken(): string;
    setToken(value: string): GetTokenRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetTokenRes.AsObject;
    static toObject(includeInstance: boolean, msg: GetTokenRes): GetTokenRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetTokenRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetTokenRes;
    static deserializeBinaryFromReader(message: GetTokenRes, reader: jspb.BinaryReader): GetTokenRes;
}

export namespace GetTokenRes {
    export type AsObject = {
        token: string,
    }
}

export class VerifySignatureReq extends jspb.Message { 
    getSignature(): string;
    setSignature(value: string): VerifySignatureReq;
    getPayload(): string;
    setPayload(value: string): VerifySignatureReq;
    getDid(): string;
    setDid(value: string): VerifySignatureReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): VerifySignatureReq.AsObject;
    static toObject(includeInstance: boolean, msg: VerifySignatureReq): VerifySignatureReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: VerifySignatureReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): VerifySignatureReq;
    static deserializeBinaryFromReader(message: VerifySignatureReq, reader: jspb.BinaryReader): VerifySignatureReq;
}

export namespace VerifySignatureReq {
    export type AsObject = {
        signature: string,
        payload: string,
        did: string,
    }
}

export class VerifySignatureRes extends jspb.Message { 
    getIsvalid(): boolean;
    setIsvalid(value: boolean): VerifySignatureRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): VerifySignatureRes.AsObject;
    static toObject(includeInstance: boolean, msg: VerifySignatureRes): VerifySignatureRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: VerifySignatureRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): VerifySignatureRes;
    static deserializeBinaryFromReader(message: VerifySignatureRes, reader: jspb.BinaryReader): VerifySignatureRes;
}

export namespace VerifySignatureRes {
    export type AsObject = {
        isvalid: boolean,
    }
}

export class SignWithIdentityReq extends jspb.Message { 
    getPayload(): string;
    setPayload(value: string): SignWithIdentityReq;
    getDid(): string;
    setDid(value: string): SignWithIdentityReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SignWithIdentityReq.AsObject;
    static toObject(includeInstance: boolean, msg: SignWithIdentityReq): SignWithIdentityReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SignWithIdentityReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SignWithIdentityReq;
    static deserializeBinaryFromReader(message: SignWithIdentityReq, reader: jspb.BinaryReader): SignWithIdentityReq;
}

export namespace SignWithIdentityReq {
    export type AsObject = {
        payload: string,
        did: string,
    }
}

export class SignWithIdentityRes extends jspb.Message { 
    getSignature(): string;
    setSignature(value: string): SignWithIdentityRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SignWithIdentityRes.AsObject;
    static toObject(includeInstance: boolean, msg: SignWithIdentityRes): SignWithIdentityRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SignWithIdentityRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SignWithIdentityRes;
    static deserializeBinaryFromReader(message: SignWithIdentityRes, reader: jspb.BinaryReader): SignWithIdentityRes;
}

export namespace SignWithIdentityRes {
    export type AsObject = {
        signature: string,
    }
}

export class SignBytePayloadWithIdentityReq extends jspb.Message { 
    getPayload(): Uint8Array | string;
    getPayload_asU8(): Uint8Array;
    getPayload_asB64(): string;
    setPayload(value: Uint8Array | string): SignBytePayloadWithIdentityReq;
    getDid(): string;
    setDid(value: string): SignBytePayloadWithIdentityReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SignBytePayloadWithIdentityReq.AsObject;
    static toObject(includeInstance: boolean, msg: SignBytePayloadWithIdentityReq): SignBytePayloadWithIdentityReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SignBytePayloadWithIdentityReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SignBytePayloadWithIdentityReq;
    static deserializeBinaryFromReader(message: SignBytePayloadWithIdentityReq, reader: jspb.BinaryReader): SignBytePayloadWithIdentityReq;
}

export namespace SignBytePayloadWithIdentityReq {
    export type AsObject = {
        payload: Uint8Array | string,
        did: string,
    }
}

export class SignBytePayloadWithIdentityRes extends jspb.Message { 
    getSignature(): string;
    setSignature(value: string): SignBytePayloadWithIdentityRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SignBytePayloadWithIdentityRes.AsObject;
    static toObject(includeInstance: boolean, msg: SignBytePayloadWithIdentityRes): SignBytePayloadWithIdentityRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SignBytePayloadWithIdentityRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SignBytePayloadWithIdentityRes;
    static deserializeBinaryFromReader(message: SignBytePayloadWithIdentityRes, reader: jspb.BinaryReader): SignBytePayloadWithIdentityRes;
}

export namespace SignBytePayloadWithIdentityRes {
    export type AsObject = {
        signature: string,
    }
}

export class VerifyBytePayloadWithIdentityReq extends jspb.Message { 
    getSignature(): string;
    setSignature(value: string): VerifyBytePayloadWithIdentityReq;
    getPayload(): Uint8Array | string;
    getPayload_asU8(): Uint8Array;
    getPayload_asB64(): string;
    setPayload(value: Uint8Array | string): VerifyBytePayloadWithIdentityReq;
    getDid(): string;
    setDid(value: string): VerifyBytePayloadWithIdentityReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): VerifyBytePayloadWithIdentityReq.AsObject;
    static toObject(includeInstance: boolean, msg: VerifyBytePayloadWithIdentityReq): VerifyBytePayloadWithIdentityReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: VerifyBytePayloadWithIdentityReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): VerifyBytePayloadWithIdentityReq;
    static deserializeBinaryFromReader(message: VerifyBytePayloadWithIdentityReq, reader: jspb.BinaryReader): VerifyBytePayloadWithIdentityReq;
}

export namespace VerifyBytePayloadWithIdentityReq {
    export type AsObject = {
        signature: string,
        payload: Uint8Array | string,
        did: string,
    }
}

export class VerifyBytePayloadWithIdentityRes extends jspb.Message { 
    getIsvalid(): boolean;
    setIsvalid(value: boolean): VerifyBytePayloadWithIdentityRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): VerifyBytePayloadWithIdentityRes.AsObject;
    static toObject(includeInstance: boolean, msg: VerifyBytePayloadWithIdentityRes): VerifyBytePayloadWithIdentityRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: VerifyBytePayloadWithIdentityRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): VerifyBytePayloadWithIdentityRes;
    static deserializeBinaryFromReader(message: VerifyBytePayloadWithIdentityRes, reader: jspb.BinaryReader): VerifyBytePayloadWithIdentityRes;
}

export namespace VerifyBytePayloadWithIdentityRes {
    export type AsObject = {
        isvalid: boolean,
    }
}

export class CreateDeviceIdentityReq extends jspb.Message { 

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): CreateDeviceIdentityReq.AsObject;
    static toObject(includeInstance: boolean, msg: CreateDeviceIdentityReq): CreateDeviceIdentityReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: CreateDeviceIdentityReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): CreateDeviceIdentityReq;
    static deserializeBinaryFromReader(message: CreateDeviceIdentityReq, reader: jspb.BinaryReader): CreateDeviceIdentityReq;
}

export namespace CreateDeviceIdentityReq {
    export type AsObject = {
    }
}

export class CreateDeviceIdentityRes extends jspb.Message { 
    getDid(): string;
    setDid(value: string): CreateDeviceIdentityRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): CreateDeviceIdentityRes.AsObject;
    static toObject(includeInstance: boolean, msg: CreateDeviceIdentityRes): CreateDeviceIdentityRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: CreateDeviceIdentityRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): CreateDeviceIdentityRes;
    static deserializeBinaryFromReader(message: CreateDeviceIdentityRes, reader: jspb.BinaryReader): CreateDeviceIdentityRes;
}

export namespace CreateDeviceIdentityRes {
    export type AsObject = {
        did: string,
    }
}

export class DeleteDeviceIdentityReq extends jspb.Message { 
    getDid(): string;
    setDid(value: string): DeleteDeviceIdentityReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): DeleteDeviceIdentityReq.AsObject;
    static toObject(includeInstance: boolean, msg: DeleteDeviceIdentityReq): DeleteDeviceIdentityReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: DeleteDeviceIdentityReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): DeleteDeviceIdentityReq;
    static deserializeBinaryFromReader(message: DeleteDeviceIdentityReq, reader: jspb.BinaryReader): DeleteDeviceIdentityReq;
}

export namespace DeleteDeviceIdentityReq {
    export type AsObject = {
        did: string,
    }
}

export class DeleteDeviceIdentityRes extends jspb.Message { 
    getResult(): boolean;
    setResult(value: boolean): DeleteDeviceIdentityRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): DeleteDeviceIdentityRes.AsObject;
    static toObject(includeInstance: boolean, msg: DeleteDeviceIdentityRes): DeleteDeviceIdentityRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: DeleteDeviceIdentityRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): DeleteDeviceIdentityRes;
    static deserializeBinaryFromReader(message: DeleteDeviceIdentityRes, reader: jspb.BinaryReader): DeleteDeviceIdentityRes;
}

export namespace DeleteDeviceIdentityRes {
    export type AsObject = {
        result: boolean,
    }
}

export class GetDeviceIdentityReq extends jspb.Message { 
    getDid(): string;
    setDid(value: string): GetDeviceIdentityReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetDeviceIdentityReq.AsObject;
    static toObject(includeInstance: boolean, msg: GetDeviceIdentityReq): GetDeviceIdentityReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetDeviceIdentityReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetDeviceIdentityReq;
    static deserializeBinaryFromReader(message: GetDeviceIdentityReq, reader: jspb.BinaryReader): GetDeviceIdentityReq;
}

export namespace GetDeviceIdentityReq {
    export type AsObject = {
        did: string,
    }
}

export class GetDeviceIdentityRes extends jspb.Message { 
    getDid(): string;
    setDid(value: string): GetDeviceIdentityRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetDeviceIdentityRes.AsObject;
    static toObject(includeInstance: boolean, msg: GetDeviceIdentityRes): GetDeviceIdentityRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetDeviceIdentityRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetDeviceIdentityRes;
    static deserializeBinaryFromReader(message: GetDeviceIdentityRes, reader: jspb.BinaryReader): GetDeviceIdentityRes;
}

export namespace GetDeviceIdentityRes {
    export type AsObject = {
        did: string,
    }
}

export class GetScuridEdgeAgentVersionRes extends jspb.Message { 
    getAgentversion(): string;
    setAgentversion(value: string): GetScuridEdgeAgentVersionRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): GetScuridEdgeAgentVersionRes.AsObject;
    static toObject(includeInstance: boolean, msg: GetScuridEdgeAgentVersionRes): GetScuridEdgeAgentVersionRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: GetScuridEdgeAgentVersionRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): GetScuridEdgeAgentVersionRes;
    static deserializeBinaryFromReader(message: GetScuridEdgeAgentVersionRes, reader: jspb.BinaryReader): GetScuridEdgeAgentVersionRes;
}

export namespace GetScuridEdgeAgentVersionRes {
    export type AsObject = {
        agentversion: string,
    }
}

export class RegisterDeviceIdentityReq extends jspb.Message { 
    getDid(): string;
    setDid(value: string): RegisterDeviceIdentityReq;
    getUnixtime(): number;
    setUnixtime(value: number): RegisterDeviceIdentityReq;
    getDevicename(): string;
    setDevicename(value: string): RegisterDeviceIdentityReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): RegisterDeviceIdentityReq.AsObject;
    static toObject(includeInstance: boolean, msg: RegisterDeviceIdentityReq): RegisterDeviceIdentityReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: RegisterDeviceIdentityReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): RegisterDeviceIdentityReq;
    static deserializeBinaryFromReader(message: RegisterDeviceIdentityReq, reader: jspb.BinaryReader): RegisterDeviceIdentityReq;
}

export namespace RegisterDeviceIdentityReq {
    export type AsObject = {
        did: string,
        unixtime: number,
        devicename: string,
    }
}

export class RegisterDeviceIdentityRes extends jspb.Message { 
    getResult(): boolean;
    setResult(value: boolean): RegisterDeviceIdentityRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): RegisterDeviceIdentityRes.AsObject;
    static toObject(includeInstance: boolean, msg: RegisterDeviceIdentityRes): RegisterDeviceIdentityRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: RegisterDeviceIdentityRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): RegisterDeviceIdentityRes;
    static deserializeBinaryFromReader(message: RegisterDeviceIdentityRes, reader: jspb.BinaryReader): RegisterDeviceIdentityRes;
}

export namespace RegisterDeviceIdentityRes {
    export type AsObject = {
        result: boolean,
    }
}

export class ArtifactHash extends jspb.Message { 
    getFilename(): string;
    setFilename(value: string): ArtifactHash;
    getFilehash(): string;
    setFilehash(value: string): ArtifactHash;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): ArtifactHash.AsObject;
    static toObject(includeInstance: boolean, msg: ArtifactHash): ArtifactHash.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: ArtifactHash, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): ArtifactHash;
    static deserializeBinaryFromReader(message: ArtifactHash, reader: jspb.BinaryReader): ArtifactHash;
}

export namespace ArtifactHash {
    export type AsObject = {
        filename: string,
        filehash: string,
    }
}

export class DownloadFilesReq extends jspb.Message { 
    getIdentity(): string;
    setIdentity(value: string): DownloadFilesReq;
    getPath(): string;
    setPath(value: string): DownloadFilesReq;
    getAutocreatedir(): boolean;
    setAutocreatedir(value: boolean): DownloadFilesReq;
    getEnablestaging(): boolean;
    setEnablestaging(value: boolean): DownloadFilesReq;
    clearArtifacthashonagentList(): void;
    getArtifacthashonagentList(): Array<ArtifactHash>;
    setArtifacthashonagentList(value: Array<ArtifactHash>): DownloadFilesReq;
    addArtifacthashonagent(value?: ArtifactHash, index?: number): ArtifactHash;
    clearArtifacthashonserverList(): void;
    getArtifacthashonserverList(): Array<ArtifactHash>;
    setArtifacthashonserverList(value: Array<ArtifactHash>): DownloadFilesReq;
    addArtifacthashonserver(value?: ArtifactHash, index?: number): ArtifactHash;

    getOffsetMap(): jspb.Map<string, number>;
    clearOffsetMap(): void;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): DownloadFilesReq.AsObject;
    static toObject(includeInstance: boolean, msg: DownloadFilesReq): DownloadFilesReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: DownloadFilesReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): DownloadFilesReq;
    static deserializeBinaryFromReader(message: DownloadFilesReq, reader: jspb.BinaryReader): DownloadFilesReq;
}

export namespace DownloadFilesReq {
    export type AsObject = {
        identity: string,
        path: string,
        autocreatedir: boolean,
        enablestaging: boolean,
        artifacthashonagentList: Array<ArtifactHash.AsObject>,
        artifacthashonserverList: Array<ArtifactHash.AsObject>,

        offsetMap: Array<[string, number]>,
    }
}

export class DownloadFilesRes extends jspb.Message { 
    getResult(): boolean;
    setResult(value: boolean): DownloadFilesRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): DownloadFilesRes.AsObject;
    static toObject(includeInstance: boolean, msg: DownloadFilesRes): DownloadFilesRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: DownloadFilesRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): DownloadFilesRes;
    static deserializeBinaryFromReader(message: DownloadFilesRes, reader: jspb.BinaryReader): DownloadFilesRes;
}

export namespace DownloadFilesRes {
    export type AsObject = {
        result: boolean,
    }
}

export class SendDeviceDataReq extends jspb.Message { 
    getIdentity(): string;
    setIdentity(value: string): SendDeviceDataReq;
    getDevicedata(): string;
    setDevicedata(value: string): SendDeviceDataReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SendDeviceDataReq.AsObject;
    static toObject(includeInstance: boolean, msg: SendDeviceDataReq): SendDeviceDataReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SendDeviceDataReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SendDeviceDataReq;
    static deserializeBinaryFromReader(message: SendDeviceDataReq, reader: jspb.BinaryReader): SendDeviceDataReq;
}

export namespace SendDeviceDataReq {
    export type AsObject = {
        identity: string,
        devicedata: string,
    }
}

export class SendDeviceDataRes extends jspb.Message { 
    getResult(): boolean;
    setResult(value: boolean): SendDeviceDataRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): SendDeviceDataRes.AsObject;
    static toObject(includeInstance: boolean, msg: SendDeviceDataRes): SendDeviceDataRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: SendDeviceDataRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): SendDeviceDataRes;
    static deserializeBinaryFromReader(message: SendDeviceDataRes, reader: jspb.BinaryReader): SendDeviceDataRes;
}

export namespace SendDeviceDataRes {
    export type AsObject = {
        result: boolean,
    }
}

export class UploadFilesReq extends jspb.Message { 

    hasInfo(): boolean;
    clearInfo(): void;
    getInfo(): FileInfo | undefined;
    setInfo(value?: FileInfo): UploadFilesReq;

    hasChunkdata(): boolean;
    clearChunkdata(): void;
    getChunkdata(): Uint8Array | string;
    getChunkdata_asU8(): Uint8Array;
    getChunkdata_asB64(): string;
    setChunkdata(value: Uint8Array | string): UploadFilesReq;

    getDataCase(): UploadFilesReq.DataCase;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): UploadFilesReq.AsObject;
    static toObject(includeInstance: boolean, msg: UploadFilesReq): UploadFilesReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: UploadFilesReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): UploadFilesReq;
    static deserializeBinaryFromReader(message: UploadFilesReq, reader: jspb.BinaryReader): UploadFilesReq;
}

export namespace UploadFilesReq {
    export type AsObject = {
        info?: FileInfo.AsObject,
        chunkdata: Uint8Array | string,
    }

    export enum DataCase {
        DATA_NOT_SET = 0,
        INFO = 1,
        CHUNKDATA = 2,
    }

}

export class FileInfo extends jspb.Message { 
    getDeviceidentity(): string;
    setDeviceidentity(value: string): FileInfo;
    getFileid(): string;
    setFileid(value: string): FileInfo;
    getFiletype(): string;
    setFiletype(value: string): FileInfo;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): FileInfo.AsObject;
    static toObject(includeInstance: boolean, msg: FileInfo): FileInfo.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: FileInfo, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): FileInfo;
    static deserializeBinaryFromReader(message: FileInfo, reader: jspb.BinaryReader): FileInfo;
}

export namespace FileInfo {
    export type AsObject = {
        deviceidentity: string,
        fileid: string,
        filetype: string,
    }
}

export class UploadFilesRes extends jspb.Message { 
    getResult(): boolean;
    setResult(value: boolean): UploadFilesRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): UploadFilesRes.AsObject;
    static toObject(includeInstance: boolean, msg: UploadFilesRes): UploadFilesRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: UploadFilesRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): UploadFilesRes;
    static deserializeBinaryFromReader(message: UploadFilesRes, reader: jspb.BinaryReader): UploadFilesRes;
}

export namespace UploadFilesRes {
    export type AsObject = {
        result: boolean,
    }
}

export class InfluxData extends jspb.Message { 

    getTagsMap(): jspb.Map<string, string>;
    clearTagsMap(): void;

    getFieldsMap(): jspb.Map<string, Value>;
    clearFieldsMap(): void;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): InfluxData.AsObject;
    static toObject(includeInstance: boolean, msg: InfluxData): InfluxData.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: InfluxData, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): InfluxData;
    static deserializeBinaryFromReader(message: InfluxData, reader: jspb.BinaryReader): InfluxData;
}

export namespace InfluxData {
    export type AsObject = {

        tagsMap: Array<[string, string]>,

        fieldsMap: Array<[string, Value.AsObject]>,
    }
}

export class Value extends jspb.Message { 

    hasIntValue(): boolean;
    clearIntValue(): void;
    getIntValue(): number;
    setIntValue(value: number): Value;

    hasDoubleValue(): boolean;
    clearDoubleValue(): void;
    getDoubleValue(): number;
    setDoubleValue(value: number): Value;

    hasStringValue(): boolean;
    clearStringValue(): void;
    getStringValue(): string;
    setStringValue(value: string): Value;

    hasBoolValue(): boolean;
    clearBoolValue(): void;
    getBoolValue(): boolean;
    setBoolValue(value: boolean): Value;

    getValueCase(): Value.ValueCase;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Value.AsObject;
    static toObject(includeInstance: boolean, msg: Value): Value.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: Value, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Value;
    static deserializeBinaryFromReader(message: Value, reader: jspb.BinaryReader): Value;
}

export namespace Value {
    export type AsObject = {
        intValue: number,
        doubleValue: number,
        stringValue: string,
        boolValue: boolean,
    }

    export enum ValueCase {
        VALUE_NOT_SET = 0,
        INT_VALUE = 1,
        DOUBLE_VALUE = 2,
        STRING_VALUE = 3,
        BOOL_VALUE = 4,
    }

}

export class CreateDeviceIdentityWithAdditionalCryptoReq extends jspb.Message { 

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): CreateDeviceIdentityWithAdditionalCryptoReq.AsObject;
    static toObject(includeInstance: boolean, msg: CreateDeviceIdentityWithAdditionalCryptoReq): CreateDeviceIdentityWithAdditionalCryptoReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: CreateDeviceIdentityWithAdditionalCryptoReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): CreateDeviceIdentityWithAdditionalCryptoReq;
    static deserializeBinaryFromReader(message: CreateDeviceIdentityWithAdditionalCryptoReq, reader: jspb.BinaryReader): CreateDeviceIdentityWithAdditionalCryptoReq;
}

export namespace CreateDeviceIdentityWithAdditionalCryptoReq {
    export type AsObject = {
    }
}

export class CreateDeviceIdentityWithAdditionalCryptoRes extends jspb.Message { 
    getDid(): string;
    setDid(value: string): CreateDeviceIdentityWithAdditionalCryptoRes;

    hasEcdsa512PubKey(): boolean;
    clearEcdsa512PubKey(): void;
    getEcdsa512PubKey(): ECDSAPubKey512 | undefined;
    setEcdsa512PubKey(value?: ECDSAPubKey512): CreateDeviceIdentityWithAdditionalCryptoRes;

    hasAes128Key(): boolean;
    clearAes128Key(): void;
    getAes128Key(): AES128Key | undefined;
    setAes128Key(value?: AES128Key): CreateDeviceIdentityWithAdditionalCryptoRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): CreateDeviceIdentityWithAdditionalCryptoRes.AsObject;
    static toObject(includeInstance: boolean, msg: CreateDeviceIdentityWithAdditionalCryptoRes): CreateDeviceIdentityWithAdditionalCryptoRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: CreateDeviceIdentityWithAdditionalCryptoRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): CreateDeviceIdentityWithAdditionalCryptoRes;
    static deserializeBinaryFromReader(message: CreateDeviceIdentityWithAdditionalCryptoRes, reader: jspb.BinaryReader): CreateDeviceIdentityWithAdditionalCryptoRes;
}

export namespace CreateDeviceIdentityWithAdditionalCryptoRes {
    export type AsObject = {
        did: string,
        ecdsa512PubKey?: ECDSAPubKey512.AsObject,
        aes128Key?: AES128Key.AsObject,
    }
}

export class ECDSAPubKey512 extends jspb.Message { 
    getPubx(): Uint8Array | string;
    getPubx_asU8(): Uint8Array;
    getPubx_asB64(): string;
    setPubx(value: Uint8Array | string): ECDSAPubKey512;
    getPuby(): Uint8Array | string;
    getPuby_asU8(): Uint8Array;
    getPuby_asB64(): string;
    setPuby(value: Uint8Array | string): ECDSAPubKey512;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): ECDSAPubKey512.AsObject;
    static toObject(includeInstance: boolean, msg: ECDSAPubKey512): ECDSAPubKey512.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: ECDSAPubKey512, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): ECDSAPubKey512;
    static deserializeBinaryFromReader(message: ECDSAPubKey512, reader: jspb.BinaryReader): ECDSAPubKey512;
}

export namespace ECDSAPubKey512 {
    export type AsObject = {
        pubx: Uint8Array | string,
        puby: Uint8Array | string,
    }
}

export class AES128Key extends jspb.Message { 
    getKeybits(): Uint8Array | string;
    getKeybits_asU8(): Uint8Array;
    getKeybits_asB64(): string;
    setKeybits(value: Uint8Array | string): AES128Key;
    getKeybitsstring(): string;
    setKeybitsstring(value: string): AES128Key;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): AES128Key.AsObject;
    static toObject(includeInstance: boolean, msg: AES128Key): AES128Key.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: AES128Key, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): AES128Key;
    static deserializeBinaryFromReader(message: AES128Key, reader: jspb.BinaryReader): AES128Key;
}

export namespace AES128Key {
    export type AsObject = {
        keybits: Uint8Array | string,
        keybitsstring: string,
    }
}

export class IsAuthorisedReq extends jspb.Message { 
    getSessionid(): string;
    setSessionid(value: string): IsAuthorisedReq;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): IsAuthorisedReq.AsObject;
    static toObject(includeInstance: boolean, msg: IsAuthorisedReq): IsAuthorisedReq.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: IsAuthorisedReq, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): IsAuthorisedReq;
    static deserializeBinaryFromReader(message: IsAuthorisedReq, reader: jspb.BinaryReader): IsAuthorisedReq;
}

export namespace IsAuthorisedReq {
    export type AsObject = {
        sessionid: string,
    }
}

export class IsAuthorisedRes extends jspb.Message { 
    getStatus(): boolean;
    setStatus(value: boolean): IsAuthorisedRes;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): IsAuthorisedRes.AsObject;
    static toObject(includeInstance: boolean, msg: IsAuthorisedRes): IsAuthorisedRes.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: IsAuthorisedRes, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): IsAuthorisedRes;
    static deserializeBinaryFromReader(message: IsAuthorisedRes, reader: jspb.BinaryReader): IsAuthorisedRes;
}

export namespace IsAuthorisedRes {
    export type AsObject = {
        status: boolean,
    }
}
