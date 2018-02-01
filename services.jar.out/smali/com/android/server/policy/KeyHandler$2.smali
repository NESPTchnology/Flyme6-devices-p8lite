.class Lcom/android/server/policy/KeyHandler$2;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "KeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyHandler;
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
    .line 741
    iput-object p1, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/KeyHandler;->-get1(Lcom/android/server/policy/KeyHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/KeyHandler;->-get1(Lcom/android/server/policy/KeyHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0, p2}, Lcom/android/server/policy/KeyHandler;->-set0(Lcom/android/server/policy/KeyHandler;Z)Z

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0, p2}, Lcom/android/server/policy/KeyHandler;->-set0(Lcom/android/server/policy/KeyHandler;Z)Z

    goto :goto_0
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 755
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/KeyHandler;->-get1(Lcom/android/server/policy/KeyHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/KeyHandler;->-get1(Lcom/android/server/policy/KeyHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0, v1}, Lcom/android/server/policy/KeyHandler;->-set0(Lcom/android/server/policy/KeyHandler;Z)Z

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$2;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0, v1}, Lcom/android/server/policy/KeyHandler;->-set0(Lcom/android/server/policy/KeyHandler;Z)Z

    goto :goto_0
.end method
