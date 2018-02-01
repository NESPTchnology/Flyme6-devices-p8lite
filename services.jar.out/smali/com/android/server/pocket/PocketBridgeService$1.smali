.class Lcom/android/server/pocket/PocketBridgeService$1;
.super Landroid/pocket/IPocketCallback$Stub;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method constructor <init>(Lcom/android/server/pocket/PocketBridgeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketBridgeService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-direct {p0}, Landroid/pocket/IPocketCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ZI)V
    .locals 3
    .param p1, "isDeviceInPocket"    # Z
    .param p2, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "changed":Z
    if-nez p2, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketBridgeService;->-get3(Lcom/android/server/pocket/PocketBridgeService;)Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1, p1}, Lcom/android/server/pocket/PocketBridgeService;->-set0(Lcom/android/server/pocket/PocketBridgeService;Z)Z

    .line 64
    const/4 v0, 0x1

    .line 70
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketBridgeService;->-get2(Lcom/android/server/pocket/PocketBridgeService;)Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->sendEmptyMessage(I)Z

    .line 59
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketBridgeService;->-get3(Lcom/android/server/pocket/PocketBridgeService;)Z

    move-result v1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x1

    .line 68
    :goto_1
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1, v2}, Lcom/android/server/pocket/PocketBridgeService;->-set0(Lcom/android/server/pocket/PocketBridgeService;Z)Z

    goto :goto_0

    .line 67
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
