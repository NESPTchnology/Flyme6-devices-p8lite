.class Lcom/android/server/policy/pocket/PocketLock$1$1;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/pocket/PocketLock$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/pocket/PocketLock$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/pocket/PocketLock$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/pocket/PocketLock$1;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$1$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 86
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0, v2}, Lcom/android/server/policy/pocket/PocketLock;->-set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z

    .line 80
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1$1;->this$1:Lcom/android/server/policy/pocket/PocketLock$1;

    iget-object v0, v0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/pocket/PocketLock;->-set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z

    .line 75
    return-void
.end method
