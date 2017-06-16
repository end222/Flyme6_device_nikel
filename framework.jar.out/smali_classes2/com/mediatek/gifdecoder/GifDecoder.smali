.class public Lcom/mediatek/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# static fields
.field public static final INVALID_VALUE:I = 0x0

.field private static final MINIMAL_DURATION:I = 0x28

.field private static final TAG:Ljava/lang/String; = "GifDecoder"


# instance fields
.field private mMovie:Landroid/graphics/Movie;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string/jumbo v0, "GifDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<GifDecoder> (is="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const-string/jumbo v0, "GifDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<GifDecoder> (pathName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez p1, :cond_0

    .line 118
    return-void

    .line 119
    :cond_0
    invoke-static {p1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    .line 115
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 105
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    .line 102
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 133
    return-void

    .line 134
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->close()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 131
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrameBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "frameIndex"    # I

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 221
    return-object v1

    .line 222
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0, p1}, Landroid/graphics/Movie;->gifFrameBitmap(I)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFrameDuration(I)I
    .locals 2
    .param p1, "frameIndex"    # I

    .prologue
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 204
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 205
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1, p1}, Landroid/graphics/Movie;->gifFrameDuration(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 206
    .local v0, "duration":I
    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 207
    const/16 v0, 0x28

    :cond_1
    monitor-exit p0

    .line 208
    return v0

    .end local v0    # "duration":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalDuration()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 176
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalFrameCount()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 190
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->gifTotalFrameCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 149
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gifdecoder/GifDecoder;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method