.class Lcom/android/server/MountService$2$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$2;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/MountService$2;

    .prologue
    .line 4156
    iput-object p1, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4158
    invoke-static {}, Lcom/android/server/MountService;->-get1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService$2$1;->this$1:Lcom/android/server/MountService$2;

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/MountService;->-wrap8(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4157
    return-void

    .line 4158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
