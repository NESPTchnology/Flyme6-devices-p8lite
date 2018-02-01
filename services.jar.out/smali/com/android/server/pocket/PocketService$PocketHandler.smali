.class Lcom/android/server/pocket/PocketService$PocketHandler;
.super Landroid/os/Handler;
.source "PocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketHandler"
.end annotation


# static fields
.field public static final MSG_ADD_CALLBACK:I = 0x3

.field public static final MSG_DISPATCH_CALLBACKS:I = 0x2

.field public static final MSG_INTERACTIVE_CHANGED:I = 0x5

.field public static final MSG_REMOVE_CALLBACK:I = 0x4

.field public static final MSG_SENSOR_EVENT_LIGHT:I = 0x7

.field public static final MSG_SENSOR_EVENT_PROXIMITY:I = 0x6

.field public static final MSG_SET_LISTEN_EXTERNAL:I = 0x9

.field public static final MSG_SYSTEM_BOOTED:I = 0x1

.field public static final MSG_SYSTEM_READY:I = 0x0

.field public static final MSG_UNREGISTER_TIMEOUT:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    .line 210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 247
    invoke-static {}, Lcom/android/server/pocket/PocketService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap10(Lcom/android/server/pocket/PocketService;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap9(Lcom/android/server/pocket/PocketService;)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap3(Lcom/android/server/pocket/PocketService;)V

    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pocket/IPocketCallback;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap2(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V

    goto :goto_0

    .line 229
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pocket/IPocketCallback;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap7(Lcom/android/server/pocket/PocketService;Landroid/pocket/IPocketCallback;)V

    goto :goto_0

    .line 232
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    invoke-static {v2, v0}, Lcom/android/server/pocket/PocketService;->-wrap4(Lcom/android/server/pocket/PocketService;Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 235
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap6(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 238
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/SensorEvent;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketService;->-wrap5(Lcom/android/server/pocket/PocketService;Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 241
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketService;->-wrap11(Lcom/android/server/pocket/PocketService;)V

    goto :goto_0

    .line 244
    :pswitch_9
    iget-object v2, p0, Lcom/android/server/pocket/PocketService$PocketHandler;->this$0:Lcom/android/server/pocket/PocketService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    invoke-static {v2, v0}, Lcom/android/server/pocket/PocketService;->-wrap8(Lcom/android/server/pocket/PocketService;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
