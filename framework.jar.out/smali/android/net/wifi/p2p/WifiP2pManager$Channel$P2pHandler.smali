.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 806
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 807
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 806
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 812
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v4

    .line 813
    .local v4, "listener":Ljava/lang/Object;
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 939
    const-string/jumbo v9, "WifiP2pManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ignored "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v4    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 815
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 816
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v9

    invoke-interface {v9}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 817
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v9, v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_0

    .line 851
    :sswitch_1
    if-eqz v4, :cond_0

    .line 852
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v4    # "listener":Ljava/lang/Object;
    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v9}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 886
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_2
    if-eqz v4, :cond_0

    .line 887
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 891
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 892
    .local v5, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v4, :cond_0

    .line 893
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 897
    .end local v5    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 898
    .local v8, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v4, :cond_0

    .line 899
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .line 904
    .end local v8    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 905
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v4, :cond_0

    .line 906
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    .line 910
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 911
    .local v6, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v9, v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_0

    .line 914
    .end local v6    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 915
    .local v1, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v4, :cond_0

    .line 916
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_0

    .line 921
    .end local v1    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    .restart local v4    # "listener":Ljava/lang/Object;
    :sswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 922
    .local v2, "handoverBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 923
    if-eqz v2, :cond_1

    .line 924
    const-string/jumbo v9, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 926
    :goto_1
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 925
    .restart local v4    # "listener":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .local v3, "handoverMessage":Ljava/lang/String;
    goto :goto_1

    .line 932
    .end local v2    # "handoverBundle":Landroid/os/Bundle;
    .end local v3    # "handoverMessage":Ljava/lang/String;
    :sswitch_9
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;

    .line 933
    .local v7, "s":Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;
    if-eqz v4, :cond_0

    .line 934
    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;

    .end local v4    # "listener":Ljava/lang/Object;
    invoke-interface {v4, v7}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;->onLinkInfoAvailable(Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;)V

    goto/16 :goto_0

    .line 813
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x22002 -> :sswitch_1
        0x22003 -> :sswitch_2
        0x22005 -> :sswitch_1
        0x22006 -> :sswitch_2
        0x22008 -> :sswitch_1
        0x22009 -> :sswitch_2
        0x2200b -> :sswitch_1
        0x2200c -> :sswitch_2
        0x2200e -> :sswitch_1
        0x2200f -> :sswitch_2
        0x22011 -> :sswitch_1
        0x22012 -> :sswitch_2
        0x22014 -> :sswitch_3
        0x22016 -> :sswitch_4
        0x22018 -> :sswitch_5
        0x2201d -> :sswitch_1
        0x2201e -> :sswitch_2
        0x22020 -> :sswitch_1
        0x22021 -> :sswitch_2
        0x22023 -> :sswitch_1
        0x22024 -> :sswitch_2
        0x22026 -> :sswitch_1
        0x22027 -> :sswitch_2
        0x22029 -> :sswitch_1
        0x2202a -> :sswitch_2
        0x2202c -> :sswitch_1
        0x2202d -> :sswitch_2
        0x2202f -> :sswitch_1
        0x22030 -> :sswitch_2
        0x22032 -> :sswitch_6
        0x22034 -> :sswitch_1
        0x22035 -> :sswitch_2
        0x22037 -> :sswitch_1
        0x22038 -> :sswitch_2
        0x2203a -> :sswitch_7
        0x2203c -> :sswitch_1
        0x2203d -> :sswitch_2
        0x2203f -> :sswitch_1
        0x22040 -> :sswitch_2
        0x22042 -> :sswitch_1
        0x22043 -> :sswitch_2
        0x22045 -> :sswitch_1
        0x22046 -> :sswitch_2
        0x22048 -> :sswitch_1
        0x22049 -> :sswitch_2
        0x2204d -> :sswitch_8
        0x22050 -> :sswitch_2
        0x22051 -> :sswitch_1
        0x22056 -> :sswitch_9
        0x22060 -> :sswitch_1
        0x22061 -> :sswitch_2
        0x22063 -> :sswitch_1
        0x22064 -> :sswitch_2
        0x22066 -> :sswitch_1
        0x22067 -> :sswitch_2
        0x22069 -> :sswitch_1
        0x2206a -> :sswitch_2
        0x2206f -> :sswitch_1
        0x22070 -> :sswitch_2
    .end sparse-switch
.end method
