.class public final enum Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
.super Ljava/lang/Enum;
.source "ComprehensionTlvTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ACTIVATE_DESCRIPTOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum BATTERY_STATE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum SIM_ME_INTERFACE_TRANSPORT_LEVEL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "COMMAND_DETAILS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "DEVICE_IDENTITIES"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "RESULT"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "DURATION"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "ALPHA_ID"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "USSD_STRING"

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "SMS_TPDU"

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "TEXT_STRING"

    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "TONE"

    const/16 v2, 0x9

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "ITEM"

    const/16 v2, 0xa

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "ITEM_ID"

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "RESPONSE_LENGTH"

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "FILE_LIST"

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "HELP_REQUEST"

    const/16 v2, 0xe

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "DEFAULT_TEXT"

    const/16 v2, 0xf

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "EVENT_LIST"

    const/16 v2, 0x10

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "CAUSE"

    const/16 v2, 0x11

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "TRANSACTION_ID"

    const/16 v2, 0x12

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "ICON_ID"

    const/16 v2, 0x13

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "ITEM_ICON_ID_LIST"

    const/16 v2, 0x14

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "IMMEDIATE_RESPONSE"

    const/16 v2, 0x15

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "LANGUAGE"

    const/16 v2, 0x16

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "URL"

    const/16 v2, 0x17

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "BROWSER_TERMINATION_CAUSE"

    const/16 v2, 0x18

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "BEARER_DESCRIPTION"

    const/16 v2, 0x19

    .line 54
    const/16 v3, 0x35

    .line 51
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    .line 54
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "CHANNEL_DATA"

    const/16 v2, 0x1a

    const/16 v3, 0x36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "CHANNEL_DATA_LENGTH"

    const/16 v2, 0x1b

    const/16 v3, 0x37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "CHANNEL_STATUS"

    const/16 v2, 0x1c

    const/16 v3, 0x38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "BUFFER_SIZE"

    const/16 v2, 0x1d

    const/16 v3, 0x39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "SIM_ME_INTERFACE_TRANSPORT_LEVEL"

    const/16 v2, 0x1e

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SIM_ME_INTERFACE_TRANSPORT_LEVEL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "OTHER_ADDRESS"

    const/16 v2, 0x1f

    const/16 v3, 0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "NETWORK_ACCESS_NAME"

    const/16 v2, 0x20

    const/16 v3, 0x47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "NEXT_ACTION_INDICATOR"

    const/16 v2, 0x21

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "DATE_TIME_AND_TIMEZONE"

    const/16 v2, 0x22

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "TEXT_ATTRIBUTE"

    const/16 v2, 0x23

    .line 65
    const/16 v3, 0x50

    .line 64
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    .line 65
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "BATTERY_STATE"

    const/16 v2, 0x24

    const/16 v3, 0x63

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BATTERY_STATE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const-string/jumbo v1, "ACTIVATE_DESCRIPTOR"

    const/16 v2, 0x25

    const/16 v3, 0x7b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ACTIVATE_DESCRIPTOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 25
    const/16 v0, 0x26

    new-array v0, v0, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TRANSACTION_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SIM_ME_INTERFACE_TRANSPORT_LEVEL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BATTERY_STATE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ACTIVATE_DESCRIPTOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    .line 71
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 85
    invoke-static {}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 86
    .local v0, "e":Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    iget v4, v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    if-ne v4, p0, :cond_0

    .line 87
    return-object v0

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "e":Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    return v0
.end method