.class public Lcom/android/server/policy/KeyHandler;
.super Ljava/lang/Object;
.source "KeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyHandler$1;,
        Lcom/android/server/policy/KeyHandler$2;,
        Lcom/android/server/policy/KeyHandler$EventHandler;
    }
.end annotation


# static fields
.field private static final AIRPLANE:I = 0x3

.field private static final CAMERA:I = 0x7

.field private static final DEBUG:Z = true

.field private static final DIALER:I = 0x8

.field private static final DISABLED:I = 0x0

.field private static final DUMMY_CAMERA_ID:Ljava/lang/String; = ""

.field private static final GESTURES_DEFAULT:I = 0x0

.field private static final GESTURE_REQUEST:I = 0x1

.field private static final GESTURE_WAKE_LOCK_DURATION:I = 0xbb8

.field private static final MAX_SUPPORTED_GESTURES:I = 0xf

.field private static final MUSIC_NEXT:I = 0x5

.field private static final MUSIC_PLAY_PAUSE:I = 0x4

.field private static final MUSIC_PREVIOUS:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final TORCH:I = 0x2

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WAKE_UP:I = 0x1


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mDoubleTapGesture:I

.field private mDoubleTapKeyCode:I

.field private mDrawArrowLeftGesture:I

.field private mDrawArrowLeftKeyCode:I

.field private mDrawArrowRightGesture:I

.field private mDrawArrowRightKeyCode:I

.field private mDrawInverseVGesture:I

.field private mDrawInverseVKeyCode:I

.field private mDrawMGesture:I

.field private mDrawMKeyCode:I

.field private mDrawOGesture:I

.field private mDrawOKeyCode:I

.field private mDrawVGesture:I

.field private mDrawVKeyCode:I

.field private mDrawWGesture:I

.field private mDrawWKeyCode:I

.field private mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mGestures:Landroid/util/SparseIntArray;

.field private mGesturesEnabled:Z

.field private mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsInPocket:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOneFingerSwipeDowGesture:I

.field private mOneFingerSwipeDowKeyCode:I

.field private mOneFingerSwipeLeftGesture:I

.field private mOneFingerSwipeLeftKeyCode:I

.field private mOneFingerSwipeRightGesture:I

.field private mOneFingerSwipeRightKeyCode:I

.field private mOneFingerSwipeUpGesture:I

.field private mOneFingerSwipeUpKeyCode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mSystemReady:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mTorchEnabled:Z

.field private mTwoFingerSwipeGesture:I

.field private mTwoFingerSwipeKeyCode:I

.field private mVibePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/KeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/KeyHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/KeyHandler;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/KeyHandler;)Lcom/android/server/policy/KeyHandler$EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/KeyHandler;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/KeyHandler;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/KeyHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/KeyHandler;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/KeyHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/KeyHandler;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/KeyHandler;Landroid/view/KeyEvent;)Landroid/os/Message;
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyHandler;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/KeyHandler;I)V
    .locals 0
    .param p1, "gesture"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyHandler;->handleGesture(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/KeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->onConfigurationChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcom/android/server/policy/KeyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 89
    const/4 v1, 0x4

    .line 88
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 90
    const/16 v1, 0xd

    .line 88
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/KeyHandler;->mSystemReady:Z

    .line 156
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    .line 158
    new-instance v0, Lcom/android/server/policy/KeyHandler$1;

    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/KeyHandler$1;-><init>(Lcom/android/server/policy/KeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 741
    new-instance v0, Lcom/android/server/policy/KeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/KeyHandler$2;-><init>(Lcom/android/server/policy/KeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 188
    iput-object p1, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    .line 189
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 191
    new-instance v0, Lcom/android/server/policy/KeyHandler$EventHandler;

    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/KeyHandler$EventHandler;-><init>(Lcom/android/server/policy/KeyHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    .line 187
    return-void
.end method

.method private acquireGestureWakeLock(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 592
    return-void
.end method

.method private dismissKeyguard()V
    .locals 3

    .prologue
    .line 774
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WindowManagerGlobal.getWindowManagerService() instance not alive"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchMediaKeyWithWakeLockToMediaSession(I)Z
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 686
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 687
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 688
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    .line 688
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 690
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 691
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 692
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 693
    return v9

    .line 696
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    sget-object v2, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to send media key event"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return v6
.end method

.method private doHapticFeedback(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    const/4 v0, 0x0

    .line 703
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 704
    const-string/jumbo v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    .line 703
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 705
    .local v0, "hapticsEnabled":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    .line 706
    if-eqz p1, :cond_2

    .line 707
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mVibePattern:[J

    sget-object v3, Lcom/android/server/policy/KeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 702
    :cond_1
    :goto_0
    return-void

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/server/policy/KeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method private ensureAudioManager()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 370
    :cond_0
    return-void
.end method

.method private ensureCameraId()V
    .locals 4

    .prologue
    .line 442
    const-string/jumbo v0, ""

    .line 444
    .local v0, "cameraId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->getCameraId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 449
    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraId:Ljava/lang/String;

    .line 441
    return-void

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraId:Ljava/lang/String;

    .line 447
    return-void

    .line 448
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 449
    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraId:Ljava/lang/String;

    .line 448
    throw v2
.end method

.method private ensureCameraManager()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 435
    :cond_0
    return-void
.end method

.method private ensureKeyguardManager()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 418
    :cond_0
    return-void
.end method

.method private ensurePowerManager()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_1

    .line 398
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 393
    :cond_1
    return-void
.end method

.method private ensureSensors()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 403
    :cond_1
    return-void
.end method

.method private ensureStatusBarService()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    .line 414
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 412
    :cond_0
    return-void
.end method

.method private ensureTelecomManager()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 376
    :cond_0
    return-void
.end method

.method private ensureVibrator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 385
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 386
    const v1, 0x1070020

    .line 385
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/KeyHandler;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mVibePattern:[J

    .line 387
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iput-object v2, p0, Lcom/android/server/policy/KeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 382
    :cond_0
    return-void
.end method

.method private ensureWakeLocks()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 425
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 427
    const-string/jumbo v1, "GestureWakeLock"

    .line 426
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 431
    const-string/jumbo v1, "ProximityWakeLock"

    .line 430
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 424
    :cond_1
    return-void
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 715
    iget-object v6, p0, Lcom/android/server/policy/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, "ids":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 717
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    .line 718
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/policy/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 719
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 720
    .local v1, "flashAvailable":Ljava/lang/Boolean;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 721
    .local v4, "lensFacing":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 722
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 723
    return-object v2

    .line 717
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 727
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "flashAvailable":Ljava/lang/Boolean;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const-string/jumbo v5, ""

    return-object v5
.end method

.method private getConfiguration()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10e00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDoubleTapKeyCode:I

    .line 226
    const v1, 0x10e00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDrawOKeyCode:I

    .line 227
    const v1, 0x10e0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mTwoFingerSwipeKeyCode:I

    .line 228
    const v1, 0x10e00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDrawVKeyCode:I

    .line 229
    const v1, 0x10e00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDrawInverseVKeyCode:I

    .line 230
    const v1, 0x10e0100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDrawArrowLeftKeyCode:I

    .line 231
    const v1, 0x10e0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDrawArrowRightKeyCode:I

    .line 232
    const v1, 0x10e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeUpKeyCode:I

    .line 233
    const v1, 0x10e0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeRightKeyCode:I

    .line 234
    const v1, 0x10e0104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeDowKeyCode:I

    .line 235
    const v1, 0x10e0105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeLeftKeyCode:I

    .line 236
    const v1, 0x10e00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDrawMKeyCode:I

    .line 237
    const v1, 0x10e00ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/KeyHandler;->mDrawWKeyCode:I

    .line 239
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 240
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDoubleTapKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDoubleTapGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDrawOKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDrawOGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mTwoFingerSwipeKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mTwoFingerSwipeGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDrawVKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDrawVGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDrawInverseVKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDrawInverseVGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDrawArrowLeftKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDrawArrowLeftGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDrawArrowRightKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDrawArrowRightGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeUpKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeUpGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeRightKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeRightGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeDowKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeDowGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeLeftKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeLeftGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDrawMKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDrawMGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/policy/KeyHandler;->mDrawWKeyCode:I

    iget v3, p0, Lcom/android/server/policy/KeyHandler;->mDrawWGesture:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->onConfigurationChanged()V

    .line 221
    return-void
.end method

.method private getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 787
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 788
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 789
    return-object v3

    .line 791
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 792
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 793
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_1
    return-object v2
.end method

.method private getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 657
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    return-object v0
.end method

.method private handleGesture(I)V
    .locals 8
    .param p1, "gesture"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 513
    sget-object v4, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleCodeBehavior: gesture = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Lcom/android/server/policy/KeyHandler;->acquireGestureWakeLock(I)V

    .line 518
    iget-object v4, p0, Lcom/android/server/policy/KeyHandler;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4, v7, v3}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 520
    invoke-direct {p0, v2}, Lcom/android/server/policy/KeyHandler;->doHapticFeedback(Z)V

    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, "handled":Z
    packed-switch p1, :pswitch_data_0

    .line 582
    const/4 v1, 0x0

    .line 583
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->releaseGestureWakeLock()V

    .line 587
    .end local v1    # "handled":Z
    :goto_0
    if-nez v1, :cond_0

    .line 588
    invoke-direct {p0, v3}, Lcom/android/server/policy/KeyHandler;->doHapticFeedback(Z)V

    .line 511
    :cond_0
    return-void

    .line 526
    .restart local v1    # "handled":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v2, v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 528
    const/4 v1, 0x1

    .line 529
    goto :goto_0

    .line 531
    :pswitch_1
    const/16 v2, 0x55

    invoke-direct {p0, v2}, Lcom/android/server/policy/KeyHandler;->dispatchMediaKeyWithWakeLockToMediaSession(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 534
    .local v1, "handled":Z
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/server/policy/KeyHandler;->mTorchEnabled:Z

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/policy/KeyHandler;->setTorchMode(Z)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 537
    .local v1, "handled":Z
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x58

    invoke-direct {p0, v2}, Lcom/android/server/policy/KeyHandler;->dispatchMediaKeyWithWakeLockToMediaSession(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .local v1, "handled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 540
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lcom/android/server/policy/KeyHandler;->dispatchMediaKeyWithWakeLockToMediaSession(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .local v1, "handled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 543
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 544
    const/4 v1, 0x1

    .line 545
    goto :goto_0

    .line 547
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 548
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->dismissKeyguard()V

    .line 551
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, "dialIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 553
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 554
    const/4 v1, 0x1

    .line 555
    goto :goto_0

    .line 557
    .end local v0    # "dialIntent":Landroid/content/Intent;
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/android/server/policy/KeyHandler;->doHapticFeedback(Z)V

    .line 558
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    new-instance v4, Lcom/android/server/policy/KeyHandler$3;

    invoke-direct {v4, p0}, Lcom/android/server/policy/KeyHandler$3;-><init>(Lcom/android/server/policy/KeyHandler;)V

    invoke-virtual {v2, v4}, Lcom/android/server/policy/KeyHandler$EventHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private isDisabledByPhoneState()Z
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 802
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyguardShowing()Z
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private isMusicActive()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0

    .line 769
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onConfigurationChanged()V
    .locals 19

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 260
    const-string/jumbo v16, "gestures_enabled"

    const/16 v17, 0x0

    .line 259
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_e

    const/4 v9, 0x1

    .line 261
    .local v9, "gesturesEnabled":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/policy/KeyHandler;->mGesturesEnabled:Z

    if-eq v9, v15, :cond_0

    .line 262
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/policy/KeyHandler;->mGesturesEnabled:Z

    .line 265
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 266
    const-string/jumbo v16, "gesture_double_tap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 267
    const v18, 0x10e0107

    .line 266
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 265
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 268
    .local v1, "doubleTapGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDoubleTapGesture:I

    if-eq v1, v15, :cond_1

    .line 269
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/policy/KeyHandler;->mDoubleTapGesture:I

    .line 270
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDoubleTapKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDoubleTapGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 274
    const-string/jumbo v16, "gesture_draw_o"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 275
    const v18, 0x10e010a

    .line 274
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 273
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 276
    .local v6, "drawOGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDrawOGesture:I

    if-eq v6, v15, :cond_2

    .line 277
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/policy/KeyHandler;->mDrawOGesture:I

    .line 278
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawOKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawOGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 282
    const-string/jumbo v16, "gesture_two_finger_swipe"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 283
    const v18, 0x10e0113

    .line 282
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 281
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 284
    .local v14, "twoFingerSwipeGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mTwoFingerSwipeGesture:I

    if-eq v14, v15, :cond_3

    .line 285
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/policy/KeyHandler;->mTwoFingerSwipeGesture:I

    .line 286
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mTwoFingerSwipeKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mTwoFingerSwipeGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 290
    const-string/jumbo v16, "gesture_draw_v"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 291
    const v18, 0x10e0108

    .line 290
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 289
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 292
    .local v7, "drawVGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDrawVGesture:I

    if-eq v7, v15, :cond_4

    .line 293
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/policy/KeyHandler;->mDrawVGesture:I

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawVKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawVGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 297
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 298
    const-string/jumbo v16, "gesture_draw_inverse_v"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 299
    const v18, 0x10e0109

    .line 298
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 297
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 300
    .local v4, "drawInverseVGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDrawInverseVGesture:I

    if-eq v4, v15, :cond_5

    .line 301
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/KeyHandler;->mDrawInverseVGesture:I

    .line 302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawInverseVKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawInverseVGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 305
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 306
    const-string/jumbo v16, "gesture_draw_arrow_left"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 307
    const v18, 0x10e010d

    .line 306
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 305
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, "drawArrowLeftGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowLeftGesture:I

    if-eq v2, v15, :cond_6

    .line 309
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowLeftGesture:I

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowLeftKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowLeftGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 314
    const-string/jumbo v16, "gesture_draw_arrow_right"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 315
    const v18, 0x10e010e

    .line 314
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 313
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 316
    .local v3, "drawArrowRightGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowRightGesture:I

    if-eq v3, v15, :cond_7

    .line 317
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowRightGesture:I

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowRightKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawArrowRightGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 322
    const-string/jumbo v16, "gesture_one_finger_swipe_up"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 323
    const v18, 0x10e010f

    .line 322
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 321
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 324
    .local v13, "oneFingerSwipeUpGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeUpGesture:I

    if-eq v13, v15, :cond_8

    .line 325
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeUpGesture:I

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeUpKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeUpGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 330
    const-string/jumbo v16, "gesture_one_finger_swipe_right"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 331
    const v18, 0x10e0110

    .line 330
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 329
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 332
    .local v12, "oneFingerSwipeRightGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeRightGesture:I

    if-eq v12, v15, :cond_9

    .line 333
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeRightGesture:I

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeRightKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeRightGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 338
    const-string/jumbo v16, "gesture_one_finger_swipe_down"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 339
    const v18, 0x10e0111

    .line 338
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 337
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 340
    .local v10, "oneFingerSwipeDowGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeDowGesture:I

    if-eq v10, v15, :cond_a

    .line 341
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeDowGesture:I

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeDowKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeDowGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 345
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 346
    const-string/jumbo v16, "gesture_one_finger_swipe_left"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 347
    const v18, 0x10e0112

    .line 346
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 345
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 348
    .local v11, "oneFingerSwipeLeftGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeLeftGesture:I

    if-eq v11, v15, :cond_b

    .line 349
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeLeftGesture:I

    .line 350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeLeftKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mOneFingerSwipeLeftGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 354
    const-string/jumbo v16, "gesture_draw_m"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 355
    const v18, 0x10e010b

    .line 354
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 353
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 356
    .local v5, "drawMGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDrawMGesture:I

    if-eq v5, v15, :cond_c

    .line 357
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/KeyHandler;->mDrawMGesture:I

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawMKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawMGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 362
    const-string/jumbo v16, "gesture_draw_w"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 363
    const v18, 0x10e010c

    .line 362
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 361
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 364
    .local v8, "drawWGesture":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/KeyHandler;->mDrawWGesture:I

    if-eq v8, v15, :cond_d

    .line 365
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/policy/KeyHandler;->mDrawWGesture:I

    .line 366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawWKeyCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/KeyHandler;->mDrawWGesture:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    :cond_d
    return-void

    .line 259
    .end local v1    # "doubleTapGesture":I
    .end local v2    # "drawArrowLeftGesture":I
    .end local v3    # "drawArrowRightGesture":I
    .end local v4    # "drawInverseVGesture":I
    .end local v5    # "drawMGesture":I
    .end local v6    # "drawOGesture":I
    .end local v7    # "drawVGesture":I
    .end local v8    # "drawWGesture":I
    .end local v9    # "gesturesEnabled":Z
    .end local v10    # "oneFingerSwipeDowGesture":I
    .end local v11    # "oneFingerSwipeLeftGesture":I
    .end local v12    # "oneFingerSwipeRightGesture":I
    .end local v13    # "oneFingerSwipeUpGesture":I
    .end local v14    # "twoFingerSwipeGesture":I
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "gesturesEnabled":Z
    goto/16 :goto_0
.end method

.method private processEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 663
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v1, Lcom/android/server/policy/KeyHandler$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/KeyHandler$4;-><init>(Lcom/android/server/policy/KeyHandler;Landroid/view/KeyEvent;)V

    .line 682
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    .line 663
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 661
    return-void
.end method

.method private registerObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 460
    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 462
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "gestures_enabled"

    .line 461
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 463
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 461
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 465
    const-string/jumbo v1, "gesture_double_tap"

    .line 464
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 466
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 464
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 468
    const-string/jumbo v1, "gesture_draw_v"

    .line 467
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 467
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 471
    const-string/jumbo v1, "gesture_draw_inverse_v"

    .line 470
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 472
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 470
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 474
    const-string/jumbo v1, "gesture_draw_o"

    .line 473
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 475
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 473
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 477
    const-string/jumbo v1, "gesture_draw_m"

    .line 476
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 478
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 476
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 480
    const-string/jumbo v1, "gesture_draw_w"

    .line 479
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 479
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 483
    const-string/jumbo v1, "gesture_draw_arrow_left"

    .line 482
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 484
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 482
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 486
    const-string/jumbo v1, "gesture_draw_arrow_right"

    .line 485
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 485
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 489
    const-string/jumbo v1, "gesture_one_finger_swipe_up"

    .line 488
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 490
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 488
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 492
    const-string/jumbo v1, "gesture_one_finger_swipe_right"

    .line 491
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 491
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 495
    const-string/jumbo v1, "gesture_one_finger_swipe_up"

    .line 494
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 496
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 494
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 498
    const-string/jumbo v1, "gesture_one_finger_swipe_right"

    .line 497
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 497
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 501
    const-string/jumbo v1, "gesture_one_finger_swipe_down"

    .line 500
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 502
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 500
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 504
    const-string/jumbo v1, "gesture_one_finger_swipe_left"

    .line 503
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 505
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 503
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 507
    const-string/jumbo v1, "gesture_two_finger_swipe"

    .line 506
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mObserver:Landroid/database/ContentObserver;

    .line 506
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 459
    return-void
.end method

.method private registerTorchCallback()V
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/KeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 453
    :cond_0
    return-void
.end method

.method private releaseGestureWakeLock()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 599
    :cond_0
    return-void
.end method

.method private setTorchMode(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 732
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/KeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/server/policy/KeyHandler;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    const/4 v2, 0x1

    return v2

    .line 735
    :catch_0
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v4

    .line 733
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 734
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    return v4
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 611
    sget-object v5, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleKeyEvent(): event.toString(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-boolean v5, p0, Lcom/android/server/policy/KeyHandler;->mSystemReady:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/policy/KeyHandler;->mGesturesEnabled:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->isDisabledByPhoneState()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/policy/KeyHandler;->mIsInPocket:Z

    if-eqz v5, :cond_1

    .line 615
    :cond_0
    return v8

    .line 618
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 619
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    .line 620
    .local v4, "scanCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 622
    .local v3, "repeatCount":I
    if-gtz v4, :cond_2

    .line 624
    sget-object v5, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "handleKeyEvent(): scanCode is invalid, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v8

    .line 629
    :cond_2
    if-ne v0, v9, :cond_3

    if-eqz v3, :cond_4

    .line 631
    :cond_3
    sget-object v5, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "handleKeyEvent(): action != ACTION_UP || repeatCount != 0, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return v8

    .line 636
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/KeyHandler;->mGestures:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-lez v5, :cond_6

    const/4 v1, 0x1

    .line 639
    .local v1, "isKeySupportedAndEnabled":Z
    :goto_0
    sget-object v5, Lcom/android/server/policy/KeyHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleKeyEvent(): isKeySupportedAndEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/KeyHandler$EventHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 652
    :cond_5
    :goto_1
    return v1

    .line 636
    .end local v1    # "isKeySupportedAndEnabled":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isKeySupportedAndEnabled":Z
    goto :goto_0

    .line 643
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyHandler;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v2

    .line 644
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/KeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_8

    .line 645
    iget-object v5, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/policy/KeyHandler$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 646
    invoke-direct {p0, p1}, Lcom/android/server/policy/KeyHandler;->processEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 648
    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/KeyHandler;->mHandler:Lcom/android/server/policy/KeyHandler$EventHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/policy/KeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected setIsInPocket(Z)V
    .locals 0
    .param p1, "pocket"    # Z

    .prologue
    .line 606
    iput-boolean p1, p0, Lcom/android/server/policy/KeyHandler;->mIsInPocket:Z

    .line 605
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/KeyHandler;->mSystemReady:Z

    .line 198
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->getConfiguration()V

    .line 201
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureAudioManager()V

    .line 202
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureTelecomManager()V

    .line 203
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureVibrator()V

    .line 204
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensurePowerManager()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureSensors()V

    .line 206
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureStatusBarService()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureCameraManager()V

    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureKeyguardManager()V

    .line 209
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureWakeLocks()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->ensureCameraId()V

    .line 215
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->registerTorchCallback()V

    .line 218
    invoke-direct {p0}, Lcom/android/server/policy/KeyHandler;->registerObservers()V

    .line 194
    return-void
.end method
