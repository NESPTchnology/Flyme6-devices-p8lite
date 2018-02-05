.class public Lslim/action/SlimActionsManager;
.super Ljava/lang/Object;
.source "SlimActionsManager.java"


# static fields
.field private static sInstance:Lslim/action/SlimActionsManager;

.field private static sService:Lslim/action/ISlimActionsService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 40
    iput-object v0, p0, Lslim/action/SlimActionsManager;->mContext:Landroid/content/Context;

    .line 45
    :goto_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    sput-object v1, Lslim/action/SlimActionsManager;->sService:Lslim/action/ISlimActionsService;

    .line 37
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lslim/action/SlimActionsManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lslim/action/SlimActionsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lslim/action/SlimActionsManager;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lslim/action/SlimActionsManager;->sInstance:Lslim/action/SlimActionsManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lslim/action/SlimActionsManager;

    invoke-direct {v0, p0}, Lslim/action/SlimActionsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lslim/action/SlimActionsManager;->sInstance:Lslim/action/SlimActionsManager;

    .line 52
    :cond_0
    sget-object v0, Lslim/action/SlimActionsManager;->sInstance:Lslim/action/SlimActionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getService()Lslim/action/ISlimActionsService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-object v1, Lslim/action/SlimActionsManager;->sService:Lslim/action/ISlimActionsService;

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lslim/action/SlimActionsManager;->sService:Lslim/action/ISlimActionsService;

    return-object v1

    .line 59
    :cond_0
    const-string/jumbo v1, "slimactions"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 60
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 61
    invoke-static {v0}, Lslim/action/ISlimActionsService$Stub;->asInterface(Landroid/os/IBinder;)Lslim/action/ISlimActionsService;

    move-result-object v1

    sput-object v1, Lslim/action/SlimActionsManager;->sService:Lslim/action/ISlimActionsService;

    .line 62
    sget-object v1, Lslim/action/SlimActionsManager;->sService:Lslim/action/ISlimActionsService;

    return-object v1

    .line 64
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 149
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerSlimStatusBar(Lorg/slim/framework/internal/statusbar/ISlimStatusBar;)V
    .locals 2
    .param p1, "bar"    # Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1, p1}, Lslim/action/ISlimActionsService;->registerSlimStatusBar(Lorg/slim/framework/internal/statusbar/ISlimStatusBar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1, p1}, Lslim/action/ISlimActionsService;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1, p1}, Lslim/action/ISlimActionsService;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleGlobalMenu()V
    .locals 2

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->toggleGlobalMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleKillApp()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->toggleKillApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleLastApp()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->toggleLastApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleScreenshot()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->toggleScreenshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleSplitScreen()V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lslim/action/SlimActionsManager;->getService()Lslim/action/ISlimActionsService;

    move-result-object v1

    invoke-interface {v1}, Lslim/action/ISlimActionsService;->toggleSplitScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
