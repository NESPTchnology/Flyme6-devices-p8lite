.class public Landroid/pocket/PocketManager;
.super Ljava/lang/Object;
.source "PocketManager.java"


# static fields
.field public static final REASON_ERROR:I = 0x1

.field public static final REASON_RESET:I = 0x2

.field public static final REASON_SENSOR:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/pocket/IPocketService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Landroid/pocket/PocketManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/pocket/IPocketService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/pocket/IPocketService;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/pocket/PocketManager;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    .line 86
    iget-object v0, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PocketService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/pocket/IPocketCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 96
    iget-object v2, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    iget-object v2, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v2, p1}, Landroid/pocket/IPocketService;->addCallback(Landroid/pocket/IPocketCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e1":Landroid/os/RemoteException;
    sget-object v2, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Remote exception in addCallback: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    if-eqz p1, :cond_0

    .line 102
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-interface {p1, v2, v3}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e2":Landroid/os/RemoteException;
    sget-object v2, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Remote exception in callback.onPocketStateChanged: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDeviceInPocket()Z
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v1}, Landroid/pocket/IPocketService;->isDeviceInPocket()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remote exception in isDeviceInPocket: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onInteractiveChanged(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .prologue
    .line 135
    iget-object v1, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v1, p1}, Landroid/pocket/IPocketService;->onInteractiveChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remote exception in addCallback: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeCallback(Landroid/pocket/IPocketCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/pocket/IPocketCallback;

    .prologue
    .line 115
    iget-object v2, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v2, :cond_0

    .line 116
    :try_start_0
    iget-object v2, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v2, p1}, Landroid/pocket/IPocketService;->removeCallback(Landroid/pocket/IPocketCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e1":Landroid/os/RemoteException;
    sget-object v2, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Remote exception in removeCallback: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    if-eqz p1, :cond_0

    .line 121
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-interface {p1, v2, v3}, Landroid/pocket/IPocketCallback;->onStateChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e2":Landroid/os/RemoteException;
    sget-object v2, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Remote exception in callback.onPocketStateChanged: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setListeningExternal(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 147
    iget-object v1, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/pocket/PocketManager;->mService:Landroid/pocket/IPocketService;

    invoke-interface {v1, p1}, Landroid/pocket/IPocketService;->setListeningExternal(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/pocket/PocketManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Remote exception in setListeningExternal: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
