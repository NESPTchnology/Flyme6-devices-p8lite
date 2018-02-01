.class Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$1;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$1;->this$1:Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1565
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1564
    :goto_0
    return-void

    .line 1567
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$1;->this$1:Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$1;->this$1:Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->-get0(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->-wrap0(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;ZZ)V

    goto :goto_0

    .line 1565
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
