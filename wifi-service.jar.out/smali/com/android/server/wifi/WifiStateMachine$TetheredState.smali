.class Lcom/android/server/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 11910
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private sendClientsChangedBroadcast()V
    .locals 3

    .prologue
    .line 11912
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11913
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11914
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11911
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 11919
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11920
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set9(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11921
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 11922
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 11924
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_1

    .line 11925
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 11926
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set alarm for enter TetheredState, mDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11927
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    .line 11928
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 11929
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long/2addr v4, v6

    .line 11928
    add-long/2addr v2, v4

    .line 11929
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 11927
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 11931
    :cond_1
    const-string/jumbo v1, "persist.radio.hotspot.probe.rq"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11932
    .local v0, "request":Ljava/lang/String;
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.radio.hotspot.probe.rq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11933
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11934
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    .line 11939
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setHotspotOptimization(Z)Z

    .line 11918
    return-void

    .line 11921
    .end local v0    # "request":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12067
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 12068
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 12070
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 12071
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 12073
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 12076
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setHotspotOptimization(Z)Z

    .line 12066
    return-void

    .line 12070
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 11943
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 11945
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 12060
    const/4 v7, 0x0

    return v7

    .line 11947
    :sswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 11948
    .local v5, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, v5, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 11949
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v8, "Tethering reports wifi as untethered!, shut down soft Ap"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11950
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 11951
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 11953
    :cond_0
    const/4 v7, 0x1

    return v7

    .line 11955
    .end local v5    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v8, "Untethering before stopping AP"

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11956
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap73(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 11957
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap79(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11958
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get130(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap80(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11960
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 12062
    :cond_2
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 11963
    :sswitch_2
    const-string/jumbo v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AP STA CONNECTED:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11964
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set9(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11965
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 11966
    .local v0, "address":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 11967
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 11968
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v7

    new-instance v9, Landroid/net/wifi/HotspotClient;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v7, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v8

    .line 11971
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 11972
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 11974
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto :goto_0

    .line 11966
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 11977
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AP STA DISCONNECTED:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11978
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set9(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11979
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 11980
    .restart local v0    # "address":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 11981
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 11982
    .local v1, "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_5

    iget-boolean v7, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_7

    :cond_5
    :goto_1
    monitor-exit v8

    .line 11986
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    if-nez v7, :cond_6

    .line 11987
    const-string/jumbo v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Set alarm for no client, mDuration:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11988
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v7

    .line 11989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 11990
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    int-to-long v10, v10

    const-wide/32 v12, 0x493e0

    mul-long/2addr v10, v12

    .line 11989
    add-long/2addr v8, v10

    .line 11990
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 11988
    const/4 v11, 0x2

    invoke-virtual {v7, v11, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 11992
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    goto/16 :goto_0

    .line 11983
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 11980
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 11995
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WpsInfo;

    .line 11996
    .local v6, "wpsConfig":Landroid/net/wifi/WpsInfo;
    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v7, :pswitch_data_0

    .line 12013
    const-string/jumbo v7, "WifiStateMachine"

    const-string/jumbo v8, "Invalid setup for WPS!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11998
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set67(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11999
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiNative;->startApWpsPbcCommand()Z

    goto/16 :goto_0

    .line 12002
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    iget-object v8, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12003
    .local v4, "pin":Ljava/lang/String;
    const-string/jumbo v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Check pin result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12004
    if-eqz v4, :cond_8

    .line 12005
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/wifi/WifiNative;->startApWpsWithPinFromDeviceCommand(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 12007
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12008
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12009
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 12018
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pin":Ljava/lang/String;
    .end local v6    # "wpsConfig":Landroid/net/wifi/WpsInfo;
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/android/server/wifi/WifiNative;->blockClientCommand(Ljava/lang/String;)Z

    move-result v3

    .line 12019
    .local v3, "ok":Z
    if-eqz v3, :cond_a

    .line 12020
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 12021
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v9

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 12022
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_9

    .line 12023
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    monitor-exit v8

    .line 12028
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 12032
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :goto_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_b

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v8, p1, v9, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 12025
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    :cond_9
    :try_start_4
    const-string/jumbo v9, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to get "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 12020
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7

    .line 12030
    :cond_a
    const-string/jumbo v8, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to block "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 12032
    :cond_b
    const/4 v7, -0x1

    goto :goto_4

    .line 12036
    .end local v3    # "ok":Z
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/android/server/wifi/WifiNative;->unblockClientCommand(Ljava/lang/String;)Z

    move-result v3

    .line 12037
    .restart local v3    # "ok":Z
    if-eqz v3, :cond_c

    .line 12038
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 12039
    :try_start_5
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get57()Ljava/util/HashMap;

    move-result-object v9

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v8

    .line 12041
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast()V

    .line 12045
    :goto_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_d

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v8, p1, v9, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 12038
    :catchall_3
    move-exception v7

    monitor-exit v8

    throw v7

    .line 12043
    :cond_c
    const-string/jumbo v8, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to unblock "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 12045
    :cond_d
    const/4 v7, -0x1

    goto :goto_6

    .line 12048
    .end local v3    # "ok":Z
    :sswitch_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get59(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_e

    const/4 v7, 0x1

    :goto_7
    invoke-virtual {v8, v7}, Lcom/android/server/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    move-result v3

    .line 12049
    .restart local v3    # "ok":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get101(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_f

    const/4 v7, 0x1

    :goto_8
    invoke-virtual {v8, p1, v9, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 12048
    .end local v3    # "ok":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_7

    .line 12049
    .restart local v3    # "ok":Z
    :cond_f
    const/4 v7, -0x1

    goto :goto_8

    .line 12052
    .end local v3    # "ok":Z
    :sswitch_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get113(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12053
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12054
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x4000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12055
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 12056
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$TetheredState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set67(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 11945
    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x200aa -> :sswitch_5
        0x200ab -> :sswitch_6
        0x200ac -> :sswitch_4
        0x200ae -> :sswitch_7
        0x2400a -> :sswitch_8
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
    .end sparse-switch

    .line 11996
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
