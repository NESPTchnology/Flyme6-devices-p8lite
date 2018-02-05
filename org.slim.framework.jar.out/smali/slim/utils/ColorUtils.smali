.class public Lslim/utils/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darkenColor(I)I
    .locals 9
    .param p0, "color"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    .line 32
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 33
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 34
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 35
    .local v2, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 38
    .local v1, "b":I
    int-to-float v4, v3

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 39
    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 40
    int-to-float v6, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 37
    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static isDarkColor(I)Z
    .locals 8
    .param p0, "color"    # I

    .prologue
    .line 24
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v2, v4

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v4, v6

    .line 24
    add-double/2addr v2, v4

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v4, v6

    .line 24
    add-double/2addr v2, v4

    .line 25
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 24
    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v2

    .line 27
    .local v0, "darkness":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static lightenColor(I)I
    .locals 9
    .param p0, "color"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f99999a    # 1.2f

    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 46
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 47
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 48
    .local v2, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 51
    .local v1, "b":I
    int-to-float v4, v3

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 52
    int-to-float v5, v2

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 53
    int-to-float v6, v1

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 50
    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method
