.class Lcom/android/server/policy/AlertSliderObserver$1;
.super Landroid/os/Handler;
.source "AlertSliderObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/AlertSliderObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/AlertSliderObserver;


# direct methods
.method constructor <init>(Lcom/android/server/policy/AlertSliderObserver;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/AlertSliderObserver;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v3, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {v3}, Lcom/android/server/policy/AlertSliderObserver;->-wrap0(Lcom/android/server/policy/AlertSliderObserver;)Z

    move-result v0

    .line 113
    .local v0, "inverted":Z
    iget-object v3, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {v3}, Lcom/android/server/policy/AlertSliderObserver;->-wrap1(Lcom/android/server/policy/AlertSliderObserver;)I

    move-result v1

    .line 114
    .local v1, "silentMode":I
    iget-object v3, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    invoke-static {v3}, Lcom/android/server/policy/AlertSliderObserver;->-get0(Lcom/android/server/policy/AlertSliderObserver;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 111
    .end local v1    # "silentMode":I
    :goto_0
    return-void

    .line 116
    .restart local v1    # "silentMode":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    if-eqz v0, :cond_0

    move v1, v2

    .end local v1    # "silentMode":I
    :cond_0
    invoke-static {v3, v1}, Lcom/android/server/policy/AlertSliderObserver;->-wrap2(Lcom/android/server/policy/AlertSliderObserver;I)V

    goto :goto_0

    .line 119
    .restart local v1    # "silentMode":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/AlertSliderObserver;->-wrap2(Lcom/android/server/policy/AlertSliderObserver;I)V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/policy/AlertSliderObserver$1;->this$0:Lcom/android/server/policy/AlertSliderObserver;

    if-eqz v0, :cond_1

    .end local v1    # "silentMode":I
    :goto_1
    invoke-static {v3, v1}, Lcom/android/server/policy/AlertSliderObserver;->-wrap2(Lcom/android/server/policy/AlertSliderObserver;I)V

    goto :goto_0

    .restart local v1    # "silentMode":I
    :cond_1
    move v1, v2

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
