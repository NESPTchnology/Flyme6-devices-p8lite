.class Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;
.super Landroid/database/ContentObserver;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketBridgeObserver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketBridgeService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    .line 144
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 150
    const-string/jumbo v2, "pocket_judge"

    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 149
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 151
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v1, v0}, Lcom/android/server/pocket/PocketBridgeService;->-wrap0(Lcom/android/server/pocket/PocketBridgeService;Z)V

    .line 148
    return-void

    .line 149
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "pocket_judge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    iput-boolean v2, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    .line 154
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v0}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeObserver;->mRegistered:Z

    .line 162
    :cond_0
    return-void
.end method
