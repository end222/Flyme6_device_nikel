.class public Lcom/mediatek/bluetooth/BluetoothFtp$Server;
.super Lcom/mediatek/bluetooth/BluetoothFtp$Remote;
.source "BluetoothFtp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothFtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Server"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const-string/jumbo v0, "BluetoothFtp.Server"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.ftp.action.BIND_SERVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothFtp$Server;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    .line 254
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string/jumbo v0, "Could not bind to Bluetooth FTP Service"

    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/BluetoothFtp$Server;->printErr(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->close()V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected convertState(I)I
    .locals 1
    .param p1, "serverState"    # I

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 273
    const/4 v0, 0x2

    return v0

    .line 267
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 270
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BluetoothFtp$Server;->disconnectService()V

    .line 280
    :try_start_0
    invoke-super {p0}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Throwable caught in finalize(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/BluetoothFtp$Server;->printErr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getConnectedDevices()Ljava/util/Set;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    invoke-super {p0, p1}, Lcom/mediatek/bluetooth/BluetoothFtp$Remote;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method