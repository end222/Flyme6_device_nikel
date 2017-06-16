.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 60
    return-void
.end method


# virtual methods
.method public getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-super {p0, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0

    .line 99
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/text/TextPaint;->getStringFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFontMetricsInt([CLandroid/graphics/Paint$FontMetricsInt;II)I
    .locals 1
    .param p1, "text"    # [C
    .param p2, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p3, "pos"    # I
    .param p4, "len"    # I

    .prologue
    .line 106
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 107
    :cond_0
    invoke-super {p0, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0

    .line 109
    :cond_1
    invoke-static {p1, p3, p4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/text/TextPaint;->getStringFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 71
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 72
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 73
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 74
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 75
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 76
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 77
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 68
    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .prologue
    .line 87
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    .line 88
    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    .line 86
    return-void
.end method