.class Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field final synthetic val$brightness:I

.field final synthetic val$brightnessChanged:Z

.field final synthetic val$displayId:I

.field final synthetic val$oldState:I

.field final synthetic val$state:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZIILandroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .param p2, "val$oldState"    # I
    .param p3, "val$state"    # I
    .param p4, "val$brightnessChanged"    # Z
    .param p5, "val$brightness"    # I
    .param p6, "val$displayId"    # I
    .param p7, "val$token"    # Landroid/os/IBinder;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    iput-boolean p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    iput p6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    iput-object p7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setDisplayBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    const-wide/32 v2, 0x20000

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBrightness(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    const-string/jumbo v1, ", brightness="

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    const-string/jumbo v1, ")"

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-get0(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 528
    return-void

    .line 538
    :catchall_0
    move-exception v0

    .line 539
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 538
    throw v0
.end method

.method private setDisplayState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const-wide/32 v4, 0x20000

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayState(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    const-string/jumbo v2, ", state="

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    const-string/jumbo v2, ")"

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 521
    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v0

    .line 522
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 510
    return-void

    .line 523
    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    .line 524
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 523
    throw v1
.end method

.method private setVrMode(Z)V
    .locals 1
    .param p1, "isVrEnabled"    # Z

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-get0(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setVrMode(Z)V

    .line 501
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 465
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 466
    .local v0, "currentState":I
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    invoke-static {v2}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v2, :cond_1

    .line 468
    :cond_0
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v2}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 469
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 470
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 484
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v2, v3, :cond_2

    if-ne v0, v3, :cond_4

    .line 485
    :cond_2
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v0, v2, :cond_4

    .line 486
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setVrMode(Z)V

    .line 491
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-eqz v1, :cond_5

    .line 492
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(I)V

    .line 496
    :cond_5
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v1, v0, :cond_6

    .line 497
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 463
    :cond_6
    return-void

    .line 471
    :cond_7
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v2, v4, :cond_8

    .line 472
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v2, v4, :cond_9

    .line 473
    :cond_8
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 474
    const/4 v0, 0x3

    .line 472
    goto :goto_0

    .line 476
    :cond_9
    return-void
.end method
