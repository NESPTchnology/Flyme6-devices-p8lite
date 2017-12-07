.class public Landroid/app/ActivityManager$StackId;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackId"
.end annotation


# static fields
.field public static final DOCKED_STACK_ID:I = 0x3

.field public static final FIRST_DYNAMIC_STACK_ID:I = 0x5

.field public static final FIRST_STATIC_STACK_ID:I = 0x0

.field public static final FREEFORM_WORKSPACE_STACK_ID:I = 0x2

.field public static final FULLSCREEN_WORKSPACE_STACK_ID:I = 0x1

.field public static final HOME_STACK_ID:I = 0x0

.field public static final INVALID_STACK_ID:I = -0x1

.field public static final LAST_STATIC_STACK_ID:I = 0x4

.field public static final PINNED_STACK_ID:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activitiesCanRequestVisibleBehind(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 701
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static allowTopTaskToReturnHome(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 648
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canReceiveKeys(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 629
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMovementAnimations(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 717
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWindowDecor(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 545
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWindowShadow(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 538
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllowedOverLockscreen(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 636
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isAlwaysOnTop(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 640
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDynamicStacksVisibleBehindAllowed(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 565
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiWindowStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 692
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 693
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizeableByDockedStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 581
    :cond_0
    return v0
.end method

.method public static isStaticStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 530
    if-ltz p0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTaskResizeAllowed(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 553
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTaskResizeableByDockedStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 590
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 591
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 590
    :cond_0
    return v0
.end method

.method public static keepFocusInStackIfPossible(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 573
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 574
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 574
    :cond_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static keepVisibleDeadAppWindowOnScreen(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 664
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normallyFullscreenWindows(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 682
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 683
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 682
    :cond_0
    return v0
.end method

.method public static persistTaskBounds(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 558
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceWindowsOnTaskMove(II)Z
    .locals 2
    .param p0, "sourceStackId"    # I
    .param p1, "targetStackId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 600
    if-eq p0, v1, :cond_0

    .line 601
    if-ne p1, v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 601
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resizeStackWithLaunchBounds(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 656
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tasksAreFloating(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 610
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 611
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useAnimationSpecForAppTransition(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 622
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 623
    if-ne p0, v0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v0

    .line 623
    :cond_1
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 624
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWindowFrameForBackdrop(I)Z
    .locals 2
    .param p0, "stackId"    # I

    .prologue
    const/4 v0, 0x1

    .line 672
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static windowsAreScaleable(I)Z
    .locals 1
    .param p0, "stackId"    # I

    .prologue
    .line 709
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
