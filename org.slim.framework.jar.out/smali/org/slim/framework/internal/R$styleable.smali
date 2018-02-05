.class public final Lorg/slim/framework/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/framework/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ColorPickerPreference:[I

.field public static final ColorPickerPreference_alphaSliderEnabled:I = 0x1

.field public static final ColorPickerPreference_defaultColor:I = 0x0

.field public static final DragSortListView:[I

.field public static final DragSortListView_clickRemoveId:I = 0x11

.field public static final DragSortListView_collapsedHeight:I = 0x1

.field public static final DragSortListView_dragEnabled:I = 0x0

.field public static final DragSortListView_dragHandleId:I = 0x8

.field public static final DragSortListView_dragScrollStart:I = 0x2

.field public static final DragSortListView_dragStartMode:I = 0xb

.field public static final DragSortListView_dropAnimationDuration:I = 0xf

.field public static final DragSortListView_flingHandleId:I = 0x10

.field public static final DragSortListView_floatAlpha:I = 0x4

.field public static final DragSortListView_floatBackgroundColor:I = 0xd

.field public static final DragSortListView_maxDragScrollSpeed:I = 0x3

.field public static final DragSortListView_removeAnimationDuration:I = 0xe

.field public static final DragSortListView_removeEnabled:I = 0xa

.field public static final DragSortListView_removeMode:I = 0xc

.field public static final DragSortListView_slideShuffleSpeed:I = 0x5

.field public static final DragSortListView_sortEnabled:I = 0x9

.field public static final DragSortListView_trackDragSort:I = 0x6

.field public static final DragSortListView_useDefaultController:I = 0x7

.field public static final SlimPreference:[I

.field public static final SlimPreference_hidePreference:I = 0x2

.field public static final SlimPreference_hidePreferenceInt:I = 0x3

.field public static final SlimPreference_hidePreferenceIntDependency:I = 0x4

.field public static final SlimPreference_listDependency:I = 0x1

.field public static final SlimPreference_slimSettingType:I = 0x0

.field public static final SlimSeekBarPreference:[I

.field public static final SlimSeekBarPreference_defaultValue:I = 0x0

.field public static final SlimSeekBarPreference_disableText:I = 0x3

.field public static final SlimSeekBarPreference_interval:I = 0x4

.field public static final SlimSeekBarPreference_minValue:I = 0x5

.field public static final SlimSeekBarPreference_multiplyValue:I = 0x6

.field public static final SlimSeekBarPreference_useMilliSeconds:I = 0x1

.field public static final SlimSeekBarPreference_usePercentage:I = 0x2

.field public static final SlimSeekBarPreferencev2:[I

.field public static final SlimSeekBarPreferencev2_defValue:I = 0x3

.field public static final SlimSeekBarPreferencev2_interval:I = 0x0

.field public static final SlimSeekBarPreferencev2_maxValue:I = 0x2

.field public static final SlimSeekBarPreferencev2_minValue:I = 0x1

.field public static final SlimSeekBarPreferencev2_units:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 732
    const v0, 0x37010008

    const v1, 0x37010009

    .line 731
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/slim/framework/internal/R$styleable;->ColorPickerPreference:[I

    .line 807
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/slim/framework/internal/R$styleable;->DragSortListView:[I

    .line 1063
    const/high16 v0, 0x37010000    # 7.688999E-6f

    const v1, 0x37010010

    const v2, 0x37010011

    const v3, 0x37010012

    .line 1064
    const v4, 0x37010013

    .line 1062
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lorg/slim/framework/internal/R$styleable;->SlimPreference:[I

    .line 1165
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/slim/framework/internal/R$styleable;->SlimSeekBarPreference:[I

    .line 1298
    const v0, 0x37010005

    const v1, 0x37010006

    const v2, 0x37010028

    const v3, 0x37010029

    .line 1299
    const v4, 0x37010030

    .line 1297
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lorg/slim/framework/internal/R$styleable;->SlimSeekBarPreferencev2:[I

    .line 718
    return-void

    .line 807
    nop

    :array_0
    .array-data 4
        0x37010014
        0x37010015
        0x37010016
        0x37010017
        0x37010018
        0x37010019
        0x37010020
        0x37010021
        0x37010022
        0x37010023
        0x37010024
        0x37010025
        0x37010026
        0x37010027
        0x370b0000
        0x370b0001
        0x370b0002
        0x370b0003
    .end array-data

    .line 1165
    :array_1
    .array-data 4
        0x37010001    # 7.689E-6f
        0x37010002    # 7.689001E-6f
        0x37010003
        0x37010004
        0x37010005
        0x37010006
        0x37010007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
