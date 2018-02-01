.class public Lcom/android/server/policy/AlertSliderObserver;
.super Landroid/os/UEventObserver;
.source "AlertSliderObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/AlertSliderObserver$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasVibrator:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mState:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/AlertSliderObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/AlertSliderObserver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/AlertSliderObserver;->isOrderInverted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/AlertSliderObserver;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/AlertSliderObserver;->getSilentMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/AlertSliderObserver;I)V
    .locals 0
    .param p1, "zenMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/AlertSliderObserver;->setZenMode(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/android/server/policy/AlertSliderObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/AlertSliderObserver;->DEBUG:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 51
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 109
    new-instance v1, Lcom/android/server/policy/AlertSliderObserver$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/server/policy/AlertSliderObserver$1;-><init>(Lcom/android/server/policy/AlertSliderObserver;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    .line 54
    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 53
    iput-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 55
    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mVibrator:Landroid/os/Vibrator;

    .line 56
    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mHasVibrator:Z

    .line 57
    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 58
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "AlertSliderObserver"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    invoke-direct {p0}, Lcom/android/server/policy/AlertSliderObserver;->init()V

    .line 51
    return-void

    .line 56
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSilentMode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "alert_slider_silent_mode"

    .line 152
    const/4 v3, -0x2

    .line 150
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 153
    .local v0, "silentMode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    .line 88
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 89
    const v6, 0x10400a2

    .line 88
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "file":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 94
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    .line 96
    invoke-virtual {p0}, Lcom/android/server/policy/AlertSliderObserver;->update()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "This device does not have an Alert Slider"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/server/policy/AlertSliderObserver;->stopObserving()V

    goto :goto_0
.end method

.method private isOrderInverted()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "alert_slider_order"

    .line 143
    const/4 v3, -0x2

    .line 141
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setZenMode(I)V
    .locals 4
    .param p1, "zenMode"    # I

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mHasVibrator:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 71
    sget-object v2, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    sget-object v2, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Switch UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :try_start_0
    const-string/jumbo v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "state":I
    iget v2, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    if-eq v1, v2, :cond_1

    .line 78
    iput v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    .line 79
    invoke-virtual {p0}, Lcom/android/server/policy/AlertSliderObserver;->update()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/policy/AlertSliderObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not parse switch state from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected startObserving(I)V
    .locals 2
    .param p1, "pathId"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "matchPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-super {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected update()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/AlertSliderObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/policy/AlertSliderObserver;->mState:I

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    return-void
.end method
