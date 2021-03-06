.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$FlymeInjector;
    }
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field mFlymeDragTouchDownX:F

.field mFlymeDragTouchDownY:F

.field mFlymeHalfThumbWidth:I

.field mFlymeInDragoning:Z

.field mFlymeTouchDownProgress:I

.field mFlymeTouchSlopSquare:I

.field protected mTouchScrollMode:I

.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 47
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 48
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 49
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 50
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 64
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 70
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 47
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 48
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 49
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 50
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 64
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 70
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 47
    iput-object v10, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 48
    iput-object v10, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 49
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 50
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 64
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 70
    iput v8, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 95
    sget-object v5, Lcom/android/internal/R$styleable;->SeekBar:[I

    .line 94
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 98
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    const/4 v5, -0x1

    .line 101
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 102
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 101
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 103
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 106
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 108
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 111
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 114
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v5

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 115
    .local v3, "thumbOffset":I
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 117
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 118
    .local v4, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    if-eqz v4, :cond_2

    .line 121
    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v5, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 122
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v1, v9, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 123
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->initFlymeExtraFields(Landroid/widget/AbsSeekBar;)V

    .line 91
    return-void

    .line 125
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 265
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 271
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 277
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 263
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 678
    :cond_0
    return-void
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 447
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 448
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 637
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 635
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 17
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .prologue
    .line 461
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v13, p1, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v1, v13, v14

    .line 462
    .local v1, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 463
    .local v11, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 464
    .local v9, "thumbHeight":I
    sub-int/2addr v1, v11

    .line 467
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v1, v13

    .line 469
    int-to-float v13, v1

    mul-float v13, v13, p3

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v10, v13

    .line 472
    .local v10, "thumbPos":I
    const/high16 v13, -0x80000000

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 474
    .local v7, "oldBounds":Landroid/graphics/Rect;
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 475
    .local v12, "top":I
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 481
    .end local v7    # "oldBounds":Landroid/graphics/Rect;
    .local v3, "bottom":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v13, :cond_2

    sub-int v4, v1, v10

    .line 482
    .local v4, "left":I
    :goto_1
    add-int v8, v4, v11

    .line 484
    .local v8, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 485
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int v5, v13, v14

    .line 487
    .local v5, "offsetX":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 488
    .local v6, "offsetY":I
    add-int v13, v4, v5

    add-int v14, v12, v6

    .line 489
    add-int v15, v8, v5

    add-int v16, v3, v6

    .line 488
    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 493
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 460
    return-void

    .line 477
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bottom":I
    .end local v4    # "left":I
    .end local v8    # "right":I
    .end local v12    # "top":I
    :cond_1
    move/from16 v12, p4

    .line 478
    .restart local v12    # "top":I
    add-int v3, p4, v9

    .restart local v3    # "bottom":I
    goto :goto_0

    .line 481
    :cond_2
    move v4, v10

    .restart local v4    # "left":I
    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 644
    .local v4, "width":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 645
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 647
    .local v5, "x":I
    const/4 v2, 0x0

    .line 648
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_2

    .line 649
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_0

    .line 650
    const/4 v3, 0x0

    .line 667
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 668
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 670
    int-to-float v6, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 671
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    .line 642
    return-void

    .line 651
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_1

    .line 652
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 654
    .end local v3    # "scale":F
    :cond_1
    sub-int v6, v0, v5

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 655
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 658
    .end local v3    # "scale":F
    :cond_2
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    .line 659
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_0

    .line 660
    .end local v3    # "scale":F
    :cond_3
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    .line 661
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 663
    .end local v3    # "scale":F
    :cond_4
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 664
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 414
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v9, p2, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v1, v9, v10

    .line 415
    .local v1, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 416
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 420
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 421
    .local v6, "trackHeight":I
    if-nez v2, :cond_2

    const/4 v3, 0x0

    .line 426
    .local v3, "thumbHeight":I
    :goto_0
    if-le v3, v6, :cond_3

    .line 427
    sub-int v9, v1, v3

    div-int/lit8 v0, v9, 0x2

    .line 428
    .local v0, "offsetHeight":I
    sub-int v9, v3, v6

    div-int/lit8 v9, v9, 0x2

    add-int v7, v0, v9

    .line 429
    .local v7, "trackOffset":I
    add-int/lit8 v4, v0, 0x0

    .line 436
    .local v4, "thumbOffset":I
    :goto_1
    if-eqz v5, :cond_0

    .line 437
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v9, v10

    .line 438
    .local v8, "trackWidth":I
    add-int v9, v7, v6

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 441
    .end local v8    # "trackWidth":I
    :cond_0
    if-eqz v2, :cond_1

    .line 442
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v9

    invoke-direct {p0, p1, v2, v9, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 413
    :cond_1
    return-void

    .line 421
    .end local v0    # "offsetHeight":I
    .end local v3    # "thumbHeight":I
    .end local v4    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .restart local v3    # "thumbHeight":I
    goto :goto_0

    .line 431
    :cond_3
    sub-int v9, v1, v6

    div-int/lit8 v0, v9, 0x2

    .line 432
    .restart local v0    # "offsetHeight":I
    add-int/lit8 v7, v0, 0x0

    .line 433
    .restart local v7    # "trackOffset":I
    sub-int v9, v6, v3

    div-int/lit8 v9, v9, 0x2

    add-int v4, v0, v9

    .restart local v4    # "thumbOffset":I
    goto :goto_1
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 539
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 543
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->drawThumb(Landroid/widget/AbsSeekBar;Landroid/graphics/Canvas;)V

    .line 544
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 538
    :cond_0
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 517
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 518
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_0

    .line 519
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 520
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 521
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 522
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 523
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 524
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 527
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 528
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 516
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 384
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 386
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 383
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 369
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 371
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 372
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 373
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 376
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 377
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 368
    :cond_1
    return-void

    .line 373
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 730
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->invalidateThumb(Landroid/widget/AbsSeekBar;)V

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 362
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 359
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 510
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 511
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 509
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 738
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 740
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 741
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 743
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 744
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 735
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 707
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 709
    .local v0, "increment":I
    packed-switch p1, :pswitch_data_0

    .line 725
    .end local v0    # "increment":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 711
    .restart local v0    # "increment":I
    :pswitch_0
    neg-int v0, v0

    .line 714
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-int v0, v0

    .line 717
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 719
    return v2

    .line 709
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    monitor-enter p0

    .line 551
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 553
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 554
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 555
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 556
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 557
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 558
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 559
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 561
    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 562
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 564
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    .line 565
    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    .line 564
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 550
    return-void

    .line 553
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .restart local v3    # "thumbHeight":I
    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "thumbHeight":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZI)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 393
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    .line 395
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 396
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 402
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 392
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 503
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 500
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 780
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 782
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 783
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 789
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 779
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 408
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 410
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 407
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 687
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 695
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 632
    :cond_0
    :goto_0
    return v3

    .line 571
    :cond_1
    return v2

    .line 576
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzInitTouchDownStates(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 580
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 581
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->invalidateThumb(Landroid/widget/AbsSeekBar;)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-static {p0, p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzInitTouchDownStates2(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzProcessTouchAction(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .local v0, "x":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 595
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 596
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 597
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->invalidateThumb(Landroid/widget/AbsSeekBar;)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_6

    invoke-static {p0, p1}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzProcessTouchAction(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->mzSetInDragoning(Landroid/widget/AbsSeekBar;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    :pswitch_3
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x2000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 752
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    return v3

    .line 756
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 757
    return v4

    .line 760
    :cond_1
    const/16 v1, 0x1000

    if-eq p1, v1, :cond_2

    .line 761
    if-ne p1, v5, :cond_5

    .line 762
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 763
    .local v0, "increment":I
    if-ne p1, v5, :cond_3

    .line 764
    neg-int v0, v0

    .line 768
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 769
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 770
    return v3

    .line 772
    :cond_4
    return v4

    .line 775
    .end local v0    # "increment":I
    :cond_5
    return v4
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 327
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 326
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    monitor-enter p0

    .line 344
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 346
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 343
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 310
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 308
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 147
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 148
    const/4 v0, 0x1

    .line 153
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 155
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 165
    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 172
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 175
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 177
    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 179
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v1    # "state":[I
    :cond_3

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsSeekBar$FlymeInjector;->setThumbWidth(Landroid/widget/AbsSeekBar;)V

    return-void

    .end local v0    # "needUpdate":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 297
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 298
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 296
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 213
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 216
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 212
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 244
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    .line 247
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 243
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 355
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method flymeGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method flymeGetFieldKeyProgressIncrement()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method flymeGetFieldPaddingBottom()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    return v0
.end method

.method flymeGetFieldPaddingLeft()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    return v0
.end method

.method flymeGetFieldPaddingRight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    return v0
.end method

.method flymeGetFieldPaddingTop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    return v0
.end method

.method flymeGetFieldScaledTouchSlop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    return v0
.end method

.method flymeGetFieldThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method flymeGetFieldThumbOffset()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method flymeInvokeMethodAttemptClaimDrag()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method flymeInvokeMethodTrackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected setTouchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    iget v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchScrollMode:I

    :cond_0
    return-void
.end method
