.class final synthetic Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;
.super Ljava/lang/Object;
.source "BoostFramework.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$duration:I

.field private synthetic val$ev:Landroid/view/MotionEvent;

.field private synthetic val$list:[I

.field private synthetic val$metrics:Landroid/util/DisplayMetrics;

.field private synthetic val$this:Landroid/util/BoostFramework;


# direct methods
.method public synthetic constructor <init>(Landroid/util/BoostFramework;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$this:Landroid/util/BoostFramework;

    iput-object p2, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$ev:Landroid/view/MotionEvent;

    iput-object p3, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$metrics:Landroid/util/DisplayMetrics;

    iput p4, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$duration:I

    iput-object p5, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$list:[I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$this:Landroid/util/BoostFramework;

    iget-object v1, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$ev:Landroid/view/MotionEvent;

    iget-object v2, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$metrics:Landroid/util/DisplayMetrics;

    iget v3, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$duration:I

    iget-object v4, p0, Landroid/util/BoostFramework$-void_perfLockAcquireTouch_android_view_MotionEvent_ev_android_util_DisplayMetrics_metrics_int_duration_int__list_LambdaImpl0;->val$list:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/BoostFramework;->-android_util_BoostFramework_lambda$3(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)V

    return-void
.end method
