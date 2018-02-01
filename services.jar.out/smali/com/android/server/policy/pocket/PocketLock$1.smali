.class Lcom/android/server/policy/pocket/PocketLock$1;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/pocket/PocketLock;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/pocket/PocketLock;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/pocket/PocketLock;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/pocket/PocketLock;
    .param p2, "val$animate"    # Z

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    iput-boolean p2, p0, Lcom/android/server/policy/pocket/PocketLock$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get1(Lcom/android/server/policy/pocket/PocketLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get0(Lcom/android/server/policy/pocket/PocketLock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->val$animate:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/pocket/PocketLock$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/pocket/PocketLock$1$1;-><init>(Lcom/android/server/policy/pocket/PocketLock$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/android/server/policy/pocket/PocketLock$1$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/pocket/PocketLock$1$2;-><init>(Lcom/android/server/policy/pocket/PocketLock$1;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 62
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 101
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$1;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->-wrap0(Lcom/android/server/policy/pocket/PocketLock;)V

    goto :goto_0
.end method
