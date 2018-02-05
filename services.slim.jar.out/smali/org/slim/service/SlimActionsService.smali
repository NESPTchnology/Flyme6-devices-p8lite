.class public Lorg/slim/service/SlimActionsService;
.super Lorg/slim/service/SlimSystemService;
.source "SlimActionsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/service/SlimActionsService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlimActionsService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lorg/slim/service/SlimActionsService;)Landroid/view/WindowManagerPolicy;
    .locals 1

    iget-object v0, p0, Lorg/slim/service/SlimActionsService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/slim/service/SlimActionsService;)V
    .locals 0

    invoke-direct {p0}, Lorg/slim/service/SlimActionsService;->enforceSlimActionsService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/slim/service/SlimSystemService;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lorg/slim/service/SlimActionsService$1;

    invoke-direct {v0, p0}, Lorg/slim/service/SlimActionsService$1;-><init>(Lorg/slim/service/SlimActionsService;)V

    iput-object v0, p0, Lorg/slim/service/SlimActionsService;->mService:Landroid/os/IBinder;

    .line 146
    iput-object p1, p0, Lorg/slim/service/SlimActionsService;->mContext:Landroid/content/Context;

    .line 148
    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lorg/slim/service/SlimActionsService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 144
    return-void
.end method

.method private enforceSlimActionsService()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lorg/slim/service/SlimActionsService;->mContext:Landroid/content/Context;

    .line 153
    const-string/jumbo v1, "slim.permission.SLIM_ACTIONS_SERVICE"

    .line 154
    const-string/jumbo v2, "SlimActionsService"

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "slimactions"

    iget-object v1, p0, Lorg/slim/service/SlimActionsService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/slim/service/SlimActionsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 158
    return-void
.end method
