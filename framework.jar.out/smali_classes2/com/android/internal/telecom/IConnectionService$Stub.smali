.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x4

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_answer:I = 0x6

.field static final TRANSACTION_answerVideo:I = 0x5

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_createConference:I = 0x16

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_explicitCallTransfer:I = 0x13

.field static final TRANSACTION_hangupAll:I = 0x12

.field static final TRANSACTION_hold:I = 0x9

.field static final TRANSACTION_inviteConferenceParticipants:I = 0x15

.field static final TRANSACTION_mergeConference:I = 0x10

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xb

.field static final TRANSACTION_onPostDialContinue:I = 0x14

.field static final TRANSACTION_playDtmfTone:I = 0xc

.field static final TRANSACTION_reject:I = 0x7

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_splitFromConference:I = 0xf

.field static final TRANSACTION_stopDtmfTone:I = 0xd

.field static final TRANSACTION_swapConference:I = 0x11

.field static final TRANSACTION_unhold:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IConnectionService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 282
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 49
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x1

    return v2

    .line 54
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v14

    .line 57
    .local v14, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 58
    const/4 v2, 0x1

    return v2

    .line 62
    .end local v14    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v14

    .line 65
    .restart local v14    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 66
    const/4 v2, 0x1

    return v2

    .line 70
    .end local v14    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 79
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object v2, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 88
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x1

    .line 90
    .local v6, "_arg3":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    .local v7, "_arg4":Z
    :goto_3
    move-object/from16 v2, p0

    .line 91
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 92
    const/4 v2, 0x1

    return v2

    .line 76
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Z
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_0

    .line 85
    .end local v3    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .local v5, "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_1

    .line 88
    .end local v5    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Z
    goto :goto_2

    .line 90
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Z
    goto :goto_3

    .line 96
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Z
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 99
    .local v15, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;)V

    .line 100
    const/4 v2, 0x1

    return v2

    .line 104
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 108
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 109
    .local v17, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;I)V

    .line 110
    const/4 v2, 0x1

    return v2

    .line 114
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 117
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;)V

    .line 118
    const/4 v2, 0x1

    return v2

    .line 122
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 125
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x1

    return v2

    .line 130
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 133
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x1

    return v2

    .line 138
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 141
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;)V

    .line 142
    const/4 v2, 0x1

    return v2

    .line 146
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 149
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x1

    return v2

    .line 154
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 158
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    sget-object v2, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telecom/CallAudioState;

    .line 164
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    .line 165
    const/4 v2, 0x1

    return v2

    .line 162
    :cond_4
    const/16 v18, 0x0

    .local v18, "_arg1":Landroid/telecom/CallAudioState;
    goto :goto_4

    .line 169
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Landroid/telecom/CallAudioState;
    :sswitch_c
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 173
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v0, v2

    move/from16 v16, v0

    .line 174
    .local v16, "_arg1":C
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;C)V

    .line 175
    const/4 v2, 0x1

    return v2

    .line 179
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":C
    :sswitch_d
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 182
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;)V

    .line 183
    const/4 v2, 0x1

    return v2

    .line 187
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 191
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v2, 0x1

    return v2

    .line 197
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 200
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x1

    return v2

    .line 205
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 208
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x1

    return v2

    .line 213
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 216
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;)V

    .line 217
    const/4 v2, 0x1

    return v2

    .line 221
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 224
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->hangupAll(Ljava/lang/String;)V

    .line 225
    const/4 v2, 0x1

    return v2

    .line 229
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 232
    .restart local v15    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telecom/IConnectionService$Stub;->explicitCallTransfer(Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x1

    return v2

    .line 237
    .end local v15    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 241
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v20, 0x1

    .line 242
    .local v20, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;Z)V

    .line 243
    const/4 v2, 0x1

    return v2

    .line 241
    .end local v20    # "_arg1":Z
    :cond_5
    const/16 v20, 0x0

    .restart local v20    # "_arg1":Z
    goto :goto_5

    .line 247
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Z
    :sswitch_15
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 251
    .restart local v15    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 252
    .local v19, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telecom/IConnectionService$Stub;->inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 253
    const/4 v2, 0x1

    return v2

    .line 257
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_16
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 266
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 269
    sget-object v2, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/ConnectionRequest;

    .line 275
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 277
    .local v12, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v7, 0x1

    .restart local v7    # "_arg4":Z
    :goto_8
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    .line 278
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V

    .line 279
    const/4 v2, 0x1

    return v2

    .line 263
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg4":Z
    .end local v12    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_6

    .line 272
    .end local v3    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_7

    .line 277
    .end local v5    # "_arg2":Landroid/telecom/ConnectionRequest;
    .restart local v12    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Z
    goto :goto_8

    .line 45
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
