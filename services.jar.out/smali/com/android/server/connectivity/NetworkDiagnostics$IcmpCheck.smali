.class Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;
.super Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final TIMEOUT_RECV:I = 0x12c

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkDiagnostics;
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 349
    iget v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_0

    .line 350
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 351
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 352
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string/jumbo v1, "ICMPv6"

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " dst{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 346
    return-void

    .line 354
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 355
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 356
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string/jumbo v1, "ICMPv4"

    iput-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get0(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 369
    return-void

    .line 373
    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " src{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->getSocketAddressString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 381
    const/16 v1, 0x8

    new-array v10, v1, [B

    .line 382
    iget v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v1, v10, v2

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput-byte v1, v10, v2

    .line 385
    .local v10, "icmpPacket":[B
    const/4 v0, 0x0

    .line 386
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 387
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->-wrap0()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->-get1(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v4

    const-wide/16 v6, 0x190

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 388
    add-int/lit8 v0, v0, 0x1

    .line 389
    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, v10, v1

    .line 391
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v10

    const/4 v3, 0x0

    invoke-static {v1, v10, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    const/16 v1, 0x200

    :try_start_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 399
    .local v11, "reply":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 401
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 407
    .end local v11    # "reply":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 411
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->close()V

    .line 363
    return-void

    .line 374
    .end local v0    # "count":I
    .end local v10    # "icmpPacket":[B
    :catch_0
    move-exception v9

    .line 375
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 376
    return-void

    .line 392
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v10    # "icmpPacket":[B
    :catch_1
    move-exception v9

    .line 393
    .restart local v9    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 403
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method
