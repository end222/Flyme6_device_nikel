.class Lcom/mediatek/hdmi/MtkHdmiManagerService$5;
.super Ljava/lang/Object;
.source "MtkHdmiManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleMultiChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-get0(Lcom/mediatek/hdmi/MtkHdmiManagerService;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-wrap11(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 338
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 339
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$5;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->-set0(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 336
    return-void
.end method
