.class public Lcom/android/internal/util/pa/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 96
    if-nez p0, :cond_0

    .line 97
    return-object v4

    .line 100
    :cond_0
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 101
    nop

    nop

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 104
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 106
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 107
    .local v2, "height":I
    if-lez v3, :cond_2

    if-lez v2, :cond_2

    .line 108
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    return-object v0
.end method

.method public static getDominantColor(Landroid/graphics/Bitmap;Z)I
    .locals 20
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "applyThreshold"    # Z

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v2, -0x3

    return v2

    .line 52
    :cond_0
    const/16 v2, 0x24

    new-array v13, v2, [I

    .line 53
    .local v13, "colorBins":[I
    const/4 v15, -0x1

    .line 54
    .local v15, "maxBin":I
    const/16 v2, 0x24

    new-array v0, v2, [F

    move-object/from16 v17, v0

    .line 55
    .local v17, "sumHue":[F
    const/16 v2, 0x24

    new-array v0, v2, [F

    move-object/from16 v18, v0

    .line 56
    .local v18, "sumSat":[F
    const/16 v2, 0x24

    new-array v0, v2, [F

    move-object/from16 v19, v0

    .line 57
    .local v19, "sumVal":[F
    const/4 v2, 0x3

    new-array v14, v2, [F

    .line 59
    .local v14, "hsv":[F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 60
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 61
    .local v5, "width":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 62
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 63
    const/16 v16, 0x0

    .local v16, "row":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_6

    .line 64
    const/4 v12, 0x0

    .local v12, "col":I
    :goto_1
    if-ge v12, v5, :cond_5

    .line 65
    mul-int v2, v16, v5

    add-int/2addr v2, v12

    aget v11, v3, v2

    .line 66
    .local v11, "c":I
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v4, 0x80

    if-ge v2, v4, :cond_2

    .line 64
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 69
    :cond_2
    invoke-static {v11, v14}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 71
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    aget v2, v14, v2

    const v4, 0x3eb33333    # 0.35f

    cmpg-float v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x2

    aget v2, v14, v2

    const v4, 0x3eb33333    # 0.35f

    cmpg-float v2, v2, v4

    if-lez v2, :cond_1

    .line 75
    :cond_3
    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v2, v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v10, v6

    .line 76
    .local v10, "bin":I
    aget v2, v17, v10

    const/4 v4, 0x0

    aget v4, v14, v4

    add-float/2addr v2, v4

    aput v2, v17, v10

    .line 77
    aget v2, v18, v10

    const/4 v4, 0x1

    aget v4, v14, v4

    add-float/2addr v2, v4

    aput v2, v18, v10

    .line 78
    aget v2, v19, v10

    const/4 v4, 0x2

    aget v4, v14, v4

    add-float/2addr v2, v4

    aput v2, v19, v10

    .line 79
    aget v2, v13, v10

    add-int/lit8 v2, v2, 0x1

    aput v2, v13, v10

    .line 80
    if-ltz v15, :cond_4

    aget v2, v13, v10

    aget v4, v13, v15

    if-le v2, v4, :cond_1

    .line 81
    :cond_4
    move v15, v10

    goto :goto_2

    .line 63
    .end local v10    # "bin":I
    .end local v11    # "c":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 86
    .end local v12    # "col":I
    :cond_6
    if-gez v15, :cond_7

    .line 87
    const/4 v2, -0x3

    return v2

    .line 89
    :cond_7
    aget v2, v17, v15

    aget v4, v13, v15

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x0

    aput v2, v14, v4

    .line 90
    aget v2, v18, v15

    aget v4, v13, v15

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v14, v4

    .line 91
    aget v2, v19, v15

    aget v4, v13, v15

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x2

    aput v2, v14, v4

    .line 92
    invoke-static {v14}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    return v2
.end method

.method public static getIconColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, -0x3

    .line 28
    if-nez p0, :cond_0

    .line 29
    return v3

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 32
    return v3

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 35
    .local v1, "copyDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 36
    return v3

    .line 38
    :cond_2
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 39
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    return v2

    .line 41
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {v1}, Lcom/android/internal/util/pa/ColorUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 43
    return v3

    .line 45
    :cond_4
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/util/pa/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;Z)I

    move-result v2

    return v2
.end method

.method public static isColorDark(I)Z
    .locals 8
    .param p0, "color"    # I

    .prologue
    .line 121
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 122
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v4, v6

    .line 121
    add-double/2addr v2, v4

    .line 122
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 121
    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v2

    .line 123
    .local v0, "darkness":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
