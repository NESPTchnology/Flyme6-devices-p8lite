.class public Lcom/android/server/policy/pocket/PocketLock;
.super Ljava/lang/Object;
.source "PocketLock.java"


# instance fields
.field private mAnimating:Z

.field private mAttached:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHintContainer:Landroid/view/View;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/pocket/PocketLock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAnimating:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/pocket/PocketLock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/pocket/PocketLock;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/pocket/PocketLock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/pocket/PocketLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->addView()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/pocket/PocketLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->removeView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    .line 53
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    .line 54
    invoke-direct {p0}, Lcom/android/server/policy/pocket/PocketLock;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    const v1, 0x10900a0

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    .line 50
    return-void
.end method

.method private addView()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    goto :goto_0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 173
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 175
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 176
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 177
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 178
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x10c0500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 167
    iput-boolean v2, p0, Lcom/android/server/policy/pocket/PocketLock;->mAnimating:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/server/policy/pocket/PocketLock;->mAttached:Z

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 110
    new-instance v0, Lcom/android/server/policy/pocket/PocketLock$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/pocket/PocketLock$2;-><init>(Lcom/android/server/policy/pocket/PocketLock;Z)V

    .line 151
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 60
    new-instance v0, Lcom/android/server/policy/pocket/PocketLock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/pocket/PocketLock$1;-><init>(Lcom/android/server/policy/pocket/PocketLock;Z)V

    .line 106
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/policy/pocket/PocketLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method
