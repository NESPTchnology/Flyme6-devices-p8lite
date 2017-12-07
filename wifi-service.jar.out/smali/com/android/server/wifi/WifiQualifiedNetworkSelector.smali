.class public Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;,
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    }
.end annotation


# static fields
.field public static final BAND_AWARD_5GHz:I = 0x28

.field public static final BSSID_BLACKLIST_EXPIRE_TIME:I = 0x493e0

.field public static final BSSID_BLACKLIST_THRESHOLD:I = 0x3

.field private static final FORCE_DEBUG:Z = true

.field private static final INVALID_TIME_STAMP:I = -0x1

.field public static final LAST_SELECTION_AWARD:I = 0x1e0

.field public static final MINIMUM_2G_ACCEPT_RSSI:I = -0x55

.field public static final MINIMUM_5G_ACCEPT_RSSI:I = -0x52

.field private static final MINIMUM_QUALIFIED_NETWORK_SELECTION_INTERVAL:I = 0x2710

.field public static final PASSPOINT_SECURITY_AWARD:I = 0x28

.field public static final QUALIFIED_RSSI_24G_BAND:I = -0x49

.field public static final QUALIFIED_RSSI_5G_BAND:I = -0x46

.field public static final RSSI_SATURATION_2G_BAND:I = -0x3c

.field public static final RSSI_SATURATION_5G_BAND:I = -0x39

.field public static final RSSI_SCORE_OFFSET:I = 0x55

.field public static final RSSI_SCORE_SLOPE:I = 0x4

.field public static final SAME_BSSID_AWARD:I = 0x18

.field public static final SAME_NETWORK_AWARD:I = 0x10

.field public static final SCAN_RESULT_MAXIMUNM_AGE:I = 0x9c40

.field public static final SECURITY_AWARD:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WifiQualifiedNetworkSelector:"


# instance fields
.field private mBssidBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mCurrentBssid:Ljava/lang/String;

.field private mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

.field private mDbg:Z

.field private volatile mFilteredScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastQualifiedNetworkSelectionTimeStamp:J

.field private mLastSelectionAward:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private final mNoIntnetPenalty:I

.field private mPasspointSecurityAward:I

.field private mRssiScoreOffset:I

.field private mRssiScoreSlope:I

.field private mSameBssidAward:I

.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScoreManager:Landroid/net/NetworkScoreManager;

.field private mSecurityAward:I

.field private mUserPreferedBand:I

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static synthetic -wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/content/Context;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/Clock;)V
    .locals 4
    .param p1, "configureStore"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    .line 60
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 61
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    .line 66
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    .line 101
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    .line 102
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 103
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    .line 104
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 105
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    .line 106
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    .line 107
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    .line 165
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 166
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 167
    iput-object p4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    .line 169
    const-string/jumbo v0, "network_score"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 168
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-direct {v0, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 179
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    const v1, 0x10e001a

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 181
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const v1, 0x10e0019

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    const v1, 0x10e001b

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 185
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    const v1, 0x10e001c

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    .line 187
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    const v1, 0x10e001d

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    const v1, 0x10e001e

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    add-int/2addr v0, v1

    .line 192
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    .line 191
    mul-int/2addr v0, v1

    .line 192
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 191
    add-int/2addr v0, v1

    .line 193
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 191
    add-int/2addr v0, v1

    .line 193
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    .line 191
    add-int/2addr v0, v1

    .line 193
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    .line 191
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    .line 164
    return-void

    .line 174
    :cond_0
    const-string/jumbo v0, "No network score service: Couldn\'t register as a WiFi score Manager, type=1 service= network_score"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 176
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    goto :goto_0
.end method

.method private getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 201
    if-nez p1, :cond_0

    .line 202
    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 219
    const-string/jumbo v1, "Disconnected"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 220
    return v3

    .line 222
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current network is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 228
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_1

    .line 229
    const-string/jumbo v1, "Current is ephemeral. Start reselect"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 230
    return v3

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    const-string/jumbo v1, "Current network is open network"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 236
    return v3

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current band dose not match user preference. Start Qualified Network Selection Current band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "2.4GHz band"

    .line 241
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    const-string/jumbo v2, "UserPreference band = "

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    iget v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 244
    return v3

    .line 243
    :cond_3
    const-string/jumbo v1, "5GHz band"

    goto :goto_0

    .line 247
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 248
    .local v0, "currentRssi":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 252
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "2.4GHz band"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    const-string/jumbo v2, "current RSSI is: "

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 254
    return v3

    .line 250
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 251
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 257
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 252
    :cond_8
    const-string/jumbo v1, "5GHz band"

    goto :goto_1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method private localLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private needQualifiedNetworkSelection(ZZZZ)Z
    .locals 10
    .param p1, "isLinkDebouncing"    # Z
    .param p2, "isConnected"    # Z
    .param p3, "isDisconnected"    # Z
    .param p4, "isSupplicantTransientState"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 276
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const-string/jumbo v1, "empty scan result"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 278
    return v8

    .line 282
    :cond_0
    if-eqz p1, :cond_1

    .line 283
    const-string/jumbo v1, "Need not Qualified Network Selection during L2 debouncing"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 284
    return v8

    .line 287
    :cond_1
    if-eqz p2, :cond_6

    .line 291
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 292
    const-string/jumbo v1, "Switch network under connection is not allowed"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 293
    return v8

    .line 298
    :cond_2
    iget-wide v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    sub-long v2, v4, v6

    .line 300
    .local v2, "gap":J
    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Too short to last successful Qualified Network Selection Gap is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string/jumbo v4, " ms!"

    .line 301
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 303
    return v8

    .line 308
    .end local v2    # "gap":J
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 309
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_4

    .line 313
    return v8

    .line 316
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 318
    const-string/jumbo v1, "Current network is not qualified"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 319
    return v9

    .line 321
    :cond_5
    return v8

    .line 323
    .end local v0    # "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    if-eqz p3, :cond_7

    .line 324
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 325
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 327
    if-eqz p4, :cond_8

    .line 328
    return v8

    .line 332
    :cond_7
    const-string/jumbo v1, "WifiStateMachine is not on connected or disconnected state"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 333
    return v8

    .line 336
    :cond_8
    return v9
.end method

.method private static toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 960
    if-nez p0, :cond_0

    const-string/jumbo v0, "NULL"

    :goto_0
    return-object v0

    .line 961
    :cond_0
    const-string/jumbo v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateBssidBlacklist()V
    .locals 6

    .prologue
    .line 562
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 563
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 565
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    sub-long/2addr v2, v4

    .line 567
    const-wide/32 v4, 0x493e0

    .line 566
    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 568
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 561
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_1
    return-void
.end method

.method private updateSavedNetworkSelectionStatus()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 408
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v4

    .line 409
    .local v4, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 410
    const-string/jumbo v7, "no saved network"

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 411
    return-void

    .line 414
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v7, "Saved Network List\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 415
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "network$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 416
    .local v2, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 418
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    .line 421
    .local v6, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 422
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(I)Z

    .line 426
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 427
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    .line 428
    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " User Preferred BSSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 432
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 432
    const-string/jumbo v8, " FQDN:"

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 432
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 432
    const-string/jumbo v8, " "

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 433
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v8

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 433
    const-string/jumbo v8, " Disable account: "

    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    const/4 v1, 0x0

    .line 435
    .local v1, "index":I
    :goto_1
    const/16 v7, 0xa

    .line 434
    if-ge v1, v7, :cond_2

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Connect Choice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " set time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 439
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v8

    .line 438
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    const-string/jumbo v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 442
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "index":I
    .end local v2    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 407
    return-void
.end method


# virtual methods
.method calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I
    .locals 12
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p4, "sameBssid"    # Z
    .param p5, "sameSelect"    # Z
    .param p6, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 345
    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-gt v5, v8, :cond_7

    .line 346
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 347
    .local v3, "rssi":I
    :goto_0
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    add-int/2addr v5, v3

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    mul-int/2addr v5, v8

    add-int/lit8 v4, v5, 0x0

    .line 348
    .local v4, "score":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " RSSI score: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v4, v5

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " 5GHz bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_0
    if-eqz p5, :cond_1

    .line 357
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v8

    .line 358
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v10

    .line 357
    sub-long v6, v8, v10

    .line 360
    .local v6, "timeDifference":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 361
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-int v8, v8

    sub-int v2, v5, v8

    .line 362
    .local v2, "bonus":I
    if-lez v2, :cond_8

    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " User selected it last time "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 364
    const-string/jumbo v8, " minutes ago, bonus:"

    .line 363
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_1
    if-eq p2, p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 370
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v4, v5

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Same network with current associated. Bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 372
    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 371
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    :cond_3
    if-eqz p4, :cond_4

    .line 377
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    add-int/2addr v4, v5

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Same BSSID with current association. Bonus: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 383
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    add-int/2addr v4, v5

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Passpoint Bonus:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    :cond_5
    :goto_2
    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v5, :cond_6

    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v5, :cond_a

    .line 398
    :cond_6
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Score for scanResult: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " and Network ID: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 399
    iget v8, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 398
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 399
    const-string/jumbo v8, " final score:"

    .line 398
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 399
    const-string/jumbo v8, "\n\n"

    .line 398
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    return v4

    .line 346
    .end local v3    # "rssi":I
    .end local v4    # "score":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .restart local v3    # "rssi":I
    goto/16 :goto_0

    .line 362
    .restart local v2    # "bonus":I
    .restart local v4    # "score":I
    .restart local v6    # "timeDifference":J
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 385
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v5, p2}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 386
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    add-int/2addr v4, v5

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " Secure network Bonus:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 393
    :cond_a
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    sub-int/2addr v4, v5

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " No internet Penalty:-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 966
    const-string/jumbo v0, "Dump of WifiQualifiedNetworkSelector"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log Begin ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 969
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log End ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 532
    if-eqz p2, :cond_1

    .line 533
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 535
    :cond_1
    if-eqz p1, :cond_2

    .line 536
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 537
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v1, :cond_3

    .line 539
    new-instance v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;-><init>(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;)V

    .line 540
    .local v0, "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    iget v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    .line 541
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .end local v0    # "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_2
    return v3

    .line 542
    .restart local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_3
    iget-boolean v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    if-nez v4, :cond_2

    .line 543
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    .line 544
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 545
    iput-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    .line 546
    iget-object v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    .line 547
    return v2
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x1

    .line 197
    if-gtz p1, :cond_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    .line 196
    return-void
.end method

.method public getConnetionTargetNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p1, "scoreEvaluator"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getBestCandidateType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 933
    const-string/jumbo v4, "Unhandled ExternalScoreEvaluator case. No candidate selected."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 936
    .end local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 896
    .restart local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 898
    .local v3, "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiConfigManager;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 902
    .local v2, "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 903
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v4, :cond_0

    .line 905
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getMeteredHint(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    .line 904
    iput-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 907
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 908
    const/4 v5, -0x1

    .line 907
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 910
    const-string/jumbo v4, "new ephemeral candidate %s network ID:%d, meteredHint=%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 912
    invoke-static {v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 913
    iget-boolean v6, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    .line 910
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 917
    move-object v0, v2

    .line 918
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 921
    .end local v2    # "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 922
    .local v1, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getSavedConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 923
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 924
    const-string/jumbo v4, "new scored candidate %s network ID:%d"

    new-array v5, v9, [Ljava/lang/Object;

    .line 925
    invoke-static {v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 924
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    .end local v1    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    const-string/jumbo v4, "ExternalScoreEvaluator did not see any good candidates."

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_0

    .line 893
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFilteredScanDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    return-object v0
.end method

.method getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    .prologue
    const/4 v2, 0x0

    .line 948
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v0

    .line 950
    .local v0, "networkScore":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 951
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 953
    .end local v0    # "networkScore":I
    :cond_0
    return-object v2
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    .line 582
    .local v0, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    goto :goto_0
.end method

.method public selectQualifiedNetwork(ZZLjava/util/List;ZZZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 48
    .param p1, "forceSelectNetwork"    # Z
    .param p2, "isUntrustedConnectionsAllowed"    # Z
    .param p4, "isLinkDebouncing"    # Z
    .param p5, "isConnected"    # Z
    .param p6, "isDisconnected"    # Z
    .param p7, "isSupplicantTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;ZZZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .prologue
    .line 612
    .local p3, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const-string/jumbo v6, "==========start qualified Network Selection=========="

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    .line 614
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v19, "filteredScanDetails":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 616
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 622
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 624
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->needQualifiedNetworkSelection(ZZZZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 632
    :cond_1
    const/high16 v16, -0x80000000

    .line 633
    .local v16, "currentHighestScore":I
    const/16 v37, 0x0

    .line 634
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    const/16 v27, 0x0

    .line 636
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    new-instance v18, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v9}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;-><init>(Landroid/util/LocalLog;Z)V

    .line 637
    .local v18, "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v22

    .line 639
    .local v22, "lastUserSelectedNetWorkKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    .line 640
    .local v23, "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v23, :cond_2

    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Last selection is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " Time to now: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 642
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v9}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    move-result-wide v46

    sub-long v10, v10, v46

    .line 643
    const-wide/16 v46, 0x3e8

    .line 642
    div-long v10, v10, v46

    .line 643
    const-wide/16 v46, 0x3c

    .line 642
    div-long v10, v10, v46

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 643
    const-string/jumbo v9, " minutes"

    .line 642
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 641
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 646
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateSavedNetworkSelectionStatus()V

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateBssidBlacklist()V

    .line 649
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 650
    .local v24, "lowSignalScan":Ljava/lang/StringBuffer;
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 651
    .local v29, "notSavedScan":Ljava/lang/StringBuffer;
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 652
    .local v28, "noValidSsid":Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 653
    .local v12, "scoreHistory":Ljava/lang/StringBuffer;
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v44, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v35, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/wifi/ScanDetail;

    .line 657
    .local v34, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 659
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 660
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_3

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 626
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .end local v16    # "currentHighestScore":I
    .end local v18    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .end local v22    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .end local v23    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "lowSignalScan":Ljava/lang/StringBuffer;
    .end local v28    # "noValidSsid":Ljava/lang/StringBuffer;
    .end local v29    # "notSavedScan":Ljava/lang/StringBuffer;
    .end local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v35    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v44    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_5
    const-string/jumbo v6, "Quit qualified Network Selection since it is not forced and current network is qualified already"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 629
    const/4 v6, 0x0

    return-object v6

    .line 667
    .restart local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .restart local v16    # "currentHighestScore":I
    .restart local v18    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .restart local v22    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .restart local v23    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v24    # "lowSignalScan":Ljava/lang/StringBuffer;
    .restart local v28    # "noValidSsid":Ljava/lang/StringBuffer;
    .restart local v29    # "notSavedScan":Ljava/lang/StringBuffer;
    .restart local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v35    # "scanDetail$iterator":Ljava/util/Iterator;
    .restart local v44    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_6
    invoke-static {v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v36

    .line 669
    .local v36, "scanId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->isBssidBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 670
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isBssidDisabled(Ljava/lang/String;)Z

    move-result v6

    .line 669
    if-eqz v6, :cond_8

    .line 672
    :cond_7
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is in blacklist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 677
    :cond_8
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 678
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 677
    if-ge v6, v9, :cond_a

    .line 681
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_3

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "2.4GHz"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 683
    const-string/jumbo v9, ")"

    .line 682
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 683
    iget v9, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 682
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 683
    const-string/jumbo v9, " / "

    .line 682
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 679
    :cond_a
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 680
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    .line 679
    if-lt v6, v9, :cond_9

    .line 689
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 705
    :cond_c
    :goto_2
    const/16 v33, 0x0

    .line 707
    .local v33, "potentiallyEphemeral":Z
    const/16 v32, 0x0

    .line 709
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 710
    if-nez p7, :cond_10

    if-nez p5, :cond_10

    move/from16 v6, p4

    .line 709
    :goto_3
    move-object/from16 v0, v34

    invoke-virtual {v9, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateSavedNetworkWithNewScanDetail(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/List;

    move-result-object v13

    .line 711
    .local v13, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v13, :cond_11

    .line 712
    const/16 v33, 0x1

    .line 713
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_d

    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " / "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_4
    if-eqz v33, :cond_12

    .line 728
    if-eqz p2, :cond_3

    .line 729
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v25

    .line 730
    .local v25, "netScore":Ljava/lang/Integer;
    if-eqz v25, :cond_3

    .line 731
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->wasEphemeralNetworkDeleted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 732
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V

    .line 734
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 682
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v25    # "netScore":Ljava/lang/Integer;
    .end local v33    # "potentiallyEphemeral":Z
    :cond_e
    const-string/jumbo v6, "5GHz"

    goto/16 :goto_1

    .line 694
    :cond_f
    :try_start_0
    new-instance v45, Landroid/net/WifiKey;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-direct {v0, v6, v9}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .local v45, "wifiKey":Landroid/net/WifiKey;
    new-instance v30, Landroid/net/NetworkKey;

    move-object/from16 v0, v30

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    .line 697
    .local v30, "ntwkKey":Landroid/net/NetworkKey;
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 698
    .end local v30    # "ntwkKey":Landroid/net/NetworkKey;
    .end local v45    # "wifiKey":Landroid/net/WifiKey;
    :catch_0
    move-exception v17

    .line 699
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid SSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " BSSID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 700
    const-string/jumbo v10, " for network score. Skip."

    .line 699
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 710
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    .restart local v33    # "potentiallyEphemeral":Z
    :cond_10
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 716
    .restart local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_11
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_d

    .line 718
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 719
    .local v8, "network":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_d

    .line 720
    move-object/from16 v32, v8

    .line 721
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    const/16 v33, 0x1

    goto/16 :goto_4

    .line 744
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    const/high16 v20, -0x80000000

    .line 746
    .local v20, "highestScore":I
    const/4 v14, 0x0

    .line 747
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    const/16 v31, 0x0

    .line 748
    .local v31, "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    .end local v31    # "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    .local v26, "network$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 750
    .restart local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v39

    .line 751
    .local v39, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v6, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    .line 752
    if-nez v31, :cond_14

    .line 753
    move-object/from16 v31, v8

    .line 755
    :cond_14
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 757
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v6, :cond_15

    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string/jumbo v9, "any"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 768
    :cond_15
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v6, :cond_17

    .line 769
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    move-result-object v25

    .line 770
    .restart local v25    # "netScore":Ljava/lang/Integer;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V

    goto :goto_5

    .line 758
    .end local v25    # "netScore":Ljava/lang/Integer;
    :cond_16
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Network: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " has specified"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "BSSID:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 762
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 761
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 762
    const-string/jumbo v9, ". Skip "

    .line 761
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 762
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 761
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 774
    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 775
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    if-nez v6, :cond_1b

    const/4 v10, 0x0

    .line 776
    :goto_6
    if-nez v23, :cond_1c

    :cond_18
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v6, p0

    .line 774
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I

    move-result v38

    .line 778
    .local v38, "score":I
    move/from16 v0, v38

    move/from16 v1, v20

    if-le v0, v1, :cond_19

    .line 779
    move/from16 v20, v38

    .line 780
    move-object v14, v8

    .line 781
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v31, v8

    .line 784
    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    :cond_19
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v6

    move/from16 v0, v38

    if-gt v0, v6, :cond_1a

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    move-result v6

    move/from16 v0, v38

    if-ne v0, v6, :cond_13

    .line 785
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 786
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v9, :cond_13

    .line 787
    :cond_1a
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 788
    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    goto/16 :goto_5

    .line 775
    .end local v38    # "score":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_6

    .line 776
    :cond_1c
    move-object/from16 v0, v23

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 777
    iget v11, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 776
    if-ne v6, v11, :cond_18

    const/4 v11, 0x1

    goto :goto_7

    .line 792
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v39    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_1d
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    move/from16 v0, v20

    move/from16 v1, v16

    if-gt v0, v1, :cond_1e

    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 795
    if-eqz v37, :cond_3

    .line 796
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, v37

    iget v9, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v9, :cond_3

    .line 797
    :cond_1e
    move/from16 v16, v20

    .line 798
    move-object/from16 v37, v7

    .line 799
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v14

    .line 800
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    .line 804
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v20    # "highestScore":I
    .end local v26    # "network$iterator":Ljava/util/Iterator;
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v33    # "potentiallyEphemeral":Z
    .end local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v36    # "scanId":Ljava/lang/String;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    :cond_1f
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    .line 807
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v6, :cond_20

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_20

    .line 809
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkKey;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Landroid/net/NetworkKey;

    .line 810
    .local v43, "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 813
    .end local v43    # "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    if-eqz v6, :cond_21

    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to low signal\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 815
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to not saved\n "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " skipped due to not valid SSID\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 821
    :cond_21
    if-eqz v37, :cond_25

    .line 822
    move-object/from16 v41, v27

    .line 824
    .local v41, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_22
    :goto_8
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_24

    .line 825
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v21

    .line 826
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v41

    .line 828
    if-eqz v41, :cond_23

    .line 830
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v42

    .line 831
    .local v42, "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 832
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v37

    .line 833
    .restart local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v41

    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_8

    .line 837
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .end local v42    # "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Connect choice: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " has no corresponding saved config"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 841
    .end local v21    # "key":Ljava/lang/String;
    :cond_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "After user choice adjust, the final candidate is:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 842
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v9

    .line 841
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 842
    const-string/jumbo v9, " : "

    .line 841
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 842
    move-object/from16 v0, v37

    iget-object v9, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 841
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 847
    .end local v41    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_25
    if-nez v37, :cond_26

    .line 848
    const-string/jumbo v6, "Checking the externalScoreEvaluator for candidates..."

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 850
    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    if-eqz v27, :cond_26

    .line 851
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v37

    .line 855
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_26
    if-nez v37, :cond_27

    .line 856
    const-string/jumbo v6, "Can not find any suitable candidates"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 857
    const/4 v6, 0x0

    return-object v6

    .line 860
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_29

    const-string/jumbo v15, "Disconnected"

    .line 862
    .local v15, "currentAssociationId":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v40

    .line 865
    .local v40, "targetAssociationId":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 867
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    iget-object v9, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 871
    :cond_28
    move-object/from16 v0, v37

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " is already the best choice!"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 881
    :goto_a
    move-object/from16 v0, v37

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    .line 882
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    .line 883
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    .line 884
    return-object v27

    .line 861
    .end local v15    # "currentAssociationId":Ljava/lang/String;
    .end local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "currentAssociationId":Ljava/lang/String;
    goto :goto_9

    .line 873
    .restart local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_2c

    .line 874
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, v27

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v9, :cond_2b

    .line 875
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 873
    if-eqz v6, :cond_2c

    .line 876
    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Roaming from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto :goto_a

    .line 878
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reconnect from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, " to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public setUserPreferredBand(I)V
    .locals 0
    .param p1, "band"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    .line 159
    return-void
.end method

.method setWifiNetworkScoreCache(Lcom/android/server/wifi/WifiNetworkScoreCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/server/wifi/WifiNetworkScoreCache;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 133
    return-void
.end method

.method public userSelectNetwork(IZ)Z
    .locals 16
    .param p1, "netId"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 463
    .local v10, "selected":Landroid/net/wifi/WifiConfiguration;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "userSelectNetwork:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " persist:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 464
    if-eqz v10, :cond_0

    iget-object v12, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 465
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "userSelectNetwork: Bad configuration with nid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    .line 466
    const/4 v12, 0x0

    return v12

    .line 470
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 472
    const/4 v13, 0x0

    .line 471
    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 475
    :cond_2
    if-nez p2, :cond_3

    .line 476
    const-string/jumbo v12, "User has no privilege to overwrite the current priority"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 477
    const/4 v12, 0x0

    return v12

    .line 480
    :cond_3
    const/4 v2, 0x0

    .line 481
    .local v2, "change":Z
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v12}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 484
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v9

    .line 486
    .local v9, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "network$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 487
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 488
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v11

    .line 489
    .local v11, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v13, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v12, v13, :cond_5

    .line 490
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 491
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Remove user selection preference of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 492
    const-string/jumbo v13, " Set Time: "

    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 492
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    move-result-wide v14

    .line 491
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 492
    const-string/jumbo v13, " from "

    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 493
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 493
    const-string/jumbo v13, " : "

    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 493
    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 494
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 495
    const-wide/16 v12, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 497
    const/4 v2, 0x1

    goto :goto_0

    .line 502
    :cond_5
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 503
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 504
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 505
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Add key:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Set Time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 506
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v13

    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v11, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    .line 509
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 513
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_7
    if-eqz v2, :cond_8

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 515
    const/4 v12, 0x1

    return v12

    .line 518
    :cond_8
    const/4 v12, 0x0

    return v12
.end method
