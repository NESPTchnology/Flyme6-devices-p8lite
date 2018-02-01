.class Lcom/android/internal/app/PAWorldActivity$2;
.super Ljava/lang/Object;
.source "PAWorldActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PAWorldActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PAWorldActivity;

.field final synthetic val$bg:Landroid/view/View;

.field final synthetic val$letter:Landroid/widget/TextView;

.field final synthetic val$logo:Landroid/widget/ImageView;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PAWorldActivity;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PAWorldActivity;
    .param p2, "val$logo"    # Landroid/widget/ImageView;
    .param p3, "val$bg"    # Landroid/view/View;
    .param p4, "val$letter"    # Landroid/widget/TextView;
    .param p5, "val$tv"    # Landroid/widget/TextView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/app/PAWorldActivity$2;->this$0:Lcom/android/internal/app/PAWorldActivity;

    iput-object p2, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$logo:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$bg:Landroid/view/View;

    iput-object p4, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$letter:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 134
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$bg:Landroid/view/View;

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$bg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 137
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$letter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    const/high16 v1, 0x43b40000    # 360.0f

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 142
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$logo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    const-wide/16 v2, 0x1f4

    .line 146
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 148
    new-instance v1, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 150
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/app/PAWorldActivity$2;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 153
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_0
    return v6
.end method
