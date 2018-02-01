.class Lcom/android/server/policy/KeyHandler$3;
.super Ljava/lang/Object;
.source "KeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/KeyHandler;->handleGesture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/KeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/KeyHandler;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/server/policy/KeyHandler$3;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v3, p0, Lcom/android/server/policy/KeyHandler$3;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v3}, Lcom/android/server/policy/KeyHandler;->-get2(Lcom/android/server/policy/KeyHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 563
    const-string/jumbo v4, "airplane_mode_on"

    .line 562
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 564
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/KeyHandler$3;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v3}, Lcom/android/server/policy/KeyHandler;->-get2(Lcom/android/server/policy/KeyHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 565
    const-string/jumbo v4, "airplane_mode_on"

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 564
    :cond_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 567
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 570
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler$3;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/KeyHandler;->-get2(Lcom/android/server/policy/KeyHandler;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 571
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler$3;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/KeyHandler;->-get5(Lcom/android/server/policy/KeyHandler;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 572
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler$3;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/KeyHandler;->-get4(Lcom/android/server/policy/KeyHandler;)Lcom/android/server/policy/KeyHandler$EventHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/policy/KeyHandler$3$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/KeyHandler$3$1;-><init>(Lcom/android/server/policy/KeyHandler$3;)V

    .line 577
    const-wide/16 v4, 0x5dc

    .line 572
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/KeyHandler$EventHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void

    .line 562
    .end local v0    # "enabled":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method
