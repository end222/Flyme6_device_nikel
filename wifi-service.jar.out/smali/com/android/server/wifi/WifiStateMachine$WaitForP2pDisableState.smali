.class Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForP2pDisableState"
.end annotation


# instance fields
.field private mTransitionToState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 7439
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 7443
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7444
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 7460
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    .line 7463
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20084

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7442
    return-void

    .line 7446
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 7449
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get44(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 7452
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 7456
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    goto :goto_0

    .line 7444
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_2
        0x20012 -> :sswitch_1
        0x20048 -> :sswitch_3
        0x24002 -> :sswitch_0
    .end sparse-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 7467
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7469
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 7500
    const/4 v0, 0x0

    return v0

    .line 7472
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 7473
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "state == ScanModeState, setWifiState(WIFI_STATE_DISABLED)"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7474
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 7477
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->mTransitionToState:Lcom/android/internal/util/State;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap80(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7502
    :goto_0
    return v2

    .line 7496
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7497
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 7469
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_1
        0x2000c -> :sswitch_1
        0x2000d -> :sswitch_1
        0x2000e -> :sswitch_1
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_1
        0x20047 -> :sswitch_1
        0x20048 -> :sswitch_1
        0x20049 -> :sswitch_1
        0x2004a -> :sswitch_1
        0x2004b -> :sswitch_1
        0x20050 -> :sswitch_1
        0x20054 -> :sswitch_1
        0x20055 -> :sswitch_1
        0x2005a -> :sswitch_1
        0x20085 -> :sswitch_0
        0x24006 -> :sswitch_1
    .end sparse-switch
.end method
