.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReason:Ljava/lang/String;

.field private static mReboot:Z

.field private static mRebootHasProgressBar:Z

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic -get3()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 107
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 109
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 110
    const/4 v1, 0x4

    .line 109
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 111
    const/16 v1, 0xd

    .line 109
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x1040144

    const v7, 0x10400a0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 313
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 314
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Shutdown sequence already running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 315
    return-void

    .line 317
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 321
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 344
    .local v1, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v2, "recovery-update"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 347
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 347
    :goto_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 349
    const v2, 0x1040139

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 350
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_4

    .line 351
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 352
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 353
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 354
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 357
    const v2, 0x104013a

    .line 356
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 377
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 378
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 380
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 382
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 383
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 384
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 387
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 389
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 390
    const-string/jumbo v4, "ShutdownThread-cpu"

    const/4 v5, 0x1

    .line 389
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 391
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 392
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 399
    :goto_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 400
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    :try_start_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 403
    const-string/jumbo v4, "ShutdownThread-screen"

    const/16 v5, 0x1a

    .line 402
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 404
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 405
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 413
    :cond_1
    :goto_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v3, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 415
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 311
    return-void

    .line 312
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .restart local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_2
    move v2, v4

    .line 348
    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 347
    goto/16 :goto_0

    .line 359
    :cond_4
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 361
    const v2, 0x104013c

    .line 360
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 363
    :cond_5
    const-string/jumbo v2, "recovery"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 365
    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 369
    :cond_6
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_7

    .line 370
    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 373
    :cond_7
    const v2, 0x1040135

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    const v2, 0x104013f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 406
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3
.end method

.method private static getAdvancedReboot(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    const-string/jumbo v1, "advanced_reboot"

    const/4 v2, 0x0

    .line 249
    invoke-static {v0, v1, v2}, Lslim/provider/SlimSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v1, 0x0

    .line 284
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 285
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 286
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 287
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 288
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 283
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 728
    if-eqz p1, :cond_1

    .line 729
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rebooting, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 p2, 0x0

    .line 751
    .end local p2    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 727
    return-void

    .line 733
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    .line 735
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 737
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 745
    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 738
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x1

    .line 299
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 300
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    return-void

    .line 304
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 305
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 306
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 307
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 308
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 298
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 139
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 140
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 141
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 137
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 147
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 148
    :try_start_0
    sget-boolean v10, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v10, :cond_0

    .line 149
    const-string/jumbo v8, "ShutdownThread"

    const-string/jumbo v10, "Request to shutdown already running, returning."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 150
    return-void

    :cond_0
    monitor-exit v9

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 155
    const v10, 0x10e0050

    .line 154
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 156
    .local v5, "longPressBehavior":I
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_8

    .line 157
    const v6, 0x1040143

    .line 161
    .local v6, "resourceId":I
    :goto_0
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v9, :cond_1

    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_a

    .line 165
    :cond_1
    :goto_1
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_b

    .line 166
    const v7, 0x1040142

    .line 171
    .local v7, "titleResourceId":I
    :goto_2
    const-string/jumbo v9, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    if-nez v9, :cond_2

    move v2, v8

    .line 178
    .local v2, "isPrimary":Z
    :cond_2
    if-eqz v2, :cond_d

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getAdvancedReboot(Landroid/content/Context;)I

    move-result v0

    .line 181
    .local v0, "advancedReboot":I
    :goto_3
    const-string/jumbo v9, "keyguard"

    .line 180
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 182
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    .line 184
    :goto_4
    if-nez p1, :cond_4

    if-ne v0, v8, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-ne v0, v13, :cond_12

    .line 185
    :cond_4
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_5

    .line 187
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 188
    sput-object v12, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 190
    :cond_5
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v9, :cond_6

    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_f

    .line 226
    :cond_6
    :goto_5
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-nez v8, :cond_7

    .line 227
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 231
    new-instance v9, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    .line 230
    const v10, 0x1040013

    .line 227
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 236
    const v9, 0x1040009

    .line 227
    invoke-virtual {v8, v9, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 239
    :cond_7
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v8, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 240
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 241
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 242
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 144
    .end local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :goto_6
    return-void

    .line 147
    .end local v0    # "advancedReboot":I
    .end local v2    # "isPrimary":Z
    .end local v3    # "km":Landroid/app/KeyguardManager;
    .end local v5    # "longPressBehavior":I
    .end local v6    # "resourceId":I
    .end local v7    # "titleResourceId":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 158
    .restart local v5    # "longPressBehavior":I
    :cond_8
    if-ne v5, v13, :cond_9

    .line 159
    const v6, 0x1040141

    .restart local v6    # "resourceId":I
    goto/16 :goto_0

    .line 160
    .end local v6    # "resourceId":I
    :cond_9
    const v6, 0x1040140

    .restart local v6    # "resourceId":I
    goto/16 :goto_0

    .line 162
    :cond_a
    const v6, 0x1040145

    goto/16 :goto_1

    .line 167
    :cond_b
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v9, :cond_c

    .line 168
    const v7, 0x10400a1

    .restart local v7    # "titleResourceId":I
    goto/16 :goto_2

    .line 169
    .end local v7    # "titleResourceId":I
    :cond_c
    const v7, 0x1040135

    .restart local v7    # "titleResourceId":I
    goto/16 :goto_2

    .line 178
    .restart local v2    # "isPrimary":Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "advancedReboot":I
    goto/16 :goto_3

    .line 182
    .restart local v3    # "km":Landroid/app/KeyguardManager;
    :cond_e
    const/4 v4, 0x0

    .local v4, "locked":Z
    goto/16 :goto_4

    .line 191
    .end local v4    # "locked":Z
    .restart local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_f
    if-ne v0, v8, :cond_10

    if-eqz v4, :cond_11

    :cond_10
    if-ne v0, v13, :cond_6

    .line 193
    :cond_11
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 197
    new-instance v9, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    .line 196
    const v10, 0x107005d

    .line 193
    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    sput-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 213
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    new-instance v9, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v9}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_5

    .line 244
    .end local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_12
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_6
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    .line 601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v2, v8, v10

    .line 602
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 603
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$8;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 709
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 711
    int-to-long v8, p1

    :try_start_0
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 715
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    return-void

    .line 712
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private uncrypt()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 756
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Calling uncrypt and monitoring the progress..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v2, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 779
    .local v2, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    new-array v0, v11, [Z

    .line 780
    .local v0, "done":[Z
    aput-boolean v10, v0, v10

    .line 781
    new-instance v3, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 796
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 799
    const-wide/32 v8, 0xdbba0

    :try_start_0
    invoke-virtual {v3, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    aget-boolean v7, v0, v10

    if-nez v7, :cond_0

    .line 803
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Timed out waiting for uncrypt."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/16 v5, 0x64

    .line 805
    .local v5, "uncryptTimeoutError":I
    const-string/jumbo v7, "uncrypt_time: %d\nuncrypt_error: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 806
    const/16 v9, 0x384

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    .line 805
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 808
    .local v4, "timeoutMessage":Ljava/lang/String;
    :try_start_1
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v7, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 755
    .end local v4    # "timeoutMessage":Ljava/lang/String;
    .end local v5    # "uncryptTimeoutError":I
    :cond_0
    :goto_1
    return-void

    .line 800
    :catch_0
    move-exception v6

    .local v6, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 809
    .end local v6    # "unused":Ljava/lang/InterruptedException;
    .restart local v4    # "timeoutMessage":Ljava/lang/String;
    .restart local v5    # "uncryptTimeoutError":I
    :catch_1
    move-exception v1

    .line 810
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ShutdownThread"

    const-string/jumbo v8, "Failed to write timeout message to uncrypt status"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 421
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 418
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 30

    .prologue
    .line 430
    new-instance v6, Lcom/android/server/power/ShutdownThread$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 443
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 444
    .local v26, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 452
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 459
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 462
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 461
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v20, v4, v8

    .line 465
    .local v20, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 466
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v20, v8

    .line 468
    .local v14, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_e

    .line 469
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v14    # "delay":J
    :cond_1
    monitor-exit v4

    .line 482
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_2

    .line 483
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 486
    :cond_2
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 490
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    .line 492
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_4

    .line 497
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 500
    :cond_4
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    .line 502
    check-cast v25, Lcom/android/server/pm/PackageManagerService;

    .line 504
    .local v25, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v25, :cond_5

    .line 505
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 507
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_6

    .line 508
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 512
    :cond_6
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 513
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_7

    .line 514
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 518
    :cond_7
    new-instance v24, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 525
    .local v24, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v18, v4, v8

    .line 530
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 533
    :try_start_2
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 532
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v23

    .line 534
    .local v23, "mount":Landroid/os/storage/IMountService;
    if-eqz v23, :cond_10

    .line 535
    invoke-interface/range {v23 .. v24}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_8

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v18, v8

    .line 544
    .restart local v14    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v14, v8

    if-gtz v2, :cond_11

    .line 545
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v14    # "delay":J
    :cond_8
    monitor-exit v4

    .line 560
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_9

    .line 561
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 571
    :cond_9
    const-string/jumbo v2, "ro.alarm_boot"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 572
    .local v22, "isAlarmBoot":Z
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 574
    .local v12, "cryptState":Ljava/lang/String;
    if-eqz v22, :cond_b

    .line 575
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 576
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 574
    if-eqz v2, :cond_b

    .line 577
    :cond_a
    const-string/jumbo v2, "/persist/alarm/powerOffAlarmHandle"

    .line 578
    const-string/jumbo v4, "1"

    .line 577
    invoke-static {v2, v4}, Landroid/app/AlarmManager;->writePowerOffAlarmFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 429
    return-void

    .line 443
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v12    # "cryptState":Ljava/lang/String;
    .end local v18    # "endShutTime":J
    .end local v20    # "endTime":J
    .end local v22    # "isAlarmBoot":Z
    .end local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v26    # "reason":Ljava/lang/String;
    :cond_c
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 471
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v14    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v26    # "reason":Ljava/lang/String;
    :cond_e
    :try_start_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_f

    .line 472
    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    .line 473
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    .line 472
    mul-double v8, v8, v28

    .line 473
    const-wide v28, 0x40c3880000000000L    # 10000.0

    .line 472
    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 474
    .local v27, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 477
    .end local v27    # "status":I
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 478
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    .line 465
    .end local v14    # "delay":J
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 493
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 537
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v18    # "endShutTime":J
    .restart local v23    # "mount":Landroid/os/storage/IMountService;
    .restart local v24    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v25    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_10
    :try_start_6
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4

    .line 539
    .end local v23    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v16

    .line 540
    .local v16, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during MountService shutdown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 530
    .end local v16    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 547
    .restart local v14    # "delay":J
    :cond_11
    :try_start_8
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v2, :cond_12

    .line 548
    const-wide/16 v8, 0x4e20

    sub-long/2addr v8, v14

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    .line 549
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    .line 548
    mul-double v8, v8, v28

    .line 550
    const-wide v28, 0x40d3880000000000L    # 20000.0

    .line 548
    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .line 551
    .restart local v27    # "status":I
    add-int/lit8 v27, v27, 0x12

    .line 552
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 555
    .end local v27    # "status":I
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    .line 556
    :catch_3
    move-exception v17

    .restart local v17    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4
.end method
