.class public Landroid/app/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Landroid/app/IThemeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IThemeService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IThemeService;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/app/ThemeManager;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Landroid/app/ThemeManager;->mService:Landroid/app/IThemeService;

    .line 100
    return-void
.end method

.method public static isOverlayEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string/jumbo v3, "overlay"

    .line 116
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    .line 119
    .local v1, "om":Landroid/content/om/IOverlayManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    return v2
.end method

.method public static shouldOverlayEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "theme_force_enabled"

    .line 106
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    const/4 v1, 0x1

    .line 106
    if-ne v0, v1, :cond_0

    .line 109
    return v2

    .line 112
    :cond_0
    invoke-static {}, Landroid/app/ThemeManager;->isOverlayEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addCallback(Landroid/app/IThemeCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/IThemeCallback;

    .prologue
    .line 127
    iget-object v1, p0, Landroid/app/ThemeManager;->mService:Landroid/app/IThemeService;

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/app/ThemeManager;->mService:Landroid/app/IThemeService;

    invoke-interface {v1, p1}, Landroid/app/IThemeService;->addCallback(Landroid/app/IThemeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "ThemeManager"

    const-string/jumbo v2, "Failed to dispatch callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
