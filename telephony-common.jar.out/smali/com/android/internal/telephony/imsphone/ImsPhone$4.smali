.class Lcom/android/internal/telephony/imsphone/ImsPhone$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1739
    const-string/jumbo v2, "org.codeaurora.intent.action.send.rtt.text"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1740
    const-string/jumbo v2, "ImsPhone"

    const-string/jumbo v3, "RTT: Received ACTION_SEND_RTT_TEXT"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const-string/jumbo v2, "org.codeaurora.intent.action.rtt.textvalue"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1742
    .local v1, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendRttMessage(Ljava/lang/String;)V

    .line 1738
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 1743
    :cond_0
    const-string/jumbo v2, "org.codeaurora.intent.action.send.rtt.operation"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1744
    const-string/jumbo v2, "ImsPhone"

    const-string/jumbo v3, "RTT: Received ACTION_RTT_OPERATION"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const-string/jumbo v2, "org.codeaurora.intent.action.rtt.operation.type"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1746
    .local v0, "data":I
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$4;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhone;I)V

    goto :goto_0

    .line 1748
    .end local v0    # "data":I
    :cond_1
    const-string/jumbo v2, "ImsPhone"

    const-string/jumbo v3, "RTT: unknown intent"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
