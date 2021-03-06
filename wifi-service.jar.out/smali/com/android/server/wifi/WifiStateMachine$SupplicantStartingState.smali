.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6615
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private initializeWpsDetails()V
    .locals 4

    .prologue
    .line 6622
    const-string/jumbo v1, "ro.product.name"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6623
    .local v0, "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6624
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set device name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6626
    :cond_0
    const-string/jumbo v1, "ro.product.manufacturer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6627
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setManufacturer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6628
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set manufacturer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6630
    :cond_1
    const-string/jumbo v1, "ro.product.model"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6631
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6632
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set model name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6634
    :cond_2
    const-string/jumbo v1, "ro.product.model"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6635
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6636
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set model number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6638
    :cond_3
    const-string/jumbo v1, "ro.serialno"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6639
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setSerialNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6640
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6642
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string/jumbo v2, "physical_display virtual_push_button"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6643
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "Failed to set WPS config methods"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6645
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6646
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set primary device type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6620
    :cond_6
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 6618
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6617
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 6652
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6654
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 6792
    return v8

    .line 6656
    :sswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v6, "Supplicant connection established"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6657
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6658
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set68(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6661
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v5

    const v6, 0x2006f

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6663
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set45(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6664
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6665
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set51(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6667
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 6669
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap67(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6670
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->enableSaveConfig()V

    .line 6671
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 6672
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_1

    .line 6673
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 6675
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->initializeWpsDetails()V

    .line 6676
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6677
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6678
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set53(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6679
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set74(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6682
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6683
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6684
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set76(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6685
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6686
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6687
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6688
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6689
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6693
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6694
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->setBssExpireAge(I)Z

    .line 6695
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/wifi/WifiNative;->setBssExpireCount(I)Z

    .line 6696
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6697
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6698
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set66(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6699
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set37(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6700
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set46(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6701
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6702
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6707
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap6(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 6708
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 6709
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_7

    .line 6710
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "network$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 6711
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    .line 6712
    .local v4, "value":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EAP value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6713
    if-eq v4, v10, :cond_5

    .line 6714
    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 6716
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v8}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 6721
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6723
    .local v0, "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v5, 0xa3

    .line 6722
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 6715
    .end local v0    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 6728
    .end local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "network$iterator":Ljava/util/Iterator;
    .end local v4    # "value":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v6, "Check for EAP_SIM_AKA, networks is null!"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6760
    .end local v3    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap65(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6761
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get39(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap80(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6794
    :goto_3
    return v11

    .line 6731
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "LOADED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 6732
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v6, "mIccState is not loaded, check EAP SIM/AKA networks"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6733
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 6734
    .restart local v3    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_d

    .line 6735
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "network$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 6736
    .restart local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    .line 6737
    .restart local v4    # "value":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EAP value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6738
    if-eq v4, v10, :cond_b

    .line 6739
    const/4 v5, 0x5

    if-ne v4, v5, :cond_c

    .line 6741
    :cond_b
    :goto_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "diable EAP SIM/AKA network let supplicant cannot auto connect, netId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6742
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 6741
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6743
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v8}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 6748
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 6750
    .restart local v0    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v5, 0xa2

    .line 6749
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_4

    .line 6740
    .end local v0    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    goto :goto_5

    .line 6755
    .end local v1    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "network$iterator":Ljava/util/Iterator;
    .end local v4    # "value":I
    :cond_d
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v6, "Check for EAP_SIM_AKA, networks is null!"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6764
    .end local v3    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set68(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_e

    .line 6765
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v6, "Failed to setup control channel, restart supplicant"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6766
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 6767
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap80(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6768
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v6, 0x1388

    const v8, 0x2000b

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    .line 6770
    :cond_e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get116(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6771
    const-string/jumbo v7, " times to start supplicant, unload driver"

    .line 6770
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6772
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set68(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6773
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6774
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap80(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 6788
    :sswitch_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6789
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 6654
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
