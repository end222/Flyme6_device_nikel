.class final Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayStatusChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 3219
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3222
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3223
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3225
    const-string/jumbo v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 3224
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 3226
    .local v0, "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3227
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    .line 3226
    const/4 v4, 0x2

    if-ne v4, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerService;->-set10(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3228
    const-string/jumbo v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<<<<< WifiDisplayStatusChangedReceiver >>>>> mWfdEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3229
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WifiDisplayStatusChangedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-get20(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    .line 3228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    monitor-exit v2

    .line 3221
    return-void

    .line 3226
    .restart local v0    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3222
    .end local v0    # "wfdStatus":Landroid/hardware/display/WifiDisplayStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
