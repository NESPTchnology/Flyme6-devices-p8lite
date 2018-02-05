.class public Lorg/slim/framework/internal/policy/HardwareKeyHandler;
.super Ljava/lang/Object;
.source "HardwareKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;,
        Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_ASSIST:I = 0x8

.field private static final KEY_MASK_BACK:I = 0x2

.field private static final KEY_MASK_CAMERA:I = 0x20

.field private static final KEY_MASK_HOME:I = 0x1

.field private static final KEY_MASK_MENU:I = 0x4

.field private static final SUPPORTED_KEYS:[I

.field private static final TAG:Ljava/lang/String; = "HardwareKeyHandler"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field mAppSwitchConsumed:Z

.field mAppSwitchDoubleTapPending:Z

.field mAppSwitchPressed:Z

.field mAssistConsumed:Z

.field mAssistDoubleTapPending:Z

.field mAssistPressed:Z

.field mBackConsumed:Z

.field mBackDoubleTapPending:Z

.field mBackPressed:Z

.field mCameraConsumed:Z

.field mCameraDoubleTapPending:Z

.field mCameraPressed:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceHardwareKeys:I

.field private mDisableVibration:Z

.field private mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

.field private mDoubleTapOnAssistBehavior:Ljava/lang/String;

.field private mDoubleTapOnBackBehavior:Ljava/lang/String;

.field private mDoubleTapOnCameraBehavior:Ljava/lang/String;

.field private mDoubleTapOnHomeBehavior:Ljava/lang/String;

.field private mDoubleTapOnMenuBehavior:Ljava/lang/String;

.field private final mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field private mHandler:Landroid/os/Handler;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field mHomePressed:Z

.field private mHwKeySettingsObserver:Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

.field private mKeysDisabled:Z

.field private mLongPressOnAppSwitchBehavior:Ljava/lang/String;

.field private mLongPressOnAssistBehavior:Ljava/lang/String;

.field private mLongPressOnBackBehavior:Ljava/lang/String;

.field private mLongPressOnCameraBehavior:Ljava/lang/String;

.field private mLongPressOnHomeBehavior:Ljava/lang/String;

.field private mLongPressOnMenuBehavior:Ljava/lang/String;

.field private mLongPressVibePattern:[J

.field mMenuConsumed:Z

.field mMenuDoubleTapPending:Z

.field mMenuPressed:Z

.field private mPreloadedRecentApps:Z

.field private mPressOnAppSwitchBehavior:Ljava/lang/String;

.field private mPressOnAssistBehavior:Ljava/lang/String;

.field private mPressOnBackBehavior:Ljava/lang/String;

.field private mPressOnCameraBehavior:Ljava/lang/String;

.field private mPressOnHomeBehavior:Ljava/lang/String;

.field private mPressOnMenuBehavior:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVirtualKeyVibePattern:[J


# direct methods
.method static synthetic -get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->updateKeyAssignments()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->SUPPORTED_KEYS:[I

    .line 65
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 66
    const/4 v1, 0x4

    .line 65
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 67
    const/16 v1, 0xd

    .line 65
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 46
    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x3
        0x52
        0x4
        0xdb
        0x1b
        0xbb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    .line 125
    new-instance v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;

    invoke-direct {v0, p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;-><init>(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 254
    iput-object p1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    .line 257
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 258
    const v1, 0x370e0001

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    .line 260
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 261
    const v1, 0x1070021

    .line 260
    invoke-static {v0, v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressVibePattern:[J

    .line 262
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    const v1, 0x1070022

    .line 262
    invoke-static {v0, v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVirtualKeyVibePattern:[J

    .line 265
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 267
    new-instance v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;-><init>(Lorg/slim/framework/internal/policy/HardwareKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHwKeySettingsObserver:Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

    .line 268
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHwKeySettingsObserver:Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

    invoke-virtual {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->observe()V

    .line 253
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 804
    iget-boolean v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-eqz v1, :cond_0

    .line 805
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    .line 806
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lslim/action/SlimActionsManager;->getInstance(Landroid/content/Context;)Lslim/action/SlimActionsManager;

    move-result-object v0

    .line 807
    .local v0, "actionsManager":Lslim/action/SlimActionsManager;
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lslim/action/SlimActionsManager;->cancelPreloadRecentApps()V

    .line 803
    .end local v0    # "actionsManager":Lslim/action/SlimActionsManager;
    :cond_0
    return-void
.end method

.method private finishLockTask()V
    .locals 2

    .prologue
    .line 815
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 273
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 274
    return-object v3

    .line 276
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 277
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 278
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    return-object v2
.end method

.method private isInLockTask()Z
    .locals 2

    .prologue
    .line 822
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 823
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private isKeyDisabled(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 368
    iget-boolean v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mKeysDisabled:Z

    if-eqz v1, :cond_1

    .line 369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->SUPPORTED_KEYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 370
    sget-object v1, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->SUPPORTED_KEYS:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 371
    const/4 v1, 0x1

    return v1

    .line 369
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 829
    iget-boolean v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    if-eqz v1, :cond_0

    .line 830
    iput-boolean v5, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 831
    return v5

    .line 833
    :cond_0
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 836
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 837
    const-string/jumbo v6, "haptic_feedback_enabled"

    const/4 v8, -0x2

    .line 836
    invoke-static {v1, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    move v0, v7

    .line 838
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_4

    .line 841
    :cond_1
    const/4 v4, 0x0

    .line 842
    .local v4, "pattern":[J
    packed-switch p2, :pswitch_data_0

    .line 850
    return v5

    .line 834
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    return v5

    :cond_3
    move v0, v5

    .line 836
    goto :goto_0

    .line 839
    .restart local v0    # "hapticsDisabled":Z
    :cond_4
    return v5

    .line 844
    .restart local v4    # "pattern":[J
    :pswitch_0
    iget-object v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressVibePattern:[J

    .line 854
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_5

    .line 855
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 856
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    if-ne v1, v7, :cond_6

    .line 863
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v5

    .end local v4    # "pattern":[J
    sget-object v6, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 868
    :goto_3
    return v7

    .line 847
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :pswitch_1
    iget-object v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVirtualKeyVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 858
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 859
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_2

    .line 866
    :cond_6
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_3

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 2

    .prologue
    .line 796
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    .line 797
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lslim/action/SlimActionsManager;->getInstance(Landroid/content/Context;)Lslim/action/SlimActionsManager;

    move-result-object v0

    .line 798
    .local v0, "actionsManager":Lslim/action/SlimActionsManager;
    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0}, Lslim/action/SlimActionsManager;->preloadRecentApps()V

    .line 795
    :cond_0
    return-void
.end method

.method private updateKeyAssignments()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 284
    iget v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_1

    const/4 v5, 0x1

    .line 285
    .local v5, "noMenu":Z
    :goto_0
    iget v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    const/4 v2, 0x1

    .line 286
    .local v2, "noBack":Z
    :goto_1
    iget v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_3

    const/4 v4, 0x1

    .line 287
    .local v4, "noHome":Z
    :goto_2
    iget v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_4

    const/4 v1, 0x1

    .line 288
    .local v1, "noAssist":Z
    :goto_3
    iget v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_5

    const/4 v0, 0x1

    .line 289
    .local v0, "noAppSwitch":Z
    :goto_4
    iget v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_6

    const/4 v3, 0x1

    .line 292
    .local v3, "noCamera":Z
    :goto_5
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 293
    const-string/jumbo v9, "disable_hw_keys"

    .line 294
    const/4 v10, -0x2

    .line 291
    invoke-static {v6, v9, v8, v10}, Lslim/provider/SlimSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_6
    iput-boolean v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mKeysDisabled:Z

    .line 299
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 298
    invoke-static {v6, v4}, Lslim/utils/HwKeyHelper;->getPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 297
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    .line 302
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 301
    invoke-static {v6, v4}, Lslim/utils/HwKeyHelper;->getLongPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 300
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    .line 305
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 304
    invoke-static {v6, v4}, Lslim/utils/HwKeyHelper;->getDoubleTapOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 303
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    .line 310
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 309
    invoke-static {v6, v5}, Lslim/utils/HwKeyHelper;->getPressOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 308
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    .line 312
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 313
    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    move v7, v8

    .line 312
    :cond_0
    invoke-static {v6, v5, v7}, Lslim/utils/HwKeyHelper;->getLongPressOnMenuBehavior(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 311
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    .line 316
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 315
    invoke-static {v6, v5}, Lslim/utils/HwKeyHelper;->getDoubleTapOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 314
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    .line 321
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 320
    invoke-static {v6, v2}, Lslim/utils/HwKeyHelper;->getPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 319
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    .line 324
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 323
    invoke-static {v6, v2}, Lslim/utils/HwKeyHelper;->getLongPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 322
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    .line 327
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 326
    invoke-static {v6, v2}, Lslim/utils/HwKeyHelper;->getDoubleTapOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 325
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    .line 332
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 331
    invoke-static {v6, v1}, Lslim/utils/HwKeyHelper;->getPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 330
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    .line 335
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 334
    invoke-static {v6, v1}, Lslim/utils/HwKeyHelper;->getLongPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 333
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    .line 338
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 337
    invoke-static {v6, v1}, Lslim/utils/HwKeyHelper;->getDoubleTapOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 336
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    .line 343
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 342
    invoke-static {v6, v0}, Lslim/utils/HwKeyHelper;->getPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 341
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 346
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 345
    invoke-static {v6, v0}, Lslim/utils/HwKeyHelper;->getLongPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 344
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 349
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 348
    invoke-static {v6, v0}, Lslim/utils/HwKeyHelper;->getDoubleTapOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 347
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    .line 354
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 353
    invoke-static {v6, v3}, Lslim/utils/HwKeyHelper;->getPressOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 352
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    .line 357
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 356
    invoke-static {v6, v3}, Lslim/utils/HwKeyHelper;->getLongPressOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 355
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    .line 360
    iget-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 359
    invoke-static {v6, v3}, Lslim/utils/HwKeyHelper;->getDoubleTapOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 358
    iput-object v6, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    .line 283
    return-void

    .line 284
    .end local v0    # "noAppSwitch":Z
    .end local v1    # "noAssist":Z
    .end local v2    # "noBack":Z
    .end local v3    # "noCamera":Z
    .end local v4    # "noHome":Z
    .end local v5    # "noMenu":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "noMenu":Z
    goto/16 :goto_0

    .line 285
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "noBack":Z
    goto/16 :goto_1

    .line 286
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "noHome":Z
    goto/16 :goto_2

    .line 287
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "noAssist":Z
    goto/16 :goto_3

    .line 288
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "noAppSwitch":Z
    goto/16 :goto_4

    .line 289
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "noCamera":Z
    goto/16 :goto_5

    :cond_7
    move v6, v8

    .line 291
    goto/16 :goto_6
.end method


# virtual methods
.method public handleKeyEvent(IIZZZZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "down"    # Z
    .param p4, "canceled"    # Z
    .param p5, "longpress"    # Z
    .param p6, "keyguardOn"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-direct {p0, p1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->isKeyDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    return v4

    .line 385
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 386
    if-nez p3, :cond_6

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    if-eqz v0, :cond_6

    .line 387
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    .line 388
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    if-eqz v0, :cond_1

    .line 389
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    .line 390
    return v4

    .line 393
    :cond_1
    if-eqz p4, :cond_2

    .line 394
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring HOME, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v4

    .line 398
    :cond_2
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 400
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    .line 401
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 402
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 401
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    return v4

    .line 406
    :cond_3
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 408
    return v4

    .line 411
    :cond_4
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 412
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 414
    :cond_5
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 415
    return v4

    .line 418
    :cond_6
    if-eqz p3, :cond_a

    .line 419
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_8

    .line 420
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 421
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 420
    if-nez v0, :cond_7

    .line 422
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 419
    if-eqz v0, :cond_8

    .line 423
    :cond_7
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 425
    :cond_8
    if-nez p2, :cond_b

    .line 426
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    .line 427
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    if-eqz v0, :cond_a

    .line 428
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    .line 429
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 430
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    .line 431
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 433
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 435
    :cond_9
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 450
    :cond_a
    :goto_0
    return v4

    .line 437
    :cond_b
    if-eqz p5, :cond_a

    .line 438
    if-nez p6, :cond_a

    .line 439
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 440
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 441
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 443
    :cond_c
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    .line 444
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 445
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 446
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    goto :goto_0

    .line 451
    :cond_d
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1a

    .line 454
    if-nez p3, :cond_12

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuPressed:Z

    if-eqz v0, :cond_12

    .line 455
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuPressed:Z

    .line 456
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    if-eqz v0, :cond_e

    .line 457
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    .line 458
    return v4

    .line 461
    :cond_e
    if-eqz p4, :cond_f

    .line 462
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring MENU, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v4

    .line 467
    :cond_f
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 468
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 470
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    .line 471
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 472
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 471
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    return v4

    .line 476
    :cond_10
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 477
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 480
    :cond_11
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 481
    return v4

    .line 484
    :cond_12
    if-eqz p3, :cond_17

    .line 486
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_14

    .line 487
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 488
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 487
    if-nez v0, :cond_13

    .line 489
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 486
    if-eqz v0, :cond_14

    .line 490
    :cond_13
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 492
    :cond_14
    if-nez p2, :cond_16

    .line 493
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuPressed:Z

    .line 494
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    if-eqz v0, :cond_17

    .line 495
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    .line 496
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 497
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    .line 498
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 499
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 500
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 502
    :cond_15
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 503
    return v4

    .line 505
    :cond_16
    if-eqz p5, :cond_17

    .line 506
    if-nez p6, :cond_17

    .line 507
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 518
    :cond_17
    return v4

    .line 508
    :cond_18
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 509
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 511
    :cond_19
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 512
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 513
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    .line 514
    return v4

    .line 519
    :cond_1a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_28

    .line 522
    if-nez p3, :cond_1f

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackPressed:Z

    if-eqz v0, :cond_1f

    .line 523
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackPressed:Z

    .line 524
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    if-eqz v0, :cond_1b

    .line 525
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    .line 526
    return v4

    .line 529
    :cond_1b
    if-eqz p4, :cond_1c

    .line 530
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring BACK, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return v4

    .line 535
    :cond_1c
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 536
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 538
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    .line 539
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 540
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 539
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    return v4

    .line 544
    :cond_1d
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 545
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 548
    :cond_1e
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 549
    return v4

    .line 552
    :cond_1f
    if-eqz p3, :cond_23

    .line 554
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_21

    .line 555
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 556
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 555
    if-nez v0, :cond_20

    .line 557
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 554
    if-eqz v0, :cond_21

    .line 558
    :cond_20
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 560
    :cond_21
    if-nez p2, :cond_24

    .line 561
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackPressed:Z

    .line 562
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    if-eqz v0, :cond_23

    .line 563
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    .line 564
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 565
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    .line 566
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 568
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 570
    :cond_22
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 589
    :cond_23
    :goto_1
    return v4

    .line 572
    :cond_24
    if-eqz p5, :cond_23

    .line 573
    if-nez p6, :cond_23

    .line 574
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 575
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->isInLockTask()Z

    move-result v0

    .line 573
    if-eqz v0, :cond_23

    .line 576
    :cond_25
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 577
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 579
    :cond_26
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 580
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->isInLockTask()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 581
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->finishLockTask()V

    .line 585
    :goto_2
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    goto :goto_1

    .line 583
    :cond_27
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    .line 590
    :cond_28
    const/16 v0, 0xdb

    if-ne p1, v0, :cond_34

    .line 593
    if-nez p3, :cond_2d

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistPressed:Z

    if-eqz v0, :cond_2d

    .line 594
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistPressed:Z

    .line 595
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    if-eqz v0, :cond_29

    .line 596
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    .line 597
    return v4

    .line 600
    :cond_29
    if-eqz p4, :cond_2a

    .line 601
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring ASSIST, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v4

    .line 606
    :cond_2a
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 607
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 608
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 609
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    .line 610
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 611
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 610
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 612
    return v4

    .line 615
    :cond_2b
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 616
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 619
    :cond_2c
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 620
    return v4

    .line 624
    :cond_2d
    if-eqz p3, :cond_31

    .line 625
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_2f

    .line 626
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 627
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 626
    if-nez v0, :cond_2e

    .line 628
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 625
    if-eqz v0, :cond_2f

    .line 629
    :cond_2e
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 631
    :cond_2f
    if-nez p2, :cond_32

    .line 632
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistPressed:Z

    .line 633
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    if-eqz v0, :cond_31

    .line 634
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    .line 635
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 636
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    .line 637
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 639
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 641
    :cond_30
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 655
    :cond_31
    :goto_3
    return v4

    .line 643
    :cond_32
    if-eqz p5, :cond_31

    .line 644
    if-nez p6, :cond_31

    .line 645
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 646
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 647
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 649
    :cond_33
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 650
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 651
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    goto :goto_3

    .line 656
    :cond_34
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_40

    .line 659
    if-nez p3, :cond_39

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraPressed:Z

    if-eqz v0, :cond_39

    .line 660
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraPressed:Z

    .line 661
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    if-eqz v0, :cond_35

    .line 662
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    .line 663
    return v4

    .line 666
    :cond_35
    if-eqz p4, :cond_36

    .line 667
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring CAMERA, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v4

    .line 672
    :cond_36
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 673
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 675
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    .line 676
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 677
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 676
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    return v4

    .line 681
    :cond_37
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 682
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 685
    :cond_38
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 686
    return v4

    .line 690
    :cond_39
    if-eqz p3, :cond_3d

    .line 691
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_3b

    .line 692
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 693
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 692
    if-nez v0, :cond_3a

    .line 694
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 691
    if-eqz v0, :cond_3b

    .line 695
    :cond_3a
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 697
    :cond_3b
    if-nez p2, :cond_3e

    .line 698
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraPressed:Z

    .line 699
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    if-eqz v0, :cond_3d

    .line 700
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    .line 701
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 702
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    .line 703
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 704
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 705
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 707
    :cond_3c
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 721
    :cond_3d
    :goto_4
    return v4

    .line 709
    :cond_3e
    if-eqz p5, :cond_3d

    .line 710
    if-nez p6, :cond_3d

    .line 711
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 712
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 713
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 715
    :cond_3f
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 716
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 717
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    goto :goto_4

    .line 722
    :cond_40
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_4c

    .line 725
    if-nez p3, :cond_45

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchPressed:Z

    if-eqz v0, :cond_45

    .line 726
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchPressed:Z

    .line 727
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    if-eqz v0, :cond_41

    .line 728
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    .line 729
    return v4

    .line 732
    :cond_41
    if-eqz p4, :cond_42

    .line 733
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring APPSWITCH, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v4

    .line 738
    :cond_42
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 739
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 740
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 741
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    .line 742
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 743
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 742
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 744
    return v4

    .line 747
    :cond_43
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 748
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 751
    :cond_44
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 752
    return v4

    .line 756
    :cond_45
    if-eqz p3, :cond_49

    .line 757
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_47

    .line 758
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 759
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 758
    if-nez v0, :cond_46

    .line 760
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 757
    if-eqz v0, :cond_47

    .line 761
    :cond_46
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 763
    :cond_47
    if-nez p2, :cond_4a

    .line 764
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchPressed:Z

    .line 765
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    if-eqz v0, :cond_49

    .line 766
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    .line 767
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 768
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    .line 769
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 770
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    .line 771
    const-string/jumbo v1, "**recents**"

    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 772
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 774
    :cond_48
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 790
    :cond_49
    :goto_5
    return v4

    .line 776
    :cond_4a
    if-eqz p5, :cond_49

    .line 777
    if-nez p6, :cond_49

    .line 778
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 779
    const-string/jumbo v1, "**null**"

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 780
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 781
    const-string/jumbo v1, "**recents**"

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 782
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 784
    :cond_4b
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 785
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lslim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 786
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    goto :goto_5

    .line 792
    :cond_4c
    return v2
.end method

.method public isHwKeysDisabled()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mKeysDisabled:Z

    return v0
.end method
