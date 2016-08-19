// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: CreateBattleRobot.proto

package com.bw.application.message;

public final class CreateBattleRobot {
  private CreateBattleRobot() {}
  public static void registerAllExtensions(
      com.google.protobuf.ExtensionRegistry registry) {
  }
  public interface CreateBattleRobotRequestOrBuilder
      extends com.google.protobuf.MessageOrBuilder {
    
    // required string mailAddress = 1;
    boolean hasMailAddress();
    String getMailAddress();
    
    // required int32 pvp_grade = 2;
    boolean hasPvpGrade();
    int getPvpGrade();
  }
  public static final class CreateBattleRobotRequest extends
      com.google.protobuf.GeneratedMessage
      implements CreateBattleRobotRequestOrBuilder {
    // Use CreateBattleRobotRequest.newBuilder() to construct.
    private CreateBattleRobotRequest(Builder builder) {
      super(builder);
    }
    private CreateBattleRobotRequest(boolean noInit) {}
    
    private static final CreateBattleRobotRequest defaultInstance;
    public static CreateBattleRobotRequest getDefaultInstance() {
      return defaultInstance;
    }
    
    public CreateBattleRobotRequest getDefaultInstanceForType() {
      return defaultInstance;
    }
    
    public static final com.google.protobuf.Descriptors.Descriptor
        getDescriptor() {
      return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotRequest_descriptor;
    }
    
    protected com.google.protobuf.GeneratedMessage.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotRequest_fieldAccessorTable;
    }
    
    private int bitField0_;
    // required string mailAddress = 1;
    public static final int MAILADDRESS_FIELD_NUMBER = 1;
    private java.lang.Object mailAddress_;
    public boolean hasMailAddress() {
      return ((bitField0_ & 0x00000001) == 0x00000001);
    }
    public String getMailAddress() {
      java.lang.Object ref = mailAddress_;
      if (ref instanceof String) {
        return (String) ref;
      } else {
        com.google.protobuf.ByteString bs = 
            (com.google.protobuf.ByteString) ref;
        String s = bs.toStringUtf8();
        if (com.google.protobuf.Internal.isValidUtf8(bs)) {
          mailAddress_ = s;
        }
        return s;
      }
    }
    private com.google.protobuf.ByteString getMailAddressBytes() {
      java.lang.Object ref = mailAddress_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b = 
            com.google.protobuf.ByteString.copyFromUtf8((String) ref);
        mailAddress_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    
    // required int32 pvp_grade = 2;
    public static final int PVP_GRADE_FIELD_NUMBER = 2;
    private int pvpGrade_;
    public boolean hasPvpGrade() {
      return ((bitField0_ & 0x00000002) == 0x00000002);
    }
    public int getPvpGrade() {
      return pvpGrade_;
    }
    
    private void initFields() {
      mailAddress_ = "";
      pvpGrade_ = 0;
    }
    private byte memoizedIsInitialized = -1;
    public final boolean isInitialized() {
      byte isInitialized = memoizedIsInitialized;
      if (isInitialized != -1) return isInitialized == 1;
      
      if (!hasMailAddress()) {
        memoizedIsInitialized = 0;
        return false;
      }
      if (!hasPvpGrade()) {
        memoizedIsInitialized = 0;
        return false;
      }
      memoizedIsInitialized = 1;
      return true;
    }
    
    public void writeTo(com.google.protobuf.CodedOutputStream output)
                        throws java.io.IOException {
      getSerializedSize();
      if (((bitField0_ & 0x00000001) == 0x00000001)) {
        output.writeBytes(1, getMailAddressBytes());
      }
      if (((bitField0_ & 0x00000002) == 0x00000002)) {
        output.writeInt32(2, pvpGrade_);
      }
      getUnknownFields().writeTo(output);
    }
    
    private int memoizedSerializedSize = -1;
    public int getSerializedSize() {
      int size = memoizedSerializedSize;
      if (size != -1) return size;
    
      size = 0;
      if (((bitField0_ & 0x00000001) == 0x00000001)) {
        size += com.google.protobuf.CodedOutputStream
          .computeBytesSize(1, getMailAddressBytes());
      }
      if (((bitField0_ & 0x00000002) == 0x00000002)) {
        size += com.google.protobuf.CodedOutputStream
          .computeInt32Size(2, pvpGrade_);
      }
      size += getUnknownFields().getSerializedSize();
      memoizedSerializedSize = size;
      return size;
    }
    
    private static final long serialVersionUID = 0L;
    @java.lang.Override
    protected java.lang.Object writeReplace()
        throws java.io.ObjectStreamException {
      return super.writeReplace();
    }
    
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(
        com.google.protobuf.ByteString data)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(
        com.google.protobuf.ByteString data,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data, extensionRegistry)
               .buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(byte[] data)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(
        byte[] data,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data, extensionRegistry)
               .buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(java.io.InputStream input)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(
        java.io.InputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input, extensionRegistry)
               .buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseDelimitedFrom(java.io.InputStream input)
        throws java.io.IOException {
      Builder builder = newBuilder();
      if (builder.mergeDelimitedFrom(input)) {
        return builder.buildParsed();
      } else {
        return null;
      }
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseDelimitedFrom(
        java.io.InputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      Builder builder = newBuilder();
      if (builder.mergeDelimitedFrom(input, extensionRegistry)) {
        return builder.buildParsed();
      } else {
        return null;
      }
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(
        com.google.protobuf.CodedInputStream input)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest parseFrom(
        com.google.protobuf.CodedInputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input, extensionRegistry)
               .buildParsed();
    }
    
    public static Builder newBuilder() { return Builder.create(); }
    public Builder newBuilderForType() { return newBuilder(); }
    public static Builder newBuilder(com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest prototype) {
      return newBuilder().mergeFrom(prototype);
    }
    public Builder toBuilder() { return newBuilder(this); }
    
    @java.lang.Override
    protected Builder newBuilderForType(
        com.google.protobuf.GeneratedMessage.BuilderParent parent) {
      Builder builder = new Builder(parent);
      return builder;
    }
    public static final class Builder extends
        com.google.protobuf.GeneratedMessage.Builder<Builder>
       implements com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequestOrBuilder {
      public static final com.google.protobuf.Descriptors.Descriptor
          getDescriptor() {
        return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotRequest_descriptor;
      }
      
      protected com.google.protobuf.GeneratedMessage.FieldAccessorTable
          internalGetFieldAccessorTable() {
        return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotRequest_fieldAccessorTable;
      }
      
      // Construct using com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest.newBuilder()
      private Builder() {
        maybeForceBuilderInitialization();
      }
      
      private Builder(BuilderParent parent) {
        super(parent);
        maybeForceBuilderInitialization();
      }
      private void maybeForceBuilderInitialization() {
        if (com.google.protobuf.GeneratedMessage.alwaysUseFieldBuilders) {
        }
      }
      private static Builder create() {
        return new Builder();
      }
      
      public Builder clear() {
        super.clear();
        mailAddress_ = "";
        bitField0_ = (bitField0_ & ~0x00000001);
        pvpGrade_ = 0;
        bitField0_ = (bitField0_ & ~0x00000002);
        return this;
      }
      
      public Builder clone() {
        return create().mergeFrom(buildPartial());
      }
      
      public com.google.protobuf.Descriptors.Descriptor
          getDescriptorForType() {
        return com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest.getDescriptor();
      }
      
      public com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest getDefaultInstanceForType() {
        return com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest.getDefaultInstance();
      }
      
      public com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest build() {
        com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest result = buildPartial();
        if (!result.isInitialized()) {
          throw newUninitializedMessageException(result);
        }
        return result;
      }
      
      private com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest buildParsed()
          throws com.google.protobuf.InvalidProtocolBufferException {
        com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest result = buildPartial();
        if (!result.isInitialized()) {
          throw newUninitializedMessageException(
            result).asInvalidProtocolBufferException();
        }
        return result;
      }
      
      public com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest buildPartial() {
        com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest result = new com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest(this);
        int from_bitField0_ = bitField0_;
        int to_bitField0_ = 0;
        if (((from_bitField0_ & 0x00000001) == 0x00000001)) {
          to_bitField0_ |= 0x00000001;
        }
        result.mailAddress_ = mailAddress_;
        if (((from_bitField0_ & 0x00000002) == 0x00000002)) {
          to_bitField0_ |= 0x00000002;
        }
        result.pvpGrade_ = pvpGrade_;
        result.bitField0_ = to_bitField0_;
        onBuilt();
        return result;
      }
      
      public Builder mergeFrom(com.google.protobuf.Message other) {
        if (other instanceof com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest) {
          return mergeFrom((com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest)other);
        } else {
          super.mergeFrom(other);
          return this;
        }
      }
      
      public Builder mergeFrom(com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest other) {
        if (other == com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest.getDefaultInstance()) return this;
        if (other.hasMailAddress()) {
          setMailAddress(other.getMailAddress());
        }
        if (other.hasPvpGrade()) {
          setPvpGrade(other.getPvpGrade());
        }
        this.mergeUnknownFields(other.getUnknownFields());
        return this;
      }
      
      public final boolean isInitialized() {
        if (!hasMailAddress()) {
          
          return false;
        }
        if (!hasPvpGrade()) {
          
          return false;
        }
        return true;
      }
      
      public Builder mergeFrom(
          com.google.protobuf.CodedInputStream input,
          com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
        com.google.protobuf.UnknownFieldSet.Builder unknownFields =
          com.google.protobuf.UnknownFieldSet.newBuilder(
            this.getUnknownFields());
        while (true) {
          int tag = input.readTag();
          switch (tag) {
            case 0:
              this.setUnknownFields(unknownFields.build());
              onChanged();
              return this;
            default: {
              if (!parseUnknownField(input, unknownFields,
                                     extensionRegistry, tag)) {
                this.setUnknownFields(unknownFields.build());
                onChanged();
                return this;
              }
              break;
            }
            case 10: {
              bitField0_ |= 0x00000001;
              mailAddress_ = input.readBytes();
              break;
            }
            case 16: {
              bitField0_ |= 0x00000002;
              pvpGrade_ = input.readInt32();
              break;
            }
          }
        }
      }
      
      private int bitField0_;
      
      // required string mailAddress = 1;
      private java.lang.Object mailAddress_ = "";
      public boolean hasMailAddress() {
        return ((bitField0_ & 0x00000001) == 0x00000001);
      }
      public String getMailAddress() {
        java.lang.Object ref = mailAddress_;
        if (!(ref instanceof String)) {
          String s = ((com.google.protobuf.ByteString) ref).toStringUtf8();
          mailAddress_ = s;
          return s;
        } else {
          return (String) ref;
        }
      }
      public Builder setMailAddress(String value) {
        if (value == null) {
    throw new NullPointerException();
  }
  bitField0_ |= 0x00000001;
        mailAddress_ = value;
        onChanged();
        return this;
      }
      public Builder clearMailAddress() {
        bitField0_ = (bitField0_ & ~0x00000001);
        mailAddress_ = getDefaultInstance().getMailAddress();
        onChanged();
        return this;
      }
      void setMailAddress(com.google.protobuf.ByteString value) {
        bitField0_ |= 0x00000001;
        mailAddress_ = value;
        onChanged();
      }
      
      // required int32 pvp_grade = 2;
      private int pvpGrade_ ;
      public boolean hasPvpGrade() {
        return ((bitField0_ & 0x00000002) == 0x00000002);
      }
      public int getPvpGrade() {
        return pvpGrade_;
      }
      public Builder setPvpGrade(int value) {
        bitField0_ |= 0x00000002;
        pvpGrade_ = value;
        onChanged();
        return this;
      }
      public Builder clearPvpGrade() {
        bitField0_ = (bitField0_ & ~0x00000002);
        pvpGrade_ = 0;
        onChanged();
        return this;
      }
      
      // @@protoc_insertion_point(builder_scope:message.CreateBattleRobotRequest)
    }
    
    static {
      defaultInstance = new CreateBattleRobotRequest(true);
      defaultInstance.initFields();
    }
    
    // @@protoc_insertion_point(class_scope:message.CreateBattleRobotRequest)
  }
  
  public interface CreateBattleRobotResponseOrBuilder
      extends com.google.protobuf.MessageOrBuilder {
    
    // optional sint32 result = 1 [default = 0];
    boolean hasResult();
    int getResult();
    
    // optional string info = 2;
    boolean hasInfo();
    String getInfo();
  }
  public static final class CreateBattleRobotResponse extends
      com.google.protobuf.GeneratedMessage
      implements CreateBattleRobotResponseOrBuilder {
    // Use CreateBattleRobotResponse.newBuilder() to construct.
    private CreateBattleRobotResponse(Builder builder) {
      super(builder);
    }
    private CreateBattleRobotResponse(boolean noInit) {}
    
    private static final CreateBattleRobotResponse defaultInstance;
    public static CreateBattleRobotResponse getDefaultInstance() {
      return defaultInstance;
    }
    
    public CreateBattleRobotResponse getDefaultInstanceForType() {
      return defaultInstance;
    }
    
    public static final com.google.protobuf.Descriptors.Descriptor
        getDescriptor() {
      return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotResponse_descriptor;
    }
    
    protected com.google.protobuf.GeneratedMessage.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotResponse_fieldAccessorTable;
    }
    
    private int bitField0_;
    // optional sint32 result = 1 [default = 0];
    public static final int RESULT_FIELD_NUMBER = 1;
    private int result_;
    public boolean hasResult() {
      return ((bitField0_ & 0x00000001) == 0x00000001);
    }
    public int getResult() {
      return result_;
    }
    
    // optional string info = 2;
    public static final int INFO_FIELD_NUMBER = 2;
    private java.lang.Object info_;
    public boolean hasInfo() {
      return ((bitField0_ & 0x00000002) == 0x00000002);
    }
    public String getInfo() {
      java.lang.Object ref = info_;
      if (ref instanceof String) {
        return (String) ref;
      } else {
        com.google.protobuf.ByteString bs = 
            (com.google.protobuf.ByteString) ref;
        String s = bs.toStringUtf8();
        if (com.google.protobuf.Internal.isValidUtf8(bs)) {
          info_ = s;
        }
        return s;
      }
    }
    private com.google.protobuf.ByteString getInfoBytes() {
      java.lang.Object ref = info_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b = 
            com.google.protobuf.ByteString.copyFromUtf8((String) ref);
        info_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    
    private void initFields() {
      result_ = 0;
      info_ = "";
    }
    private byte memoizedIsInitialized = -1;
    public final boolean isInitialized() {
      byte isInitialized = memoizedIsInitialized;
      if (isInitialized != -1) return isInitialized == 1;
      
      memoizedIsInitialized = 1;
      return true;
    }
    
    public void writeTo(com.google.protobuf.CodedOutputStream output)
                        throws java.io.IOException {
      getSerializedSize();
      if (((bitField0_ & 0x00000001) == 0x00000001)) {
        output.writeSInt32(1, result_);
      }
      if (((bitField0_ & 0x00000002) == 0x00000002)) {
        output.writeBytes(2, getInfoBytes());
      }
      getUnknownFields().writeTo(output);
    }
    
    private int memoizedSerializedSize = -1;
    public int getSerializedSize() {
      int size = memoizedSerializedSize;
      if (size != -1) return size;
    
      size = 0;
      if (((bitField0_ & 0x00000001) == 0x00000001)) {
        size += com.google.protobuf.CodedOutputStream
          .computeSInt32Size(1, result_);
      }
      if (((bitField0_ & 0x00000002) == 0x00000002)) {
        size += com.google.protobuf.CodedOutputStream
          .computeBytesSize(2, getInfoBytes());
      }
      size += getUnknownFields().getSerializedSize();
      memoizedSerializedSize = size;
      return size;
    }
    
    private static final long serialVersionUID = 0L;
    @java.lang.Override
    protected java.lang.Object writeReplace()
        throws java.io.ObjectStreamException {
      return super.writeReplace();
    }
    
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(
        com.google.protobuf.ByteString data)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(
        com.google.protobuf.ByteString data,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data, extensionRegistry)
               .buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(byte[] data)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(
        byte[] data,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws com.google.protobuf.InvalidProtocolBufferException {
      return newBuilder().mergeFrom(data, extensionRegistry)
               .buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(java.io.InputStream input)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(
        java.io.InputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input, extensionRegistry)
               .buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseDelimitedFrom(java.io.InputStream input)
        throws java.io.IOException {
      Builder builder = newBuilder();
      if (builder.mergeDelimitedFrom(input)) {
        return builder.buildParsed();
      } else {
        return null;
      }
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseDelimitedFrom(
        java.io.InputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      Builder builder = newBuilder();
      if (builder.mergeDelimitedFrom(input, extensionRegistry)) {
        return builder.buildParsed();
      } else {
        return null;
      }
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(
        com.google.protobuf.CodedInputStream input)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input).buildParsed();
    }
    public static com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse parseFrom(
        com.google.protobuf.CodedInputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      return newBuilder().mergeFrom(input, extensionRegistry)
               .buildParsed();
    }
    
    public static Builder newBuilder() { return Builder.create(); }
    public Builder newBuilderForType() { return newBuilder(); }
    public static Builder newBuilder(com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse prototype) {
      return newBuilder().mergeFrom(prototype);
    }
    public Builder toBuilder() { return newBuilder(this); }
    
    @java.lang.Override
    protected Builder newBuilderForType(
        com.google.protobuf.GeneratedMessage.BuilderParent parent) {
      Builder builder = new Builder(parent);
      return builder;
    }
    public static final class Builder extends
        com.google.protobuf.GeneratedMessage.Builder<Builder>
       implements com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponseOrBuilder {
      public static final com.google.protobuf.Descriptors.Descriptor
          getDescriptor() {
        return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotResponse_descriptor;
      }
      
      protected com.google.protobuf.GeneratedMessage.FieldAccessorTable
          internalGetFieldAccessorTable() {
        return com.bw.application.message.CreateBattleRobot.internal_static_message_CreateBattleRobotResponse_fieldAccessorTable;
      }
      
      // Construct using com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse.newBuilder()
      private Builder() {
        maybeForceBuilderInitialization();
      }
      
      private Builder(BuilderParent parent) {
        super(parent);
        maybeForceBuilderInitialization();
      }
      private void maybeForceBuilderInitialization() {
        if (com.google.protobuf.GeneratedMessage.alwaysUseFieldBuilders) {
        }
      }
      private static Builder create() {
        return new Builder();
      }
      
      public Builder clear() {
        super.clear();
        result_ = 0;
        bitField0_ = (bitField0_ & ~0x00000001);
        info_ = "";
        bitField0_ = (bitField0_ & ~0x00000002);
        return this;
      }
      
      public Builder clone() {
        return create().mergeFrom(buildPartial());
      }
      
      public com.google.protobuf.Descriptors.Descriptor
          getDescriptorForType() {
        return com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse.getDescriptor();
      }
      
      public com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse getDefaultInstanceForType() {
        return com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse.getDefaultInstance();
      }
      
      public com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse build() {
        com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse result = buildPartial();
        if (!result.isInitialized()) {
          throw newUninitializedMessageException(result);
        }
        return result;
      }
      
      private com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse buildParsed()
          throws com.google.protobuf.InvalidProtocolBufferException {
        com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse result = buildPartial();
        if (!result.isInitialized()) {
          throw newUninitializedMessageException(
            result).asInvalidProtocolBufferException();
        }
        return result;
      }
      
      public com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse buildPartial() {
        com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse result = new com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse(this);
        int from_bitField0_ = bitField0_;
        int to_bitField0_ = 0;
        if (((from_bitField0_ & 0x00000001) == 0x00000001)) {
          to_bitField0_ |= 0x00000001;
        }
        result.result_ = result_;
        if (((from_bitField0_ & 0x00000002) == 0x00000002)) {
          to_bitField0_ |= 0x00000002;
        }
        result.info_ = info_;
        result.bitField0_ = to_bitField0_;
        onBuilt();
        return result;
      }
      
      public Builder mergeFrom(com.google.protobuf.Message other) {
        if (other instanceof com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse) {
          return mergeFrom((com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse)other);
        } else {
          super.mergeFrom(other);
          return this;
        }
      }
      
      public Builder mergeFrom(com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse other) {
        if (other == com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse.getDefaultInstance()) return this;
        if (other.hasResult()) {
          setResult(other.getResult());
        }
        if (other.hasInfo()) {
          setInfo(other.getInfo());
        }
        this.mergeUnknownFields(other.getUnknownFields());
        return this;
      }
      
      public final boolean isInitialized() {
        return true;
      }
      
      public Builder mergeFrom(
          com.google.protobuf.CodedInputStream input,
          com.google.protobuf.ExtensionRegistryLite extensionRegistry)
          throws java.io.IOException {
        com.google.protobuf.UnknownFieldSet.Builder unknownFields =
          com.google.protobuf.UnknownFieldSet.newBuilder(
            this.getUnknownFields());
        while (true) {
          int tag = input.readTag();
          switch (tag) {
            case 0:
              this.setUnknownFields(unknownFields.build());
              onChanged();
              return this;
            default: {
              if (!parseUnknownField(input, unknownFields,
                                     extensionRegistry, tag)) {
                this.setUnknownFields(unknownFields.build());
                onChanged();
                return this;
              }
              break;
            }
            case 8: {
              bitField0_ |= 0x00000001;
              result_ = input.readSInt32();
              break;
            }
            case 18: {
              bitField0_ |= 0x00000002;
              info_ = input.readBytes();
              break;
            }
          }
        }
      }
      
      private int bitField0_;
      
      // optional sint32 result = 1 [default = 0];
      private int result_ ;
      public boolean hasResult() {
        return ((bitField0_ & 0x00000001) == 0x00000001);
      }
      public int getResult() {
        return result_;
      }
      public Builder setResult(int value) {
        bitField0_ |= 0x00000001;
        result_ = value;
        onChanged();
        return this;
      }
      public Builder clearResult() {
        bitField0_ = (bitField0_ & ~0x00000001);
        result_ = 0;
        onChanged();
        return this;
      }
      
      // optional string info = 2;
      private java.lang.Object info_ = "";
      public boolean hasInfo() {
        return ((bitField0_ & 0x00000002) == 0x00000002);
      }
      public String getInfo() {
        java.lang.Object ref = info_;
        if (!(ref instanceof String)) {
          String s = ((com.google.protobuf.ByteString) ref).toStringUtf8();
          info_ = s;
          return s;
        } else {
          return (String) ref;
        }
      }
      public Builder setInfo(String value) {
        if (value == null) {
    throw new NullPointerException();
  }
  bitField0_ |= 0x00000002;
        info_ = value;
        onChanged();
        return this;
      }
      public Builder clearInfo() {
        bitField0_ = (bitField0_ & ~0x00000002);
        info_ = getDefaultInstance().getInfo();
        onChanged();
        return this;
      }
      void setInfo(com.google.protobuf.ByteString value) {
        bitField0_ |= 0x00000002;
        info_ = value;
        onChanged();
      }
      
      // @@protoc_insertion_point(builder_scope:message.CreateBattleRobotResponse)
    }
    
    static {
      defaultInstance = new CreateBattleRobotResponse(true);
      defaultInstance.initFields();
    }
    
    // @@protoc_insertion_point(class_scope:message.CreateBattleRobotResponse)
  }
  
  private static com.google.protobuf.Descriptors.Descriptor
    internal_static_message_CreateBattleRobotRequest_descriptor;
  private static
    com.google.protobuf.GeneratedMessage.FieldAccessorTable
      internal_static_message_CreateBattleRobotRequest_fieldAccessorTable;
  private static com.google.protobuf.Descriptors.Descriptor
    internal_static_message_CreateBattleRobotResponse_descriptor;
  private static
    com.google.protobuf.GeneratedMessage.FieldAccessorTable
      internal_static_message_CreateBattleRobotResponse_fieldAccessorTable;
  
  public static com.google.protobuf.Descriptors.FileDescriptor
      getDescriptor() {
    return descriptor;
  }
  private static com.google.protobuf.Descriptors.FileDescriptor
      descriptor;
  static {
    java.lang.String[] descriptorData = {
      "\n\027CreateBattleRobot.proto\022\007message\"B\n\030Cr" +
      "eateBattleRobotRequest\022\023\n\013mailAddress\030\001 " +
      "\002(\t\022\021\n\tpvp_grade\030\002 \002(\005\"<\n\031CreateBattleRo" +
      "botResponse\022\021\n\006result\030\001 \001(\021:\0010\022\014\n\004info\030\002" +
      " \001(\tB/\n\032com.bw.application.messageB\021Crea" +
      "teBattleRobot"
    };
    com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner assigner =
      new com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner() {
        public com.google.protobuf.ExtensionRegistry assignDescriptors(
            com.google.protobuf.Descriptors.FileDescriptor root) {
          descriptor = root;
          internal_static_message_CreateBattleRobotRequest_descriptor =
            getDescriptor().getMessageTypes().get(0);
          internal_static_message_CreateBattleRobotRequest_fieldAccessorTable = new
            com.google.protobuf.GeneratedMessage.FieldAccessorTable(
              internal_static_message_CreateBattleRobotRequest_descriptor,
              new java.lang.String[] { "MailAddress", "PvpGrade", },
              com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest.class,
              com.bw.application.message.CreateBattleRobot.CreateBattleRobotRequest.Builder.class);
          internal_static_message_CreateBattleRobotResponse_descriptor =
            getDescriptor().getMessageTypes().get(1);
          internal_static_message_CreateBattleRobotResponse_fieldAccessorTable = new
            com.google.protobuf.GeneratedMessage.FieldAccessorTable(
              internal_static_message_CreateBattleRobotResponse_descriptor,
              new java.lang.String[] { "Result", "Info", },
              com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse.class,
              com.bw.application.message.CreateBattleRobot.CreateBattleRobotResponse.Builder.class);
          return null;
        }
      };
    com.google.protobuf.Descriptors.FileDescriptor
      .internalBuildGeneratedFileFrom(descriptorData,
        new com.google.protobuf.Descriptors.FileDescriptor[] {
        }, assigner);
  }
  
  // @@protoc_insertion_point(outer_class_scope)
}
