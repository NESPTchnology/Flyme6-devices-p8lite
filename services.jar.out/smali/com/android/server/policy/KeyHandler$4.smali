.class Lcom/android/server/policy/KeyHandler$4;
.super Ljava/lang/Object;
.source "KeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/KeyHandler;->processEvent(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/KeyHandler;

.field final synthetic val$keyEvent:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyHandler;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/KeyHandler;
    .param p2, "val$keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    iput-object p2, p0, Lcom/android/server/policy/KeyHandler$4;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 680
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    .line 666
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/KeyHandler;->-get7(Lcom/android/server/policy/KeyHandler;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 667
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/KeyHandler;->-get8(Lcom/android/server/policy/KeyHandler;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 668
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/KeyHandler;->-get4(Lcom/android/server/policy/KeyHandler;)Lcom/android/server/policy/KeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyHandler$EventHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/KeyHandler;->-get4(Lcom/android/server/policy/KeyHandler;)Lcom/android/server/policy/KeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyHandler$EventHandler;->removeMessages(I)V

    .line 673
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/KeyHandler;->-get6(Lcom/android/server/policy/KeyHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    iget-object v2, p0, Lcom/android/server/policy/KeyHandler$4;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-static {v1, v2}, Lcom/android/server/policy/KeyHandler;->-wrap0(Lcom/android/server/policy/KeyHandler;Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v0

    .line 675
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler$4;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v1}, Lcom/android/server/policy/KeyHandler;->-get4(Lcom/android/server/policy/KeyHandler;)Lcom/android/server/policy/KeyHandler$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/policy/KeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
