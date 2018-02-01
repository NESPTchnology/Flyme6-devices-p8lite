.class final synthetic Landroid/util/BoostFramework$-void_perfLockAcquire_int_duration_int__list_LambdaImpl0;
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
    name = "-void_perfLockAcquire_int_duration_int__list_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$duration:I

.field private synthetic val$list:[I

.field private synthetic val$this:Landroid/util/BoostFramework;


# direct methods
.method public synthetic constructor <init>(Landroid/util/BoostFramework;I[I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/BoostFramework$-void_perfLockAcquire_int_duration_int__list_LambdaImpl0;->val$this:Landroid/util/BoostFramework;

    iput p2, p0, Landroid/util/BoostFramework$-void_perfLockAcquire_int_duration_int__list_LambdaImpl0;->val$duration:I

    iput-object p3, p0, Landroid/util/BoostFramework$-void_perfLockAcquire_int_duration_int__list_LambdaImpl0;->val$list:[I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/util/BoostFramework$-void_perfLockAcquire_int_duration_int__list_LambdaImpl0;->val$this:Landroid/util/BoostFramework;

    iget v1, p0, Landroid/util/BoostFramework$-void_perfLockAcquire_int_duration_int__list_LambdaImpl0;->val$duration:I

    iget-object v2, p0, Landroid/util/BoostFramework$-void_perfLockAcquire_int_duration_int__list_LambdaImpl0;->val$list:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->-android_util_BoostFramework_lambda$1(I[I)V

    return-void
.end method
