.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final REFRESH_AND_NOTIFY_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mBuffering:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastNanoTime:J

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimeAdjustment:J

.field private mTimes:[J


# direct methods
.method static synthetic -wrap0(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .locals 0
    .param p1, "refreshTime"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3756
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 3758
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 3759
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 3769
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 3770
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 3771
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 3780
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 3783
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 3785
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3792
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 3793
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3795
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "MediaPlayerMTPEventThread"

    .line 3796
    const/4 v4, -0x2

    .line 3795
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3797
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 3798
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 3800
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 3802
    new-array v2, v5, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 3803
    new-array v2, v5, [J

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 3804
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 3805
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 3782
    return-void

    .line 3786
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 3788
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    goto :goto_0
.end method

.method private getEstimatedTime(JZ)J
    .locals 11
    .param p1, "nanoTime"    # J
    .param p3, "monotonic"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 4061
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_1

    .line 4062
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 4076
    :cond_0
    :goto_0
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    return-wide v4

    .line 4064
    :cond_1
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 4065
    .local v2, "timeSinceRead":J
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 4066
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 4068
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    const-wide/16 v6, 0x2

    div-long v6, v2, v6

    sub-long v0, v4, v6

    .line 4069
    .local v0, "adjustment":J
    cmp-long v4, v0, v8

    if-gtz v4, :cond_2

    .line 4070
    iput-wide v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    goto :goto_0

    .line 4072
    :cond_2
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    goto :goto_0
.end method

.method private declared-synchronized notifySeek()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 3897
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3899
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v5, v6}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 3900
    .local v2, "timeUs":J
    iget-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "MTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSeekComplete at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    :cond_0
    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3903
    .local v1, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v1, :cond_2

    .end local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "timeUs":J
    :cond_1
    :goto_1
    monitor-exit p0

    .line 3896
    return-void

    .line 3906
    .restart local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .restart local v2    # "timeUs":J
    :cond_2
    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3902
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3908
    .end local v1    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "timeUs":J
    :catch_0
    move-exception v0

    .line 3910
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "MTP"

    const-string/jumbo v5, "onSeekComplete but no player"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 3912
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized notifyStop()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 3917
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3918
    .local v0, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v0, :cond_1

    .end local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_0
    monitor-exit p0

    .line 3916
    return-void

    .line 3921
    .restart local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3917
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .locals 22
    .param p1, "refreshTime"    # Z

    .prologue
    monitor-enter p0

    .line 3998
    const/4 v15, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 4005
    .local v12, "nowUs":J
    :goto_0
    move-wide v10, v12

    .line 4007
    .local v10, "nextTimeUs":J
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_0

    monitor-exit p0

    .line 4009
    return-void

    .line 3999
    .end local v10    # "nextTimeUs":J
    .end local v12    # "nowUs":J
    :catch_0
    move-exception v5

    .line 4001
    .local v5, "e":Ljava/lang/IllegalStateException;
    const/4 v15, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 4002
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 4003
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v12

    .restart local v12    # "nowUs":J
    goto :goto_0

    .line 4012
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    .restart local v10    # "nextTimeUs":J
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v15, :cond_4

    .line 4013
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 4014
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v15, "notifyTimedEvent("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, " -> "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4015
    const-string/jumbo v18, ") from {"

    .line 4014
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    const/4 v6, 0x1

    .line 4017
    .local v6, "first":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v18, v0

    const/4 v15, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_3

    aget-wide v16, v18, v15

    .line 4018
    .local v16, "time":J
    const-wide/16 v20, -0x1

    cmp-long v20, v16, v20

    if-nez v20, :cond_1

    .line 4017
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 4021
    :cond_1
    if-nez v6, :cond_2

    const-string/jumbo v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    :cond_2
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4023
    const/4 v6, 0x0

    goto :goto_2

    .line 4025
    .end local v16    # "time":J
    :cond_3
    const-string/jumbo v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4026
    const-string/jumbo v15, "MTP"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    .end local v6    # "first":Z
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 4031
    .local v4, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    const/4 v7, 0x0

    .local v7, "ix":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v15, v15

    if-ge v7, v15, :cond_5

    .line 4032
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v15, v15, v7

    if-nez v15, :cond_7

    .line 4046
    :cond_5
    cmp-long v15, v10, v12

    if-lez v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v15, :cond_d

    .line 4051
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4055
    :goto_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "listener$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4056
    .local v8, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v8, v12, v13}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .end local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v7    # "ix":I
    .end local v8    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    .end local v10    # "nextTimeUs":J
    .end local v12    # "nowUs":J
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 4035
    .restart local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .restart local v7    # "ix":I
    .restart local v10    # "nextTimeUs":J
    .restart local v12    # "nowUs":J
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v18, v15, v7

    const-wide/16 v20, -0x1

    cmp-long v15, v18, v20

    if-gtz v15, :cond_9

    .line 4031
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 4037
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v18, v15, v7

    const-wide/16 v20, 0x3e8

    add-long v20, v20, v12

    cmp-long v15, v18, v20

    if-gtz v15, :cond_b

    .line 4038
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v15, v15, v7

    invoke-virtual {v4, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4039
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, "MTP"

    const-string/jumbo v18, "removed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v18, -0x1

    aput-wide v18, v15, v7

    goto :goto_6

    .line 4041
    :cond_b
    cmp-long v15, v10, v12

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v18, v15, v7

    cmp-long v15, v18, v10

    if-gez v15, :cond_8

    .line 4042
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v10, v15, v7

    goto :goto_6

    .line 4048
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v15, :cond_e

    const-string/jumbo v15, "MTP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "scheduling for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " and "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    :cond_e
    sub-long v18, v10, v12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .restart local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_f
    monitor-exit p0

    .line 3994
    return-void
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    const/4 v5, 0x0

    .line 3926
    const/4 v0, 0x0

    .line 3927
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3928
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_3

    .line 3934
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 3936
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 3937
    .local v1, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    .line 3938
    .local v2, "newTimes":[J
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3939
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3940
    iput-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 3941
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 3944
    .end local v1    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "newTimes":[J
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 3945
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v3, v0

    .line 3946
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v0

    .line 3948
    :cond_2
    return v0

    .line 3927
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scheduleNotification(IJ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3810
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v1, :cond_1

    .line 3811
    if-eqz p1, :cond_0

    if-ne p1, v4, :cond_1

    .line 3812
    :cond_0
    return-void

    .line 3815
    :cond_1
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3817
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3818
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3808
    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 3974
    monitor-enter p0

    .line 3975
    const/4 v0, 0x0

    .line 3976
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3977
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 3978
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v0, 0x1

    .line 3979
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 3978
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3980
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v2, v0, 0x1

    .line 3981
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 3980
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3982
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 3983
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v2

    .line 3990
    :cond_0
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3973
    return-void

    .line 3985
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 3976
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3974
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3823
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3824
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3825
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3826
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3822
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 3832
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3833
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 3831
    :cond_0
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .locals 8
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 4081
    monitor-enter p0

    .line 4084
    :try_start_0
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_5

    .line 4088
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 4089
    .local v2, "nanoTime":J
    if-nez p1, :cond_1

    .line 4090
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v6, 0x12a05f200L

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 4092
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 4093
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    :cond_2
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 4094
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "paused"

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4107
    :cond_3
    :try_start_2
    iput-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    .line 4108
    if-eqz p2, :cond_9

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_9

    .line 4110
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 4111
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    const-wide/32 v6, 0xf4240

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 4114
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 4115
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 4116
    const-wide/16 v4, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 4123
    :cond_4
    :goto_1
    invoke-direct {p0, v2, v3, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 4085
    .end local v2    # "nanoTime":J
    :cond_5
    :try_start_3
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide v4

    .line 4094
    .restart local v2    # "nanoTime":J
    :cond_6
    :try_start_4
    const-string/jumbo v1, "playing"
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 4095
    :catch_0
    move-exception v0

    .line 4096
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v1, :cond_8

    .line 4098
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 4099
    invoke-direct {p0, v2, v3, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    .line 4100
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 4101
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "MTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "illegal state, but pausing: estimating at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    :cond_7
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-wide v4

    .line 4105
    :cond_8
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4081
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "nanoTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4119
    .restart local v2    # "nanoTime":J
    :cond_9
    const-wide/16 v4, 0x0

    :try_start_7
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 3953
    monitor-enter p0

    .line 3954
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 3956
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3952
    return-void

    .line 3953
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBuffering(Z)V
    .locals 3
    .param p1, "buffering"    # Z

    .prologue
    .line 3855
    monitor-enter p0

    .line 3856
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 3858
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3854
    return-void

    .line 3855
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNewPlayer()V
    .locals 3

    .prologue
    .line 3886
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 3887
    monitor-enter p0

    .line 3888
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 3889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 3890
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 3891
    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3885
    :cond_0
    return-void

    .line 3887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPaused(Z)V
    .locals 3
    .param p1, "paused"    # Z

    .prologue
    .line 3839
    monitor-enter p0

    .line 3840
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-eqz v0, :cond_1

    .line 3842
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 3843
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 3844
    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 3838
    return-void

    .line 3846
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 3847
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 3848
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3839
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3877
    monitor-enter p0

    .line 3878
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 3879
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 3880
    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3876
    return-void

    .line 3877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStopped()V
    .locals 3

    .prologue
    .line 3864
    monitor-enter p0

    .line 3865
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MTP"

    const-string/jumbo v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 3867
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 3868
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 3869
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    .line 3870
    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3863
    return-void

    .line 3864
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 3961
    monitor-enter p0

    .line 3962
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MTP"

    const-string/jumbo v2, "scheduleUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 3965
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-nez v1, :cond_1

    .line 3966
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 3967
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 3960
    return-void

    .line 3961
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
