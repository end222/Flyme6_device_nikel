.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;
    }
.end annotation


# static fields
.field public static final ADD_LOCAL_SERVICE:I = 0x2201c

.field public static final ADD_LOCAL_SERVICE_FAILED:I = 0x2201d

.field public static final ADD_LOCAL_SERVICE_SUCCEEDED:I = 0x2201e

.field public static final ADD_SERVICE_REQUEST:I = 0x22025

.field public static final ADD_SERVICE_REQUEST_FAILED:I = 0x22026

.field public static final ADD_SERVICE_REQUEST_SUCCEEDED:I = 0x22027

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_CONNECT:I = 0x2200a

.field public static final CANCEL_CONNECT_FAILED:I = 0x2200b

.field public static final CANCEL_CONNECT_SUCCEEDED:I = 0x2200c

.field public static final CLEAR_LOCAL_SERVICES:I = 0x22022

.field public static final CLEAR_LOCAL_SERVICES_FAILED:I = 0x22023

.field public static final CLEAR_LOCAL_SERVICES_SUCCEEDED:I = 0x22024

.field public static final CLEAR_SERVICE_REQUESTS:I = 0x2202b

.field public static final CLEAR_SERVICE_REQUESTS_FAILED:I = 0x2202c

.field public static final CLEAR_SERVICE_REQUESTS_SUCCEEDED:I = 0x2202d

.field public static final CONNECT:I = 0x22007

.field public static final CONNECT_FAILED:I = 0x22008

.field public static final CONNECT_SUCCEEDED:I = 0x22009

.field public static final CREATE_GROUP:I = 0x2200d

.field public static final CREATE_GROUP_FAILED:I = 0x2200e

.field public static final CREATE_GROUP_SUCCEEDED:I = 0x2200f

.field public static final CROSSMOUNT_TAG:I = 0x8235

.field public static final DELETE_PERSISTENT_GROUP:I = 0x22036

.field public static final DELETE_PERSISTENT_GROUP_FAILED:I = 0x22037

.field public static final DELETE_PERSISTENT_GROUP_SUCCEEDED:I = 0x22038

.field public static final DISCOVER_PEERS:I = 0x22001

.field public static final DISCOVER_PEERS_FAILED:I = 0x22002

.field public static final DISCOVER_PEERS_SUCCEEDED:I = 0x22003

.field public static final DISCOVER_SERVICES:I = 0x2202e

.field public static final DISCOVER_SERVICES_FAILED:I = 0x2202f

.field public static final DISCOVER_SERVICES_SUCCEEDED:I = 0x22030

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CLIENT_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_CLIENT_MESSAGE"

.field public static final EXTRA_DISCOVERY_STATE:Ljava/lang/String; = "discoveryState"

.field public static final EXTRA_HANDOVER_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_P2P_DEVICE_LIST:Ljava/lang/String; = "wifiP2pDeviceList"

.field public static final EXTRA_PIN_CODE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PIN_CODE"

.field public static final EXTRA_PIN_METHOD:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_PIN_METHOD"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final EXTRA_WIFI_P2P_GROUP:Ljava/lang/String; = "p2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final FAST_CONNECT_AS_GC:I = 0x2205d

.field public static final FAST_CONNECT_AS_GO:I = 0x2205c

.field public static final FAST_DISCOVER_PEERS:I = 0x2205e

.field public static final FREQ_CONFLICT_EX_RESULT:I = 0x2206d

.field public static final GET_HANDOVER_REQUEST:I = 0x2204b

.field public static final GET_HANDOVER_SELECT:I = 0x2204c

.field public static final GET_NFC_CONFIG_TOKEN:I = 0x22065

.field public static final GET_NFC_CONFIG_TOKEN_FAILED:I = 0x22066

.field public static final GET_NFC_CONFIG_TOKEN_SUCCEEDED:I = 0x22067

.field public static final GET_NFC_REQUEST_TOKEN:I = 0x2205f

.field public static final GET_NFC_REQUEST_TOKEN_FAILED:I = 0x22060

.field public static final GET_NFC_REQUEST_TOKEN_SUCCEEDED:I = 0x22061

.field public static final GET_NFC_SELECT_TOKEN:I = 0x22062

.field public static final GET_NFC_SELECT_TOKEN_FAILED:I = 0x22063

.field public static final GET_NFC_SELECT_TOKEN_SUCCEEDED:I = 0x22064

.field public static final GET_NFC_WPS_CONFIG_TOKEN:I = 0x22068

.field public static final GET_NFC_WPS_CONFIG_TOKEN_FAILED:I = 0x22069

.field public static final GET_NFC_WPS_CONFIG_TOKEN_SUCCEEDED:I = 0x2206a

.field public static final INITIATOR_REPORT_NFC_HANDOVER:I = 0x2204e

.field public static final MIRACAST_DISABLED:I = 0x0

.field public static final MIRACAST_SINK:I = 0x2

.field public static final MIRACAST_SOURCE:I = 0x1

.field public static final NO_SERVICE_REQUESTS:I = 0x3

.field public static final P2P_UNSUPPORTED:I = 0x1

.field public static final PEER_CONNECTION_USER_ACCEPT_FROM_OUTER:I = 0x2206b

.field public static final PEER_CONNECTION_USER_REJECT_FROM_OUTER:I = 0x2206c

.field public static final PING:I = 0x22031

.field public static final REMOVE_CLIENT:I = 0x2206e

.field public static final REMOVE_CLIENT_FAILED:I = 0x2206f

.field public static final REMOVE_CLIENT_SUCCEEDED:I = 0x22070

.field public static final REMOVE_GROUP:I = 0x22010

.field public static final REMOVE_GROUP_FAILED:I = 0x22011

.field public static final REMOVE_GROUP_SUCCEEDED:I = 0x22012

.field public static final REMOVE_LOCAL_SERVICE:I = 0x2201f

.field public static final REMOVE_LOCAL_SERVICE_FAILED:I = 0x22020

.field public static final REMOVE_LOCAL_SERVICE_SUCCEEDED:I = 0x22021

.field public static final REMOVE_SERVICE_REQUEST:I = 0x22028

.field public static final REMOVE_SERVICE_REQUEST_FAILED:I = 0x22029

.field public static final REMOVE_SERVICE_REQUEST_SUCCEEDED:I = 0x2202a

.field public static final REPORT_NFC_HANDOVER_FAILED:I = 0x22051

.field public static final REPORT_NFC_HANDOVER_SUCCEEDED:I = 0x22050

.field public static final REQUEST_CONNECTION_INFO:I = 0x22015

.field public static final REQUEST_GROUP_INFO:I = 0x22017

.field public static final REQUEST_LINK_INFO:I = 0x22055

.field public static final REQUEST_PEERS:I = 0x22013

.field public static final REQUEST_PERSISTENT_GROUP_INFO:I = 0x22039

.field public static final RESPONDER_REPORT_NFC_HANDOVER:I = 0x2204f

.field public static final RESPONSE_CONNECTION_INFO:I = 0x22016

.field public static final RESPONSE_GET_HANDOVER_MESSAGE:I = 0x2204d

.field public static final RESPONSE_GROUP_INFO:I = 0x22018

.field public static final RESPONSE_LINK_INFO:I = 0x22056

.field public static final RESPONSE_PEERS:I = 0x22014

.field public static final RESPONSE_PERSISTENT_GROUP_INFO:I = 0x2203a

.field public static final RESPONSE_SERVICE:I = 0x22032

.field public static final SET_AUTO_CHANNEL_SELECT:I = 0x22057

.field public static final SET_AUTO_CHANNEL_SELECT_FAILED:I = 0x22058

.field public static final SET_AUTO_CHANNEL_SELECT_SUCCEEDED:I = 0x22059

.field public static final SET_CHANNEL:I = 0x22047

.field public static final SET_CHANNEL_FAILED:I = 0x22048

.field public static final SET_CHANNEL_SUCCEEDED:I = 0x22049

.field public static final SET_DEVICE_NAME:I = 0x22033

.field public static final SET_DEVICE_NAME_FAILED:I = 0x22034

.field public static final SET_DEVICE_NAME_SUCCEEDED:I = 0x22035

.field public static final SET_WFD_INFO:I = 0x2203b

.field public static final SET_WFD_INFO_FAILED:I = 0x2203c

.field public static final SET_WFD_INFO_SUCCEEDED:I = 0x2203d

.field public static final START_FAST_CONNECT_AS_GC:I = 0x2205b

.field public static final START_FAST_CONNECT_AS_GO:I = 0x2205a

.field public static final START_LISTEN:I = 0x22041

.field public static final START_LISTEN_FAILED:I = 0x22042

.field public static final START_LISTEN_SUCCEEDED:I = 0x22043

.field public static final START_WPS:I = 0x2203e

.field public static final START_WPS_FAILED:I = 0x2203f

.field public static final START_WPS_SUCCEEDED:I = 0x22040

.field public static final STOP_DISCOVERY:I = 0x22004

.field public static final STOP_DISCOVERY_FAILED:I = 0x22005

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x22006

.field public static final STOP_LISTEN:I = 0x22044

.field public static final STOP_LISTEN_FAILED:I = 0x22045

.field public static final STOP_LISTEN_SUCCEEDED:I = 0x22046

.field public static final STOP_P2P_FIND_ONLY:I = 0x22071

.field private static final TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final UPPER_BOUND:I = 0x22080

.field public static final WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_STARTED:I = 0x2

.field public static final WIFI_P2P_DISCOVERY_STOPPED:I = 0x1

.field public static final WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final WIFI_P2P_PERSISTENT_GROUPS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

.field private static final macPattern:Ljava/util/regex/Pattern;


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1035
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    .line 1034
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pManager;->macPattern:Ljava/util/regex/Pattern;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .locals 0
    .param p1, "service"    # Landroid/net/wifi/p2p/IWifiP2pManager;

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 601
    return-void
.end method

.method private static checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 1014
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_0
    return-void
.end method

.method private checkMac(Ljava/lang/String;)V
    .locals 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1038
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pManager;->macPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1040
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "MAC needs to be well-formed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1037
    :cond_0
    return-void
.end method

.method private static checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 1026
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_1
    return-void
.end method

.method private static checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 1018
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_0
    return-void
.end method

.method private static checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 2
    .param p0, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 1022
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1021
    :cond_0
    return-void
.end method

.method private initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 4
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .param p4, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v3, 0x0

    .line 1070
    if-nez p4, :cond_0

    return-object v3

    .line 1072
    :cond_0
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V

    .line 1073
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1075
    return-object v0

    .line 1077
    :cond_1
    return-object v3
.end method


# virtual methods
.method public addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1289
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1290
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1291
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2201c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1288
    return-void
.end method

.method public addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1423
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1424
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1425
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1426
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1425
    const v2, 0x22025

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1422
    return-void
.end method

.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1177
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1178
    const-string/jumbo v2, "(), pid: "

    .line 1177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1178
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1178
    const-string/jumbo v2, ", tid: "

    .line 1177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1178
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1178
    const-string/jumbo v2, ", uid: "

    .line 1177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1179
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1182
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2200a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1175
    return-void
.end method

.method public clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1325
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1326
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22022

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1324
    return-void
.end method

.method public clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1461
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1462
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1463
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1462
    const v2, 0x2202b

    .line 1463
    const/4 v3, 0x0

    .line 1462
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1460
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1155
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1156
    const-string/jumbo v2, "(), pid: "

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1156
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1156
    const-string/jumbo v2, ", tid: "

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1156
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1156
    const-string/jumbo v2, ", uid: "

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1157
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1160
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1161
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1153
    return-void
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1206
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    const-string/jumbo v2, "(), pid: "

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    const-string/jumbo v2, ", tid: "

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1207
    const-string/jumbo v2, ", uid: "

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1208
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1211
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1212
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1211
    const v2, 0x2200d

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1204
    return-void
.end method

.method public deinitialize(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 1768
    const-string/jumbo v0, "WifiP2pManager"

    const-string/jumbo v1, "deinitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1772
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1767
    return-void
.end method

.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "netId"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1539
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1540
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22036

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1538
    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1102
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1103
    const-string/jumbo v2, "(), pid: "

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1103
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1103
    const-string/jumbo v2, ", tid: "

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1103
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1103
    const-string/jumbo v2, ", uid: "

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1104
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1107
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1100
    return-void
.end method

.method public discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1398
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1399
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2202e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1397
    return-void
.end method

.method public fastConnectAsGc(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "info"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1712
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1713
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2205b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1711
    return-void
.end method

.method public fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 2
    .param p1, "info"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .prologue
    .line 1693
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1884
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1885
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateNfcToken(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const v0, 0x2205f

    if-eq v0, p2, :cond_0

    .line 1888
    const v0, 0x22062

    if-ne v0, p2, :cond_1

    .line 1891
    :cond_0
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1883
    :goto_0
    return-void

    .line 1889
    :cond_1
    const v0, 0x22065

    if-eq v0, p2, :cond_0

    .line 1890
    const v0, 0x22068

    if-eq v0, p2, :cond_0

    .line 1893
    const-string/jumbo v0, "WifiP2pManager"

    const-string/jumbo v1, "generateNfcToken(): invalid type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1722
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1723
    :catch_0
    move-exception v0

    .line 1724
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1604
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNfcHandoverRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .prologue
    .line 1630
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1631
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2204b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1629
    return-void
.end method

.method public getNfcHandoverSelect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .prologue
    .line 1640
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1641
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2204c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1639
    return-void
.end method

.method public getNfcSelectToken()[B
    .locals 2

    .prologue
    .line 1868
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pHandoverSelectToken()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1869
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1619
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "peerMacAddress"    # Ljava/lang/String;

    .prologue
    .line 1784
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initializeInternal(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initiatorReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverSelect"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1649
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1650
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1651
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 1653
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1652
    const v3, 0x2204e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1648
    return-void
.end method

.method public listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1238
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1239
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x22041

    .line 1240
    :goto_0
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    .line 1239
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1237
    return-void

    .line 1239
    :cond_0
    const v0, 0x22044

    goto :goto_0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1906
    const-string/jumbo v1, "WifiP2pManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1907
    const-string/jumbo v3, "(), pid: "

    .line 1906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1907
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1907
    const-string/jumbo v3, ", tid: "

    .line 1906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1907
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    .line 1906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1907
    const-string/jumbo v3, ", uid: "

    .line 1906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1908
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1906
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1910
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkMac(Ljava/lang/String;)V

    .line 1911
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1912
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.net.wifi.p2p.EXTRA_CLIENT_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 1914
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1913
    const v3, 0x2206e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1905
    return-void
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1228
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1229
    const-string/jumbo v2, "(), pid: "

    .line 1228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1229
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1229
    const-string/jumbo v2, ", tid: "

    .line 1228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1229
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1229
    const-string/jumbo v2, ", uid: "

    .line 1228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1230
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1233
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1226
    return-void
.end method

.method public removeLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1308
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1309
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1310
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2201f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1307
    return-void
.end method

.method public removeServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1443
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1444
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1445
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1446
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1445
    const v2, 0x22028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1442
    return-void
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .prologue
    .line 1484
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1485
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1483
    return-void
.end method

.method public requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .prologue
    .line 1495
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1496
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22017

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1494
    return-void
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .prologue
    .line 1473
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1474
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22013

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1472
    return-void
.end method

.method public requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .prologue
    .line 1551
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1552
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1550
    return-void
.end method

.method public requestWifiP2pLinkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "interfaceAddress"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;

    .prologue
    .line 1738
    new-instance v0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;-><init>()V

    .line 1739
    .local v0, "info":Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;
    iput-object p2, v0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    .line 1740
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1741
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22055

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1737
    return-void
.end method

.method public responderReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverRequest"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1662
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1663
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1664
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 1666
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1665
    const v3, 0x2204f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1661
    return-void
.end method

.method public setCrossMountIE(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isAdd"    # Z
    .param p2, "hexData"    # Ljava/lang/String;

    .prologue
    .line 1929
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/p2p/IWifiP2pManager;->setCrossMountIE(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    return-void

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public setCrossmountMode(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "freq"    # I

    .prologue
    .line 1588
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    const v2, 0x8235

    add-int/2addr v2, p2

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastModeEx(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :goto_0
    return-void

    .line 1589
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1506
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1507
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1508
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1509
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22033

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1505
    return-void
.end method

.method public setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .param p3, "txtListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .prologue
    .line 1358
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1359
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    .line 1360
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 1357
    return-void
.end method

.method public setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "accept"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1855
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1856
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 1857
    :goto_0
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1856
    const v3, 0x2206d

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1854
    return-void

    .line 1856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGCInviteResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZIILjava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "accept"    # Z
    .param p3, "goIntent"    # I
    .param p4, "pinMethod"    # I
    .param p5, "pinCode"    # Ljava/lang/String;
    .param p6, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1824
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1825
    if-nez p5, :cond_0

    .line 1826
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pinCode needs to be configured"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1828
    :cond_0
    const/4 v1, 0x2

    if-eq p4, v1, :cond_1

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    .line 1829
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1830
    const-string/jumbo v2, "pinMethod needs to be WpsInfo.KEYPAD/WpsInfo.DISPLAY"

    .line 1829
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1833
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1834
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android.net.wifi.p2p.EXTRA_PIN_CODE"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string/jumbo v1, "android.net.wifi.p2p.EXTRA_PIN_METHOD"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    if-eqz p2, :cond_2

    .line 1838
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 1839
    invoke-static {p1, p6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1838
    const v3, 0x2206b

    invoke-virtual {v1, v3, p3, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1823
    :goto_0
    return-void

    .line 1841
    :cond_2
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 1842
    invoke-static {p1, p6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1841
    const v3, 0x2206c

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setGCInviteResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "accept"    # Z
    .param p3, "goIntent"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1801
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1802
    if-eqz p2, :cond_0

    .line 1803
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1804
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1803
    const v2, 0x2206b

    invoke-virtual {v0, v2, p3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1800
    :goto_0
    return-void

    .line 1806
    :cond_0
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1807
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1806
    const v2, 0x2206c

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1564
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    :goto_0
    return-void

    .line 1565
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMiracastMode(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "freq"    # I

    .prologue
    .line 1574
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastModeEx(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :goto_0
    return-void

    .line 1575
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1754
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1755
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 1756
    :goto_0
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1755
    const v3, 0x22057

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1753
    return-void

    .line 1755
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .prologue
    .line 1342
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1343
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .line 1341
    return-void
.end method

.method public setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .prologue
    .line 1374
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1375
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set4(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .line 1373
    return-void
.end method

.method public setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1516
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1517
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2203b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1515
    return-void
.end method

.method public setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "lc"    # I
    .param p3, "oc"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1245
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1247
    .local v0, "p2pChannels":Landroid/os/Bundle;
    const-string/jumbo v1, "lc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1248
    const-string/jumbo v1, "oc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1249
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22047

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1244
    return-void
.end method

.method public startWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wps"    # Landroid/net/wifi/WpsInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1263
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1264
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2203e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1262
    return-void
.end method

.method public stopP2pFindOnly(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1949
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1950
    const-string/jumbo v2, "(), pid: "

    .line 1949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1950
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1950
    const-string/jumbo v2, ", tid: "

    .line 1949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1950
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1950
    const-string/jumbo v2, ", uid: "

    .line 1949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1951
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1949
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1953
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22071

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1948
    return-void
.end method

.method public stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1123
    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    const-string/jumbo v2, "(), pid: "

    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    const-string/jumbo v2, ", tid: "

    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    const-string/jumbo v2, ", uid: "

    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1125
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 1123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1128
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1121
    return-void
.end method
