.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$1;,
        Landroid/content/res/CompatibilityInfo$2;,
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field static final TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 606
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    .line 605
    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 276
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 275
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 270
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 271
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 272
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 12
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v5, 0x0

    .line 103
    .local v5, "compatFlags":I
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v10, :cond_0

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v10, :cond_4

    .line 106
    :cond_0
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v10, :cond_b

    .line 107
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 109
    .local v8, "required":I
    :goto_0
    if-nez v8, :cond_1

    .line 110
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 112
    :cond_1
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v10, :cond_c

    .line 113
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 114
    .local v4, "compat":I
    :goto_1
    if-ge v4, v8, :cond_2

    .line 115
    move v4, v8

    .line 117
    :cond_2
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 119
    .local v7, "largest":I
    const/16 v10, 0x140

    if-le v8, v10, :cond_d

    .line 126
    const/4 v5, 0x4

    .line 141
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v6

    .line 142
    .local v6, "density":I
    if-eqz v6, :cond_10

    .line 143
    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 144
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 145
    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 146
    or-int/lit8 v5, v5, 0x1

    .line 258
    .end local v4    # "compat":I
    .end local v7    # "largest":I
    .end local v8    # "required":I
    :goto_3
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 100
    return-void

    .line 104
    .end local v6    # "density":I
    :cond_4
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-nez v10, :cond_0

    .line 159
    const/4 v0, 0x2

    .line 165
    .local v0, "EXPANDABLE":I
    const/16 v1, 0x8

    .line 171
    .local v1, "LARGE_SCREENS":I
    const/16 v2, 0x20

    .line 173
    .local v2, "XLARGE_SCREENS":I
    const/4 v9, 0x0

    .line 177
    .local v9, "sizeInfo":I
    const/4 v3, 0x0

    .line 179
    .local v3, "anyResizeable":Z
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_5

    .line 180
    const/16 v9, 0x8

    .line 181
    const/4 v3, 0x1

    .line 182
    if-nez p4, :cond_5

    .line 186
    or-int/lit8 v9, v9, 0x22

    .line 189
    :cond_5
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x80000

    and-int/2addr v10, v11

    if-eqz v10, :cond_6

    .line 190
    const/4 v3, 0x1

    .line 191
    if-nez p4, :cond_6

    .line 192
    or-int/lit8 v9, v9, 0x22

    .line 195
    :cond_6
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_7

    .line 196
    const/4 v3, 0x1

    .line 197
    or-int/lit8 v9, v9, 0x2

    .line 200
    :cond_7
    if-eqz p4, :cond_8

    .line 205
    and-int/lit8 v9, v9, -0x3

    .line 208
    :cond_8
    const/16 v5, 0x8

    .line 209
    and-int/lit8 v10, p2, 0xf

    packed-switch v10, :pswitch_data_0

    .line 228
    :cond_9
    :goto_4
    const/high16 v10, 0x10000000

    and-int/2addr v10, p2

    if-eqz v10, :cond_14

    .line 229
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_13

    .line 230
    and-int/lit8 v5, v5, -0x9

    .line 239
    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v6

    .line 240
    .restart local v6    # "density":I
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x2000

    if-nez v10, :cond_15

    .line 241
    const/16 v10, 0xa0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 242
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    .line 243
    const/high16 v11, 0x43200000    # 160.0f

    .line 242
    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 244
    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 245
    or-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 108
    .end local v0    # "EXPANDABLE":I
    .end local v1    # "LARGE_SCREENS":I
    .end local v2    # "XLARGE_SCREENS":I
    .end local v3    # "anyResizeable":Z
    .end local v6    # "density":I
    .end local v9    # "sizeInfo":I
    :cond_b
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto/16 :goto_0

    .restart local v8    # "required":I
    :cond_c
    move v4, v8

    .line 113
    goto/16 :goto_1

    .line 127
    .restart local v4    # "compat":I
    .restart local v7    # "largest":I
    :cond_d
    if-eqz v7, :cond_e

    if-le p3, v7, :cond_e

    .line 131
    const/16 v5, 0xa

    .line 127
    goto/16 :goto_2

    .line 132
    :cond_e
    if-lt v4, p3, :cond_f

    .line 135
    const/4 v5, 0x4

    goto/16 :goto_2

    .line 136
    :cond_f
    if-eqz p4, :cond_3

    .line 139
    const/16 v5, 0x8

    goto/16 :goto_2

    .line 149
    .restart local v6    # "density":I
    :cond_10
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 150
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 151
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_3

    .line 211
    .end local v4    # "compat":I
    .end local v6    # "density":I
    .end local v7    # "largest":I
    .end local v8    # "required":I
    .restart local v0    # "EXPANDABLE":I
    .restart local v1    # "LARGE_SCREENS":I
    .restart local v2    # "XLARGE_SCREENS":I
    .restart local v3    # "anyResizeable":Z
    .restart local v9    # "sizeInfo":I
    :pswitch_0
    and-int/lit8 v10, v9, 0x20

    if-eqz v10, :cond_11

    .line 212
    and-int/lit8 v5, v5, -0x9

    .line 214
    :cond_11
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x80000

    and-int/2addr v10, v11

    if-eqz v10, :cond_9

    .line 215
    or-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 219
    :pswitch_1
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_12

    .line 220
    and-int/lit8 v5, v5, -0x9

    .line 222
    :cond_12
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_9

    .line 223
    or-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 231
    :cond_13
    if-nez v3, :cond_a

    .line 232
    or-int/lit8 v5, v5, 0x2

    goto :goto_5

    .line 235
    :cond_14
    and-int/lit8 v5, v5, -0x9

    .line 236
    or-int/lit8 v5, v5, 0x4

    goto :goto_5

    .line 246
    .restart local v6    # "density":I
    :cond_15
    if-eqz v6, :cond_16

    .line 247
    iput v6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 248
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 249
    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 250
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 252
    :cond_16
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 253
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 254
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_3

    .line 209
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 618
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 14
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 501
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 502
    .local v11, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 504
    .local v1, "height":I
    if-ge v11, v1, :cond_3

    .line 505
    move v9, v11

    .line 506
    .local v9, "shortSize":I
    move v2, v1

    .line 511
    .local v2, "longSize":I
    :goto_0
    iget v12, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x43a00000    # 320.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 512
    .local v5, "newShortSize":I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 513
    .local v0, "aspect":F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_0

    .line 514
    const v0, 0x3fe3bbbc

    .line 516
    :cond_0
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 518
    .local v4, "newLongSize":I
    if-ge v11, v1, :cond_4

    .line 519
    move v6, v5

    .line 520
    .local v6, "newWidth":I
    move v3, v4

    .line 526
    .local v3, "newHeight":I
    :goto_1
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 527
    .local v10, "sw":F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 528
    .local v8, "sh":F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_5

    move v7, v10

    .line 529
    .local v7, "scale":F
    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v7, v12

    if-gez v12, :cond_1

    .line 530
    const/high16 v7, 0x3f800000    # 1.0f

    .line 533
    :cond_1
    if-eqz p1, :cond_2

    .line 534
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 535
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 538
    :cond_2
    return v7

    .line 508
    .end local v0    # "aspect":F
    .end local v2    # "longSize":I
    .end local v3    # "newHeight":I
    .end local v4    # "newLongSize":I
    .end local v5    # "newShortSize":I
    .end local v6    # "newWidth":I
    .end local v7    # "scale":F
    .end local v8    # "sh":F
    .end local v9    # "shortSize":I
    .end local v10    # "sw":F
    :cond_3
    move v9, v1

    .line 509
    .restart local v9    # "shortSize":I
    move v2, v11

    .restart local v2    # "longSize":I
    goto :goto_0

    .line 522
    .restart local v0    # "aspect":F
    .restart local v4    # "newLongSize":I
    .restart local v5    # "newShortSize":I
    :cond_4
    move v6, v4

    .line 523
    .restart local v6    # "newWidth":I
    move v3, v5

    .restart local v3    # "newHeight":I
    goto :goto_1

    .restart local v8    # "sh":F
    .restart local v10    # "sw":F
    :cond_5
    move v7, v8

    .line 528
    goto :goto_2
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 297
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    .line 479
    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 482
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 483
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 484
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 486
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 487
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 489
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 474
    .end local v0    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 453
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 456
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 462
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 464
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 465
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 466
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 467
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 468
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 469
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 470
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 452
    .end local v0    # "invertedRatio":F
    :cond_0
    return-void

    .line 458
    :cond_1
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 459
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 543
    if-ne p0, p1, :cond_0

    .line 544
    return v6

    .line 547
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 548
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_1

    return v5

    .line 549
    :cond_1
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_2

    return v5

    .line 550
    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    return v5

    .line 551
    :cond_3
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v5

    .line 552
    :cond_4
    return v6

    .line 553
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 585
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 586
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 587
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 588
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 589
    return v0
.end method

.method public isScalingRequired()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 285
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public neverSupportsScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 293
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public supportsScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 561
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 567
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    const-string/jumbo v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    const-string/jumbo v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 576
    const-string/jumbo v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 599
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 602
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 598
    return-void
.end method
