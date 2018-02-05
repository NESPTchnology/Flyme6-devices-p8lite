.class public Lcom/android/server/wifi/WifiConnectivityManager;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConnectivityManager$1;,
        Lcom/android/server/wifi/WifiConnectivityManager$2;,
        Lcom/android/server/wifi/WifiConnectivityManager$3;,
        Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;,
        Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    }
.end annotation


# static fields
.field private static final CHANNEL_LIST_AGE_MS:I = 0x36ee80

.field private static final CONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x27100

.field private static final DISCONNECTED_PNO_SCAN_INTERVAL_MS:I = 0x4e20

.field private static final ENABLE_BACKGROUND_SCAN:Z = false

.field private static final ENABLE_CONNECTED_PNO_SCAN:Z = false

.field private static final LOW_RSSI_NETWORK_RETRY_MAX_DELAY_MS:I = 0x13880

.field private static final LOW_RSSI_NETWORK_RETRY_START_DELAY_MS:I = 0x4e20

.field public static final MAX_CONNECTION_ATTEMPTS_RATE:I = 0x6

.field public static final MAX_CONNECTION_ATTEMPTS_TIME_INTERVAL_MS:I = 0x3a980

.field public static final MAX_PERIODIC_SCAN_INTERVAL_MS:I = 0x27100

.field public static final MAX_SCAN_RESTART_ALLOWED:I = 0x5

.field public static final PERIODIC_SCAN_INTERVAL_MS:I = 0x4e20

.field public static final PERIODIC_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Periodic Scan Timer"

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field public static final RESTART_CONNECTIVITY_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Scan"

.field private static final RESTART_SCAN_DELAY_MS:I = 0x7d0

.field public static final RESTART_SINGLE_SCAN_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Restart Single Scan"

.field private static final SCAN_IMMEDIATELY:Z = true

.field private static final SCAN_ON_SCHEDULE:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiConnectivityManager"

.field private static final WATCHDOG_INTERVAL_MS:I = 0x124f80

.field public static final WATCHDOG_TIMER_TAG:Ljava/lang/String; = "WifiConnectivityManager Schedule Watchdog Timer"

.field public static final WIFI_STATE_CONNECTED:I = 0x1

.field public static final WIFI_STATE_DISCONNECTED:I = 0x2

.field public static final WIFI_STATE_TRANSITIONING:I = 0x3

.field public static final WIFI_STATE_UNKNOWN:I


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

.field private mBand5GHzBonus:I

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private final mConnectionAttemptTimeStamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConnectionBonus:I

.field private mDbg:Z

.field private final mEventHandler:Landroid/os/Handler;

.field private mInitialScoreMax:I

.field private mLastConnectionAttemptBssid:Ljava/lang/String;

.field private mLastPeriodicSingleScanTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMin24GHzRssi:I

.field private mMin5GHzRssi:I

.field private final mPeriodicScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

.field private final mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPeriodicScanTimerSet:Z

.field private mPeriodicSingleScanInterval:I

.field private final mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

.field private mPnoScanStarted:Z

.field private final mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

.field private final mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSameNetworkBonus:I

.field private mScanRestartCount:I

.field private final mScanner:Landroid/net/wifi/WifiScanner;

.field private mScreenOn:Z

.field private mSecureBonus:I

.field private mSingleScanRestartCount:I

.field private final mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mTotalConnectivityAttemptsRateLimited:I

.field private mUntrustedConnectionAllowed:Z

.field private mWaitForFullBandScanResults:Z

.field private final mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWifiConnectivityManagerEnabled:Z

.field private mWifiEnabled:Z

.field private final mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field private mWifiState:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiConnectivityManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiConnectivityManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p1, "scanDetails"    # Ljava/util/List;
    .param p2, "listenerName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConnectivityManager;->handleScanResults(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->periodicScanTimerHandler()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V
    .locals 0
    .param p1, "msFromNow"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedConnectivityScan(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "isFullBandScan"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleDelayedSingleScan(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "scanImmediately"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "isFullBandScan"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->watchdogHandler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiScanner;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/WifiQualifiedNetworkSelector;Lcom/android/server/wifi/WifiInjector;Landroid/os/Looper;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "scanner"    # Landroid/net/wifi/WifiScanner;
    .param p4, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p5, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p6, "qualifiedNetworkSelector"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
    .param p7, "wifiInjector"    # Lcom/android/server/wifi/WifiInjector;
    .param p8, "looper"    # Landroid/os/Looper;
    .param p9, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v1, Landroid/util/LocalLog;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    invoke-direct {v1, v0}, Landroid/util/LocalLog;-><init>(I)V

    .line 135
    iput-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    .line 139
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 143
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 144
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 145
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 146
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSingleScanRestartCount:I

    .line 147
    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 148
    iput-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 149
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 150
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 151
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 176
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$1;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 175
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 200
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$2;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 199
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 209
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConnectivityManager$3;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    .line 208
    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 298
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;

    .line 379
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    .line 522
    new-instance v0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    .line 531
    iput-object p2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 532
    iput-object p3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    .line 533
    iput-object p4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 534
    iput-object p5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 535
    iput-object p6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    .line 536
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 537
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    .line 538
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 539
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 540
    invoke-virtual {p7}, Lcom/android/server/wifi/WifiInjector;->getClock()Lcom/android/server/wifi/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 541
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    .line 543
    const/16 v0, -0x52

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    .line 544
    const/16 v0, -0x55

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    .line 545
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    .line 547
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 548
    const v1, 0x10e001c

    .line 547
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 550
    const v1, 0x10e001f

    .line 549
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, 0x55

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    .line 555
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PNO settings: min5GHzRssi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 556
    const-string/jumbo v2, " min24GHzRssi "

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 556
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    const-string/jumbo v2, " currentConnectionBonus "

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 558
    const-string/jumbo v2, " sameNetworkBonus "

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 558
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 559
    const-string/jumbo v2, " secureNetworkBonus "

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 559
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 560
    const-string/jumbo v2, " initialScoreMax "

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 560
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAllSingleScanListener:Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 565
    iput-boolean p9, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 567
    const-string/jumbo v1, "WifiConnectivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ConnectivityScanManager initialized and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 568
    if-eqz p9, :cond_1

    const-string/jumbo v0, "enabled"

    .line 567
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x100

    goto/16 :goto_0

    .line 568
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_1
.end method

.method private cancelPeriodicScanTimer()V
    .locals 2

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 961
    :cond_0
    return-void
.end method

.method private clearConnectionAttemptTimeStamps()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 604
    return-void
.end method

.method private connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 9
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 616
    .local v3, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_0

    .line 617
    const-string/jumbo v6, "WifiConnectivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "connectToNetwork: bad candidate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 618
    const-string/jumbo v8, " scanResult: "

    .line 617
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void

    .line 622
    :cond_0
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 623
    .local v5, "targetBssid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, "targetAssociationId":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 630
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 631
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 629
    if-eqz v6, :cond_2

    .line 632
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v6

    .line 629
    if-eqz v6, :cond_2

    .line 633
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Either already connected or is connecting to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 635
    return-void

    .line 638
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 639
    .local v2, "elapsedTimeMillis":Ljava/lang/Long;
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-nez v6, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->shouldSkipConnectionAttempt(Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 640
    const-string/jumbo v6, "connectToNetwork: Too many connection attempts. Skipping this attempt!"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 641
    iget v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 642
    return-void

    .line 644
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->noteConnectionAttempt(Ljava/lang/Long;)V

    .line 646
    iput-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 648
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 649
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    .line 648
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 650
    .local v1, "currentConnectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_5

    const-string/jumbo v0, "Disconnected"

    .line 653
    .local v0, "currentAssociationId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_6

    .line 654
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v7, :cond_4

    .line 655
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 653
    if-eqz v6, :cond_6

    .line 656
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Roaming from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 658
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamToNetwork(ILandroid/net/wifi/ScanResult;)V

    .line 614
    :goto_1
    return-void

    .line 651
    .end local v0    # "currentAssociationId":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currentAssociationId":Ljava/lang/String;
    goto :goto_0

    .line 660
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "connectToNetwork: Reconnect from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 662
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->autoConnectToNetwork(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private getScanBand()I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v0

    return v0
.end method

.method private getScanBand(Z)I
    .locals 3
    .param p1, "isFullBandScan"    # Z

    .prologue
    const/4 v2, 0x1

    .line 672
    if-eqz p1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    .line 674
    .local v0, "freqBand":I
    if-ne v0, v2, :cond_0

    .line 675
    const/4 v1, 0x6

    return v1

    .line 676
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 677
    return v2

    .line 679
    :cond_1
    const/4 v1, 0x7

    return v1

    .line 683
    .end local v0    # "freqBand":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private handleScanResults(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p2, "listenerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v1, 0x0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " onResults: start QNS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    .line 227
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 228
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isLinkDebouncing()Z

    move-result v4

    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isConnected()Z

    move-result v5

    .line 229
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isDisconnected()Z

    move-result v6

    .line 230
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isSupplicantTransientState()Z

    move-result v7

    move-object v3, p1

    .line 226
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->selectQualifiedNetwork(ZZLjava/util/List;ZZZZ)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 231
    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiLastResortWatchdog:Lcom/android/server/wifi/WifiLastResortWatchdog;

    .line 232
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getFilteredScanDetails()Ljava/util/List;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->updateAvailableNetworks(Ljava/util/List;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMetrics;->countScanResults(Ljava/util/List;)V

    .line 234
    if-eqz v8, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": QNS candidate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_0
    return v1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 168
    const-string/jumbo v0, "WifiConnectivityManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private noteConnectionAttempt(Ljava/lang/Long;)V
    .locals 1
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method private periodicScanTimerHandler()V
    .locals 1

    .prologue
    .line 773
    const-string/jumbo v0, "periodicScanTimerHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 776
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 777
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 772
    :cond_0
    return-void
.end method

.method private resetLastPeriodicSingleScanTimeStamp()V
    .locals 2

    .prologue
    .line 768
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 767
    return-void
.end method

.method private scheduleDelayedConnectivityScan(I)V
    .locals 7
    .param p1, "msFromNow"    # I

    .prologue
    .line 982
    const-string/jumbo v0, "scheduleDelayedConnectivityScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 985
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 986
    const-string/jumbo v4, "WifiConnectivityManager Restart Scan"

    .line 987
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mRestartScanListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 984
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 981
    return-void
.end method

.method private scheduleDelayedSingleScan(Z)V
    .locals 8
    .param p1, "isFullBandScan"    # Z

    .prologue
    .line 970
    const-string/jumbo v0, "scheduleDelayedSingleScan"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 973
    new-instance v5, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 974
    .local v5, "restartSingleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 975
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x7d0

    add-long/2addr v2, v6

    .line 976
    const-string/jumbo v4, "WifiConnectivityManager Restart Single Scan"

    .line 977
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 974
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 969
    return-void
.end method

.method private schedulePeriodicScanTimer(I)V
    .locals 7
    .param p1, "intervalMs"    # I

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 954
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 955
    const-string/jumbo v4, "WifiConnectivityManager Schedule Periodic Scan Timer"

    .line 956
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 953
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicScanTimerSet:Z

    .line 952
    return-void
.end method

.method private scheduleWatchdogTimer()V
    .locals 7

    .prologue
    .line 943
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "scheduleWatchdogTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 946
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    add-long/2addr v2, v4

    .line 947
    const-string/jumbo v4, "WifiConnectivityManager Schedule Watchdog Timer"

    .line 948
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWatchdogListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mEventHandler:Landroid/os/Handler;

    .line 945
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 942
    return-void
.end method

.method private setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 9
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v8, 0x0

    .line 690
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 692
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 693
    return v8

    .line 696
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    const v7, 0x36ee80

    invoke-virtual {v6, v0, v7}, Lcom/android/server/wifi/WifiConfigManager;->makeChannelList(Landroid/net/wifi/WifiConfiguration;I)Ljava/util/HashSet;

    move-result-object v3

    .line 698
    .local v3, "freqs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 699
    const/4 v4, 0x0

    .line 700
    .local v4, "index":I
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 701
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "freq$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 702
    .local v1, "freq":Ljava/lang/Integer;
    iget-object v6, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    new-instance v7, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v7, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 704
    .end local v1    # "freq":Ljava/lang/Integer;
    :cond_1
    const/4 v6, 0x1

    return v6

    .line 706
    .end local v2    # "freq$iterator":Ljava/util/Iterator;
    .end local v4    # "index":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No scan channels for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ". Perform full band scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 707
    return v8
.end method

.method private shouldSkipConnectionAttempt(Ljava/lang/Long;)Z
    .locals 6
    .param p1, "timeMillis"    # Ljava/lang/Long;

    .prologue
    .line 577
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 579
    .local v0, "attemptIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 581
    .local v1, "connectionAttemptTimeMillis":Ljava/lang/Long;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 582
    const-wide/32 v4, 0x3a980

    .line 581
    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 583
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 590
    .end local v1    # "connectionAttemptTimeMillis":Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConnectionAttemptTimeStamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startConnectedPnoScan()V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method private startConnectivityScan(Z)V
    .locals 3
    .param p1, "scanImmediately"    # Z

    .prologue
    const/4 v2, 0x1

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startConnectivityScan: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 995
    const-string/jumbo v1, " wifiState="

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 995
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 996
    const-string/jumbo v1, " scanImmediately="

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 997
    const-string/jumbo v1, " wifiEnabled="

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 997
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 998
    const-string/jumbo v1, " wifiConnectivityManagerEnabled="

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 999
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1001
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 1006
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1010
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1011
    return-void

    .line 1002
    :cond_0
    return-void

    .line 1014
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 1015
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicScan(Z)V

    .line 993
    :goto_0
    return-void

    .line 1017
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    if-ne v0, v2, :cond_3

    .line 1018
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectedPnoScan()V

    goto :goto_0

    .line 1020
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startDisconnectedPnoScan()V

    goto :goto_0
.end method

.method private startDisconnectedPnoScan()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 852
    new-instance v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 854
    .local v2, "pnoSettings":Landroid/net/wifi/WifiScanner$PnoSettings;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigManager;->retrieveDisconnectedPnoNetworkList()Ljava/util/ArrayList;

    move-result-object v1

    .line 855
    .local v1, "pnoNetworkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 857
    .local v0, "listSize":I
    if-nez v0, :cond_0

    .line 859
    const-string/jumbo v4, "No saved network for starting disconnected PNO."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 860
    return-void

    .line 863
    :cond_0
    new-array v4, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 864
    iget-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 865
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin5GHzRssi:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 866
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mMin24GHzRssi:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 867
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mInitialScoreMax:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->initialScoreMax:I

    .line 868
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mCurrentConnectionBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->currentConnectionBonus:I

    .line 869
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSameNetworkBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->sameNetworkBonus:I

    .line 870
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mSecureBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->secureBonus:I

    .line 871
    iget v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mBand5GHzBonus:I

    iput v4, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->band5GHzBonus:I

    .line 874
    new-instance v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 875
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 876
    const/4 v4, 0x4

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 877
    iput v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 878
    const/16 v4, 0x4e20

    iput v4, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 882
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    .line 884
    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v4, v3, v2, v5}, Landroid/net/wifi/WifiScanner;->startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V

    .line 885
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 850
    return-void
.end method

.method private startPeriodicScan(Z)V
    .locals 2
    .param p1, "scanImmediately"    # Z

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 823
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    :cond_0
    if-eqz p1, :cond_1

    .line 832
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 834
    :cond_1
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 835
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->startPeriodicSingleScan()V

    .line 819
    return-void

    .line 825
    :cond_2
    return-void
.end method

.method private startPeriodicSingleScan()V
    .locals 11

    .prologue
    const v10, 0x27100

    .line 728
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 730
    .local v0, "currentTimeStamp":J
    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 731
    iget-wide v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    sub-long v4, v0, v6

    .line 732
    .local v4, "msSinceLastScan":J
    const-wide/16 v6, 0x4e20

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Last periodic single scan started "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 734
    const-string/jumbo v6, "ms ago, defer this new scan request."

    .line 733
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 735
    long-to-int v3, v4

    rsub-int v3, v3, 0x4e20

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 736
    return-void

    .line 740
    .end local v4    # "msSinceLastScan":J
    :cond_0
    const/4 v2, 0x1

    .line 743
    .local v2, "isFullBandScan":Z
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 744
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 745
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    .line 744
    cmpl-double v3, v6, v8

    if-gtz v3, :cond_1

    .line 746
    iget-object v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v3, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 747
    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    .line 746
    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    .line 748
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No full band scan due to heavy traffic, txSuccessRate="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 749
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 748
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 749
    const-string/jumbo v6, " rxSuccessRate="

    .line 748
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 750
    iget-object v6, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 748
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 751
    const/4 v2, 0x0

    .line 754
    :cond_2
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    .line 755
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    .line 756
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->schedulePeriodicScanTimer(I)V

    .line 759
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 760
    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    if-le v3, v10, :cond_3

    .line 761
    iput v10, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPeriodicSingleScanInterval:I

    .line 727
    :cond_3
    return-void
.end method

.method private startSingleScan(Z)V
    .locals 9
    .param p1, "isFullBandScan"    # Z

    .prologue
    const/4 v8, 0x0

    .line 783
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v7, :cond_1

    .line 787
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    .line 789
    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v5}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 790
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-nez p1, :cond_0

    .line 791
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->setScanChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 792
    const/4 p1, 0x1

    .line 795
    .end local p1    # "isFullBandScan":Z
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager;->getScanBand(Z)I

    move-result v7

    iput v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 796
    const/4 v7, 0x3

    iput v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 798
    iput v8, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 801
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getHiddenConfiguredNetworkIds()Ljava/util/Set;

    move-result-object v0

    .line 802
    .local v0, "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 803
    const/4 v1, 0x0

    .line 804
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    .line 805
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "netId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 806
    .local v3, "netId":Ljava/lang/Integer;
    iget-object v7, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 784
    .end local v0    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    .end local v3    # "netId":Ljava/lang/Integer;
    .end local v4    # "netId$iterator":Ljava/util/Iterator;
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local p1    # "isFullBandScan":Z
    :cond_1
    return-void

    .line 814
    .end local p1    # "isFullBandScan":Z
    .restart local v0    # "hiddenNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_2
    new-instance v6, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 815
    .local v6, "singleScanListener":Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
    iget-object v7, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    sget-object v8, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    invoke-virtual {v7, v5, v6, v8}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 782
    return-void
.end method

.method private stopConnectivityScan()V
    .locals 1

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->cancelPeriodicScanTimer()V

    .line 1034
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopPnoScan()V

    .line 1035
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanRestartCount:I

    .line 1026
    return-void
.end method

.method private stopPnoScan()V
    .locals 2

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 938
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanStarted:Z

    .line 933
    return-void
.end method

.method private watchdogHandler()V
    .locals 2

    .prologue
    .line 713
    const-string/jumbo v0, "watchdogHandler"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 718
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 719
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "start a single scan from watchdogHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 722
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    .line 712
    :cond_0
    return-void
.end method


# virtual methods
.method public connectToUserSelectNetwork(IZ)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "persistent"    # Z

    .prologue
    .line 1083
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectToUserSelectNetwork: netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1084
    const-string/jumbo v2, " persist="

    .line 1083
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->userSelectNetwork(IZ)Z

    .line 1088
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->clearConnectionAttemptTimeStamps()V

    .line 1082
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1177
    const-string/jumbo v0, "Dump of WifiConnectivityManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v0, "WifiConnectivityManager - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiConnectivityManager - Number of connectivity attempts rate limited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1180
    iget v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mTotalConnectivityAttemptsRateLimited:I

    .line 1179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1182
    const-string/jumbo v0, "WifiConnectivityManager - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public enable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1152
    const-string/jumbo v1, "WifiConnectivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set WiFiConnectivityManager "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-nez v0, :cond_2

    .line 1157
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1158
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1151
    :cond_0
    :goto_1
    return-void

    .line 1152
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_0

    .line 1161
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    .line 1162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_1
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 1170
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mDbg:Z

    .line 1169
    return-void
.end method

.method public forceConnectivityScan()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1095
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "forceConnectivityScan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1098
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->startSingleScan(Z)V

    .line 1094
    return-void
.end method

.method getLastPeriodicSingleScanTimeStamp()J
    .locals 2

    .prologue
    .line 1192
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastPeriodicSingleScanTimeStamp:J

    return-wide v0
.end method

.method getLowRssiNetworkRetryDelay()I
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mPnoScanListener:Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->getLowRssiNetworkRetryDelay()I

    move-result v0

    return v0
.end method

.method public handleConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleConnectionStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1055
    iput p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    .line 1059
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1061
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->scheduleWatchdogTimer()V

    .line 1064
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1052
    return-void
.end method

.method public handleScreenStateChanged(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleScreenStateChanged: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->localLog(Ljava/lang/String;)V

    .line 1044
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mScreenOn:Z

    .line 1046
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1041
    return-void
.end method

.method public setUntrustedConnectionAllowed(Z)V
    .locals 3
    .param p1, "allowed"    # Z

    .prologue
    .line 1071
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUntrustedConnectionAllowed: allowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    if-eq v0, p1, :cond_0

    .line 1074
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mUntrustedConnectionAllowed:Z

    .line 1075
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1070
    :cond_0
    return-void
.end method

.method public setUserPreferredBand(I)V
    .locals 3
    .param p1, "band"    # I

    .prologue
    .line 1124
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User band preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->setUserPreferredBand(I)V

    .line 1127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    .line 1123
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1134
    const-string/jumbo v1, "WifiConnectivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set WiFi "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    .line 1138
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiEnabled:Z

    if-nez v0, :cond_2

    .line 1139
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->stopConnectivityScan()V

    .line 1140
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConnectivityManager;->resetLastPeriodicSingleScanTimeStamp()V

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mLastConnectionAttemptBssid:Ljava/lang/String;

    .line 1142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWaitForFullBandScanResults:Z

    .line 1133
    :cond_0
    :goto_1
    return-void

    .line 1134
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_0

    .line 1143
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mWifiConnectivityManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 1144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_1
.end method

.method public trackBssid(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1105
    const-string/jumbo v2, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackBssid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string/jumbo v1, "enable "

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager;->mQualifiedNetworkSelector:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    move-result v0

    .line 1110
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    .line 1117
    :cond_0
    :goto_1
    return v0

    .line 1105
    .end local v0    # "ret":Z
    :cond_1
    const-string/jumbo v1, "disable "

    goto :goto_0

    .line 1114
    .restart local v0    # "ret":Z
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->startConnectivityScan(Z)V

    goto :goto_1
.end method
