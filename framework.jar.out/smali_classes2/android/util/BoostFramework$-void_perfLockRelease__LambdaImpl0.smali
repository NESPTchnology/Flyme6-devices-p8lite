.class final synthetic Landroid/util/BoostFramework$-void_perfLockRelease__LambdaImpl0;
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
    name = "-void_perfLockRelease__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Landroid/util/BoostFramework;


# direct methods
.method public synthetic constructor <init>(Landroid/util/BoostFramework;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/BoostFramework$-void_perfLockRelease__LambdaImpl0;->val$this:Landroid/util/BoostFramework;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/util/BoostFramework$-void_perfLockRelease__LambdaImpl0;->val$this:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->-android_util_BoostFramework_lambda$2()V

    return-void
.end method
