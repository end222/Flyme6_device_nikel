.class public Lcom/android/internal/telephony/cat/BipService$SendDataThread;
.super Ljava/lang/Object;
.source "BipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SendDataThread"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field response:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;
    .param p2, "Msg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p3, "resp"    # Landroid/os/Message;

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "SendDataThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 1227
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    .line 1223
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1233
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "SendDataThread Run Enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v4, 0x0

    .line 1236
    .local v4, "ret":I
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v0, v5, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 1237
    .local v0, "buffer":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget v3, v5, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    .line 1238
    .local v3, "mode":I
    const/4 v2, 0x0

    .line 1239
    .local v2, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget v1, v5, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 1241
    .local v1, "cId":I
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v5}, Lcom/android/internal/telephony/cat/BipService;->-get1(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipChannelManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v2

    .line 1243
    .local v2, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    if-nez v2, :cond_0

    .line 1244
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "SendDataThread Run mChannelId != cmdMsg.mSendDataCid"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const/4 v4, 0x7

    .line 1261
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 1262
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1263
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "SendDataThread Run mBipSrvHandler.sendMessage(response);"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v5}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    return-void

    .line 1249
    :cond_0
    iget v5, v2, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1251
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "SendDataThread Run mChannel.sendData"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/cat/Channel;->sendData([BI)I

    move-result v4

    .line 1253
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService$SendDataThread;->response:Landroid/os/Message;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/Channel;->getTxAvailBufferSize()I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 1257
    :cond_1
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "SendDataThread Run CHANNEL_ID_NOT_VALID"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const/4 v4, 0x7

    goto :goto_0
.end method
