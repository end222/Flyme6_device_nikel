.class public Lcom/nxp/nfc/gsma/internal/NxpHandset;
.super Ljava/lang/Object;
.source "NxpHandset.java"


# static fields
.field private static final BATTERY_LOW_MODE:I = 0x90

.field private static final BATTERY_POWER_OFF_MODE:I = 0x91

.field private static final FELICA:I = 0x20

.field private static final HCI_SWP:I = 0x0

.field private static final MIFARE_CLASSIC:I = 0x21

.field private static final MIFARE_DESFIRE:I = 0x22

.field private static final MULTIPLE_ACTIVE_CEE:I = 0x1

.field private static final NFC_FORUM_TYPE3:I = 0x23


# instance fields
.field private final GSMA_NFCHST:I

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "NxpHandset"

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 56
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 57
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 62
    const/16 v0, 0x1770

    iput v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->GSMA_NFCHST:I

    .line 65
    invoke-direct {p0}, Lcom/nxp/nfc/gsma/internal/NxpHandset;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    invoke-virtual {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 64
    :cond_2
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 6

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v3, "android.app.ActivityThread"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 80
    const-string/jumbo v4, "currentApplication"

    .line 79
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 80
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 79
    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 81
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "android.app.AppGlobals"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 84
    const-string/jumbo v4, "getInitialApplication"

    .line 83
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 84
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 83
    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 85
    .end local v0    # "context":Landroid/content/Context;
    :catch_1
    move-exception v2

    .line 86
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to get application instance"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public enableMultiEvt_transactionReception()V
    .locals 6

    .prologue
    .line 136
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 138
    .local v1, "isEnabled":Z
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    const-string/jumbo v4, "com.nxp.uicc.ID"

    invoke-interface {v3, v2, v4}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->enableMultiEvt_NxptransactionReception(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    .end local v1    # "isEnabled":Z
    :goto_0
    if-nez v1, :cond_0

    .line 146
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Application is not allowed to use this API"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    .restart local v1    # "isEnabled":Z
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpHandset;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception:commitOffHostService failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isEnabled":Z
    :cond_0
    return-void
.end method

.method public getNxpProperty(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "result":Z
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0x21

    if-eq p1, v1, :cond_0

    .line 109
    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    const/16 v1, 0x23

    if-eq p1, v1, :cond_0

    const/16 v1, 0x90

    if-eq p1, v1, :cond_0

    .line 110
    const/16 v1, 0x91

    if-eq p1, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Feature is inappropriate argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 122
    :sswitch_0
    const/4 v0, 0x1

    .line 123
    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x90 -> :sswitch_0
        0x91 -> :sswitch_0
    .end sparse-switch
.end method

.method public getNxpVersion()I
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x1770

    return v0
.end method