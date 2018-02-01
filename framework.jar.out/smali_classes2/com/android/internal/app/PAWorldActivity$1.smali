.class Lcom/android/internal/app/PAWorldActivity$1;
.super Ljava/lang/Object;
.source "PAWorldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PAWorldActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clicks:I

.field final synthetic this$0:Lcom/android/internal/app/PAWorldActivity;

.field final synthetic val$letter:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PAWorldActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PAWorldActivity;
    .param p2, "val$letter"    # Landroid/widget/TextView;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/app/PAWorldActivity$1;->this$0:Lcom/android/internal/app/PAWorldActivity;

    iput-object p2, p0, Lcom/android/internal/app/PAWorldActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget v1, p0, Lcom/android/internal/app/PAWorldActivity$1;->clicks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/PAWorldActivity$1;->clicks:I

    .line 118
    iget v1, p0, Lcom/android/internal/app/PAWorldActivity$1;->clicks:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/internal/app/PAWorldActivity$1;->this$0:Lcom/android/internal/app/PAWorldActivity;

    iget-object v1, v1, Lcom/android/internal/app/PAWorldActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->performLongClick()Z

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/PAWorldActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 123
    iget-object v1, p0, Lcom/android/internal/app/PAWorldActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    float-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    int-to-float v0, v1

    .line 124
    .local v0, "offset":F
    iget-object v1, p0, Lcom/android/internal/app/PAWorldActivity$1;->val$letter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 125
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    const/16 v1, 0x168

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v1, v0

    .line 124
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 126
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 127
    const-wide/16 v2, 0x2bc

    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 116
    return-void

    .line 125
    :cond_1
    const/16 v1, -0x168

    goto :goto_0
.end method
