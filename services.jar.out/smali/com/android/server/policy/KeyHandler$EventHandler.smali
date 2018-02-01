.class Lcom/android/server/policy/KeyHandler$EventHandler;
.super Landroid/os/Handler;
.source "KeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/KeyHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/KeyHandler;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/KeyHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/policy/KeyHandler$EventHandler;->this$0:Lcom/android/server/policy/KeyHandler;

    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 173
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/KeyEvent;

    if-eqz v2, :cond_0

    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 177
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-static {}, Lcom/android/server/policy/KeyHandler;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EventHandler.handleMessage(): event.toString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 178
    invoke-virtual {v0}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    .line 182
    .local v1, "scanCode":I
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler$EventHandler;->this$0:Lcom/android/server/policy/KeyHandler;

    iget-object v3, p0, Lcom/android/server/policy/KeyHandler$EventHandler;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v3}, Lcom/android/server/policy/KeyHandler;->-get3(Lcom/android/server/policy/KeyHandler;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/policy/KeyHandler;->-wrap1(Lcom/android/server/policy/KeyHandler;I)V

    .line 172
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v1    # "scanCode":I
    :cond_0
    return-void
.end method
