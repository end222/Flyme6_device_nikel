.class Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;
.super Landroid/os/Handler;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioProfileHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 3662
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 3666
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3667
    .local v1, "name":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3668
    .local v3, "valueInt":I
    const/4 v4, 0x0

    .line 3669
    .local v4, "valueSting":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get22(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v2

    .line 3670
    .local v2, "simId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3671
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3672
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3673
    .local v4, "valueSting":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3675
    .end local v4    # "valueSting":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleMessage what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3676
    const-string/jumbo v9, " or "

    .line 3675
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 3752
    :pswitch_0
    const-string/jumbo v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupport handle message: what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    :goto_0
    return-void

    .line 3680
    :pswitch_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get8(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    .line 3681
    if-nez v4, :cond_1

    .line 3679
    :goto_1
    invoke-static {v7, v11, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 3681
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 3686
    :pswitch_2
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get8(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    .line 3687
    if-nez v4, :cond_2

    .line 3686
    :goto_2
    const/4 v8, 0x2

    .line 3685
    invoke-static {v7, v8, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 3687
    :cond_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_2

    .line 3692
    :pswitch_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get8(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    .line 3693
    if-nez v4, :cond_3

    .line 3692
    :goto_3
    const/16 v8, 0x8

    .line 3691
    invoke-static {v7, v8, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 3693
    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_3

    .line 3701
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get7(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 3703
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 3704
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v8}, Lcom/mediatek/audioprofile/AudioProfileService;->-get25(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v8

    .line 3701
    invoke-static {v6, v1, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 3711
    :pswitch_5
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get16(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 3718
    :pswitch_6
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get16(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3719
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get16(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-result-object v6

    invoke-static {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3720
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v8, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap2(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3719
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 3729
    :pswitch_7
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get16(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 3733
    :pswitch_8
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->-set1(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 3734
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v6, :cond_4

    .line 3735
    const/4 v5, 0x1

    .line 3738
    .local v5, "vibrationStatus":I
    :goto_4
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get5(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v10, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3740
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get5(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v11, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3742
    const-string/jumbo v6, "AudioProfileService"

    const-string/jumbo v7, "CTS test finish, set vibrate again to make function normal!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3736
    .end local v5    # "vibrationStatus":I
    :cond_4
    const/4 v5, 0x2

    .restart local v5    # "vibrationStatus":I
    goto :goto_4

    .line 3746
    .end local v5    # "vibrationStatus":I
    :pswitch_9
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get8(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v7

    .line 3748
    if-nez v4, :cond_5

    .line 3747
    :goto_5
    const/16 v8, 0x10

    .line 3746
    invoke-static {v7, v8, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 3748
    :cond_5
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    .line 3677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
