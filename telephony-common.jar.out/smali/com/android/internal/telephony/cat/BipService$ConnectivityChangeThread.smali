.class public Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;
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
    name = "ConnectivityChangeThread"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipService;Landroid/content/Intent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "ConnectivityChangeThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    .line 1629
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1638
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "ConnectivityChangeThread Enter"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "Connectivity changed"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const/4 v3, 0x0

    .line 1641
    .local v3, "ret":I
    const/4 v2, 0x0

    .line 1643
    .local v2, "response":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string/jumbo v10, "networkInfo"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1645
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->intent:Landroid/content/Intent;

    const-string/jumbo v10, "subId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1646
    .local v6, "strSubId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1647
    .local v7, "subId":I
    if-nez v6, :cond_0

    .line 1648
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "No subId in intet extra."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    return-void

    .line 1652
    :cond_0
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1656
    :goto_0
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1657
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid subId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    return-void

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid long string. strSubId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1660
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    .line 1661
    .local v4, "simId":I
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "EXTRA_SIM_ID :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",mSlotId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/BipService;->-get11(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get11(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v9

    if-eq v4, v9, :cond_3

    .line 1663
    :cond_2
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "receive CONN intent sim!="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/BipService;->-get11(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    return-void

    .line 1666
    :cond_3
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "receive valid CONN intent"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 1670
    .local v8, "type":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 1671
    .local v5, "state":Landroid/net/NetworkInfo$State;
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network type is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 1675
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get0(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1676
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1678
    :cond_4
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v9, :cond_6

    .line 1680
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "network state - connected."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    .end local v2    # "response":Landroid/os/Message;
    :cond_5
    :goto_1
    return-void

    .line 1681
    .restart local v2    # "response":Landroid/os/Message;
    :cond_6
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v9, :cond_5

    .line 1682
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "network state - disconnected"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get5(Lcom/android/internal/telephony/cat/BipService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1684
    :try_start_1
    const-string/jumbo v9, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mIsCloseInProgress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v12}, Lcom/android/internal/telephony/cat/BipService;->-get7(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get7(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1686
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v11, "Return TR for close channel."

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v11, 0xc

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1688
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/BipService;->-set1(Lcom/android/internal/telephony/cat/BipService;Z)Z

    .line 1689
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    .line 1690
    iget-object v11, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v11}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v11

    .line 1689
    const/16 v12, 0x10

    .line 1690
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1689
    invoke-virtual {v9, v12, v13, v14, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1691
    .local v2, "response":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "response":Landroid/os/Message;
    :cond_7
    monitor-exit v10

    goto :goto_1

    .line 1683
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method
