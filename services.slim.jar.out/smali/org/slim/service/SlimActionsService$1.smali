.class Lorg/slim/service/SlimActionsService$1;
.super Lslim/action/ISlimActionsService$Stub;
.source "SlimActionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/service/SlimActionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

.field final synthetic this$0:Lorg/slim/service/SlimActionsService;


# direct methods
.method constructor <init>(Lorg/slim/service/SlimActionsService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/service/SlimActionsService;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/slim/service/SlimActionsService$1;->this$0:Lorg/slim/service/SlimActionsService;

    invoke-direct {p0}, Lslim/action/ISlimActionsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerSlimStatusBar(Lorg/slim/framework/internal/statusbar/ISlimStatusBar;)V
    .locals 3
    .param p1, "bar"    # Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/slim/service/SlimActionsService$1;->this$0:Lorg/slim/service/SlimActionsService;

    invoke-static {v0}, Lorg/slim/service/SlimActionsService;->-wrap0(Lorg/slim/service/SlimActionsService;)V

    .line 46
    const-string/jumbo v0, "SlimActionsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSlimStatusBar bar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    .line 44
    return-void
.end method

.method public showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->this$0:Lorg/slim/service/SlimActionsService;

    invoke-static {v1}, Lorg/slim/service/SlimActionsService;->-wrap0(Lorg/slim/service/SlimActionsService;)V

    .line 57
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1, p1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 129
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1, p1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleGlobalMenu()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/slim/service/SlimActionsService$1;->this$0:Lorg/slim/service/SlimActionsService;

    invoke-static {v0}, Lorg/slim/service/SlimActionsService;->-get0(Lorg/slim/service/SlimActionsService;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/slim/service/SlimActionsService$1;->this$0:Lorg/slim/service/SlimActionsService;

    invoke-static {v0}, Lorg/slim/service/SlimActionsService;->-get0(Lorg/slim/service/SlimActionsService;)Landroid/view/WindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->showGlobalActions()V

    .line 137
    :cond_0
    return-void
.end method

.method public toggleKillApp()V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->toggleKillApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleLastApp()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->toggleLastApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleScreenshot()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->toggleScreenshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleSplitScreen()V
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_0

    .line 68
    :try_start_0
    iget-object v1, p0, Lorg/slim/service/SlimActionsService$1;->mBar:Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    invoke-interface {v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;->toggleSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
