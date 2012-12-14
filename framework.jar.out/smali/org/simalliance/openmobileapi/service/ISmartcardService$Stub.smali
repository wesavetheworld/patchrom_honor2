.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;
.super Landroid/os/Binder;
.source "ISmartcardService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardService"

.field static final TRANSACTION_closeChannel:I = 0x1

.field static final TRANSACTION_getAtr:I = 0x4

.field static final TRANSACTION_getReaders:I = 0x2

.field static final TRANSACTION_getSelectResponse:I = 0x9

.field static final TRANSACTION_isCardPresent:I = 0x3

.field static final TRANSACTION_openBasicChannel:I = 0x5

.field static final TRANSACTION_openBasicChannelAid:I = 0x6

.field static final TRANSACTION_openLogicalChannel:I = 0x7

.field static final TRANSACTION_transmit:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, _arg0:J
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .local v2, _arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->closeChannel(JLorg/simalliance/openmobileapi/service/SmartcardError;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :sswitch_2
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .local v0, _arg0:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;

    move-result-object v5

    .local v5, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5           #_result:[Ljava/lang/String;
    :sswitch_3
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .restart local v2       #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->isCardPresent(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v5

    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    move v7, v8

    :goto_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v2, :cond_3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    move v7, v9

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5           #_result:Z
    :sswitch_4
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .restart local v2       #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getAtr(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v5

    .local v5, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz v2, :cond_4

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5           #_result:[B
    :sswitch_5
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v2

    .local v2, _arg1:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .local v3, _arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v2, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->openBasicChannel(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J

    move-result-wide v5

    .local v5, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v3, :cond_5

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5           #_result:J
    :sswitch_6
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v3

    .local v3, _arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v4, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .local v4, _arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->openBasicChannelAid(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J

    move-result-wide v5

    .restart local v5       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v4, :cond_6

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v4           #_arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5           #_result:J
    :sswitch_7
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    move-result-object v3

    .restart local v3       #_arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    new-instance v4, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v4}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .restart local v4       #_arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->openLogicalChannel(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J

    move-result-wide v5

    .restart local v5       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    if-eqz v4, :cond_7

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .end local v4           #_arg3:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5           #_result:J
    :sswitch_8
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .restart local v2       #_arg1:[B
    new-instance v3, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v3}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .local v3, _arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->transmit(J[BLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v5

    .local v5, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz v3, :cond_8

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:J
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v5           #_result:[B
    :sswitch_9
    const-string v7, "org.simalliance.openmobileapi.service.ISmartcardService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .restart local v0       #_arg0:J
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .local v2, _arg1:Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v0, v1, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->getSelectResponse(JLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v5

    .restart local v5       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    if-eqz v2, :cond_9

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v8}, Lorg/simalliance/openmobileapi/service/SmartcardError;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
