.class Lcom/android/internal/policy/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-gt v0, v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get7(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->doInvalidatePanelMenu(I)V

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1, v3}, Lcom/android/internal/policy/PhoneWindow;->-set3(Lcom/android/internal/policy/PhoneWindow;Z)Z

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1, v3}, Lcom/android/internal/policy/PhoneWindow;->-set2(Lcom/android/internal/policy/PhoneWindow;I)I

    .line 281
    return-void
.end method
