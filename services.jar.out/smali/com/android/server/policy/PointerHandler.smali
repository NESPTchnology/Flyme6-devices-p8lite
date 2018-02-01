.class public Lcom/android/server/policy/PointerHandler;
.super Ljava/lang/Object;
.source "PointerHandler.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PointerHandler$ThreeFingerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SWIPE_THRESHOLD:I = 0xaf

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownY:I

.field private mListener:Lcom/android/server/policy/PointerHandler$ThreeFingerListener;

.field private mScreenTouched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/server/policy/PointerHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PointerHandler;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScreenTouched()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/server/policy/PointerHandler;->mScreenTouched:Z

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 37
    .local v1, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 38
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PointerHandler;->mScreenTouched:Z

    .line 35
    :goto_1
    return-void

    .line 41
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/PointerHandler;->mDownY:I

    .line 43
    :pswitch_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PointerHandler;->mScreenTouched:Z

    goto :goto_1

    .line 47
    :pswitch_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/server/policy/PointerHandler;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x432f0000    # 175.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/android/server/policy/PointerHandler;->mListener:Lcom/android/server/policy/PointerHandler$ThreeFingerListener;

    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/server/policy/PointerHandler;->mListener:Lcom/android/server/policy/PointerHandler$ThreeFingerListener;

    invoke-interface {v2}, Lcom/android/server/policy/PointerHandler$ThreeFingerListener;->onThreeFingersSwipe()V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setListener(Lcom/android/server/policy/PointerHandler$ThreeFingerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/PointerHandler$ThreeFingerListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/policy/PointerHandler;->mListener:Lcom/android/server/policy/PointerHandler$ThreeFingerListener;

    .line 62
    return-void
.end method
