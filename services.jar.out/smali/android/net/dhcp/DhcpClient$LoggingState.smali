.class abstract Landroid/net/dhcp/DhcpClient$LoggingState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoggingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 483
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private messageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 489
    sparse-switch p1, :sswitch_data_0

    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 491
    :sswitch_0
    const-string/jumbo v0, "CMD_START_DHCP"

    return-object v0

    .line 493
    :sswitch_1
    const-string/jumbo v0, "CMD_STOP_DHCP"

    return-object v0

    .line 495
    :sswitch_2
    const-string/jumbo v0, "CMD_RENEW_DHCP"

    return-object v0

    .line 497
    :sswitch_3
    const-string/jumbo v0, "CMD_PRE_DHCP_ACTION"

    return-object v0

    .line 499
    :sswitch_4
    const-string/jumbo v0, "CMD_PRE_DHCP_ACTION_COMPLETE"

    return-object v0

    .line 501
    :sswitch_5
    const-string/jumbo v0, "CMD_POST_DHCP_ACTION"

    return-object v0

    .line 503
    :sswitch_6
    const-string/jumbo v0, "CMD_KICK"

    return-object v0

    .line 505
    :sswitch_7
    const-string/jumbo v0, "CMD_RECEIVED_PACKET"

    return-object v0

    .line 507
    :sswitch_8
    const-string/jumbo v0, "CMD_TIMEOUT"

    return-object v0

    .line 509
    :sswitch_9
    const-string/jumbo v0, "CMD_ONESHOT_TIMEOUT"

    return-object v0

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x30001 -> :sswitch_0
        0x30002 -> :sswitch_1
        0x30003 -> :sswitch_2
        0x30004 -> :sswitch_3
        0x30005 -> :sswitch_5
        0x30007 -> :sswitch_4
        0x30065 -> :sswitch_6
        0x30066 -> :sswitch_7
        0x30067 -> :sswitch_8
        0x30068 -> :sswitch_9
    .end sparse-switch
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 517
    .local v2, "now":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 519
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4}, Landroid/net/dhcp/DhcpClient$LoggingState;->messageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    const-string/jumbo v4, " "

    .line 519
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 519
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 521
    const-string/jumbo v4, " "

    .line 519
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 521
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 519
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    const-string/jumbo v4, " "

    .line 519
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 485
    const-string/jumbo v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entering state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 529
    const-string/jumbo v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v0, 0x0

    return v0
.end method
