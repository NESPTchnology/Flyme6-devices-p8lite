.class Lcom/android/server/policy/KeyHandler$3$1;
.super Ljava/lang/Object;
.source "KeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/KeyHandler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/KeyHandler$3;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyHandler$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/KeyHandler$3;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/policy/KeyHandler$3$1;->this$1:Lcom/android/server/policy/KeyHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$3$1;->this$1:Lcom/android/server/policy/KeyHandler$3;

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler$3;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/KeyHandler;->-get5(Lcom/android/server/policy/KeyHandler;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 574
    return-void
.end method
