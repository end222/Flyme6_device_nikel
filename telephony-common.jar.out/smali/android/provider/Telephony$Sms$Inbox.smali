.class public final Landroid/provider/Telephony$Sms$Inbox;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Inbox"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 621
    const-string/jumbo v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 609
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 9
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z

    .prologue
    .line 662
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 663
    const/4 v8, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 662
    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 12
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "sc"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/Long;
    .param p7, "read"    # Z

    .prologue
    .line 685
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 686
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 685
    invoke-static/range {v0 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z

    .prologue
    .line 643
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 644
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 643
    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method