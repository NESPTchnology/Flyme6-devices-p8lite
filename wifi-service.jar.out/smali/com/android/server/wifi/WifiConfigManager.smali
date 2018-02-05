.class public Lcom/android/server/wifi/WifiConfigManager;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigManager$1;,
        Lcom/android/server/wifi/WifiConfigManager$2;,
        Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;,
        Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static final synthetic -android-net-IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static final synthetic -android-net-NetworkInfo$DetailedStateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final IP_CONFIG_FILE:Ljava/lang/String;

.field public static final MAX_NUM_SCAN_CACHE_ENTRIES:I = 0x80

.field public static final MAX_RX_PACKET_FOR_FULL_SCANS:I = 0x10

.field public static final MAX_RX_PACKET_FOR_PARTIAL_SCANS:I = 0x50

.field public static final MAX_TX_PACKET_FOR_FULL_SCANS:I = 0x8

.field public static final MAX_TX_PACKET_FOR_PARTIAL_SCANS:I = 0x28

.field private static final NETWORK_SELECTION_DISABLE_THRESHOLD:[I

.field private static final NETWORK_SELECTION_DISABLE_TIMEOUT:[I

.field private static final PPS_FILE:Ljava/lang/String; = "/data/misc/wifi/PerProviderSubscription.conf"

.field public static final ROAM_ON_ANY:Z = false

.field public static final TAG:Ljava/lang/String; = "WifiConfigManager"

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS"

.field private static final sConnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

.field private static final sDisconnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

.field private static sVDBG:Z

.field private static sVVDBG:Z


# instance fields
.field private mActiveScanDetail:Lcom/android/server/wifi/ScanDetail;

.field private final mActiveScanDetailLock:Ljava/lang/Object;

.field public final mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field public mBadLinkSpeed24:I

.field public mBadLinkSpeed5:I

.field public mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mClock:Lcom/android/server/wifi/Clock;

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private mContext:Landroid/content/Context;

.field public mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentUserId:I

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mEnableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mEnableLinkDebouncing:Z

.field private final mEnableOsuQueries:Z

.field public final mEnableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field public mGoodLinkSpeed24:I

.field public mGoodLinkSpeed5:I

.field private mHasCarrierConfiguredNetworks:Z

.field private mIpconfigStore:Lcom/android/server/net/IpConfigStore;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private mLastSelectedConfiguration:Ljava/lang/String;

.field private mLastSelectedTimeStamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

.field public final mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mNetworkSwitchingBlackListPeriodMs:I

.field private mOnlyLinkSameCredentialConfigurations:Z

.field private final mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private mShowNetworks:Z

.field private final mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

.field private final mSupplicantBridgeCallbacks:Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

.field private mSystemSupportsFastBssTransition:Z

.field public mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

.field private mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConfigManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConfigManager;)Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    return-object v0
.end method

.method private static synthetic -getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-net-NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "matches"    # Ljava/util/Map;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigManager;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 1
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "matches"    # Ljava/util/Map;
    .param p3, "associatedWifiConfigurations"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 0
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "anqpElements"    # Ljava/util/Map;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v0, 0x0

    .line 156
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    .line 157
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    .line 193
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    .line 209
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT:[I

    .line 1068
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$1;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigManager$1;-><init>()V

    .line 1067
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->sDisconnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    .line 1101
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$2;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigManager$2;-><init>()V

    .line 1100
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->sConnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    .line 155
    return-void

    .line 193
    :array_0
    .array-data 4
        -0x1
        0x1
        0x5
        0x5
        0x5
        0x5
        0x6
        0x1
        0x1
        0x1
    .end array-data

    .line 209
    :array_1
    .array-data 4
        0x7fffffff
        0xf
        0x5
        0x5
        0x5
        0x5
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/security/KeyStore;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "keyStore"    # Landroid/security/KeyStore;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 240
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 241
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 242
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 248
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemSupportsFastBssTransition:Z

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetailLock:Ljava/lang/Object;

    .line 287
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    .line 288
    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    .line 303
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    .line 305
    const-wide/16 v0, -0x1

    .line 304
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 311
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    .line 343
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 344
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigManager;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 345
    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    .line 346
    iput-object p6, p0, Lcom/android/server/wifi/WifiConfigManager;->mKeyStore:Landroid/security/KeyStore;

    .line 347
    iput-object p5, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    .line 349
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 356
    const v1, 0x1120022

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    .line 357
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 358
    const v2, 0x10e003a

    .line 357
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 360
    const v1, 0x112001c

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableLinkDebouncing:Z

    .line 361
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 362
    const v2, 0x10e0018

    .line 361
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 363
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 364
    const v2, 0x10e0020

    .line 363
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 366
    const v2, 0x10e0021

    .line 365
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 368
    const v2, 0x10e0022

    .line 367
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 370
    const v2, 0x10e0023

    .line 369
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 371
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 372
    const v2, 0x10e0024

    .line 371
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 374
    const v2, 0x10e0025

    .line 373
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 376
    const v1, 0x1120020

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 378
    const v1, 0x10e0026

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed24:I

    .line 379
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 380
    const v1, 0x10e0027

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed5:I

    .line 381
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 382
    const v1, 0x10e0028

    .line 381
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed24:I

    .line 383
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 384
    const v1, 0x10e0029

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed5:I

    .line 385
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 386
    const v2, 0x1120021

    .line 385
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 388
    const v2, 0x10e003b

    .line 387
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 389
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 390
    const v1, 0x10e0031

    .line 389
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkSwitchingBlackListPeriodMs:I

    .line 391
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 392
    const v1, 0x1120019

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSystemSupportsFastBssTransition:Z

    .line 394
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 395
    .local v7, "hs2on":Z
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 396
    const-string/jumbo v1, "wifi_hotspot2_enabled"

    .line 395
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_1

    const/4 v8, 0x1

    .line 397
    .local v8, "hs2onSet":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Passpoint is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 398
    if-eqz v7, :cond_2

    const-string/jumbo v0, "enabled"

    .line 397
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    const-string/jumbo v2, ", "

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Lcom/android/server/wifi/ConfigurationMap;

    invoke-direct {v0, p5}, Lcom/android/server/wifi/ConfigurationMap;-><init>(Landroid/os/UserManager;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    .line 402
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 403
    const v1, 0x11200c7

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/misc/wifi/PerProviderSubscription.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v8}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    .line 409
    :goto_3
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableOsuQueries:Z

    .line 410
    new-instance v0, Lcom/android/server/wifi/hotspot2/AnqpCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>(Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    .line 411
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

    invoke-direct {v0, p0, v4}, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;-><init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridgeCallbacks:Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

    .line 412
    new-instance v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridgeCallbacks:Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

    invoke-direct {v0, p2, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    .line 413
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    .line 414
    new-instance v0, Lcom/android/server/wifi/SIMAccessor;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    .line 415
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 416
    new-instance v0, Lcom/android/server/net/IpConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0, v1}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    .line 417
    new-instance v0, Lcom/android/server/wifi/WifiNetworkHistory;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNetworkHistory;-><init>(Landroid/content/Context;Landroid/util/LocalLog;Lcom/android/server/net/DelayedDiskWrite;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    .line 419
    new-instance v0, Lcom/android/server/wifi/WifiConfigStore;

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mKeyStore:Landroid/security/KeyStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Landroid/security/KeyStore;Landroid/util/LocalLog;ZZ)V

    .line 418
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 342
    return-void

    .line 352
    .end local v7    # "hs2on":Z
    .end local v8    # "hs2onSet":Z
    :cond_0
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    goto/16 :goto_0

    .line 395
    .restart local v7    # "hs2on":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "hs2onSet":Z
    goto/16 :goto_1

    .line 398
    :cond_2
    const-string/jumbo v0, "disabled"

    goto/16 :goto_2

    .line 406
    :cond_3
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/misc/wifi/PerProviderSubscription.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    goto :goto_3
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 27
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 1974
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addOrUpdateNetworkNative "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1975
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1980
    :cond_1
    const/16 v20, 0x0

    .line 1981
    .local v20, "newNetwork":Z
    const/16 v16, 0x0

    .line 1984
    .local v16, "existingMO":Z
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .line 1987
    .local v15, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v15, :cond_3

    .line 1988
    iget v5, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move-object/from16 v0, p1

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2004
    :goto_0
    new-instance v21, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 2006
    .local v21, "originalConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 2007
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiConfigManager;->mSystemSupportsFastBssTransition:Z

    .line 2006
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v15, v6}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2008
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    .line 1976
    .end local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "existingMO":Z
    .end local v20    # "newNetwork":Z
    .end local v21    # "originalConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string/jumbo v5, "WifiConfigManager"

    const-string/jumbo v6, "Passpoint is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    .line 1990
    .restart local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "existingMO":Z
    .restart local v20    # "newNetwork":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1991
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addOrUpdateNetworkNative passpoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1992
    const-string/jumbo v6, " was found, but no network Id"

    .line 1991
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 1993
    const/16 v16, 0x1

    .line 1995
    :cond_4
    const/16 v20, 0x1

    goto :goto_0

    .line 1999
    .end local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .restart local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 2010
    .restart local v21    # "originalConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    .line 2011
    .local v19, "netId":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v25

    .line 2020
    .local v25, "savedConfigKey":Ljava/lang/String;
    if-nez v15, :cond_8

    .line 2021
    new-instance v15, Landroid/net/wifi/WifiConfiguration;

    .end local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v15}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2022
    .restart local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v15, v5}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 2023
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v15, v5}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 2024
    move/from16 v0, v19

    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2025
    if-eqz p1, :cond_7

    .line 2027
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 2028
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 2029
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 2030
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 2031
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 2032
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 2033
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2034
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 2035
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 2036
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 2037
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 2038
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 2039
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 2040
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 2041
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 2042
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 2043
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 2044
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 2045
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 2046
    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->isCarrierNetwork:Z

    .line 2049
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "created new config netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2050
    const-string/jumbo v6, " uid="

    .line 2049
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2050
    iget v6, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2049
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2051
    const-string/jumbo v6, " name="

    .line 2049
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2051
    iget-object v6, v15, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 2049
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2056
    :cond_8
    const/16 v17, 0x0

    .line 2058
    .local v17, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-nez v16, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2060
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-nez v5, :cond_1a

    .line 2062
    new-instance v13, Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigManager;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v20, :cond_e

    const/4 v5, 0x0

    :goto_1
    invoke-direct {v13, v6, v8, v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V

    .line 2063
    .local v13, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2064
    .local v7, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    const/4 v5, 0x0

    array-length v8, v6

    :goto_2
    if-ge v5, v8, :cond_f

    aget-wide v10, v6, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 2065
    .local v24, "roamingConsortiumId":Ljava/lang/Long;
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2064
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v24    # "roamingConsortiumId":Ljava/lang/Long;
    :cond_9
    move-object/from16 v4, v17

    .line 2085
    .end local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_a

    .line 2086
    if-eqz v20, :cond_10

    .line 2087
    move/from16 v0, p2

    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 2094
    :cond_a
    :goto_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 2095
    .local v26, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "time="

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 2097
    .local v14, "c":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v14, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2098
    const-string/jumbo v5, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v14, v6, v8

    const/4 v8, 0x1

    aput-object v14, v6, v8

    const/4 v8, 0x2

    aput-object v14, v6, v8

    const/4 v8, 0x3

    aput-object v14, v6, v8

    const/4 v8, 0x4

    aput-object v14, v6, v8

    const/4 v8, 0x5

    aput-object v14, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    if-eqz v20, :cond_11

    .line 2101
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 2106
    :goto_5
    iget v5, v15, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 2108
    iget v5, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2109
    const/4 v6, 0x0

    .line 2108
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 2112
    :cond_b
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2113
    iget-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 2112
    if-eqz v5, :cond_c

    .line 2115
    const/4 v5, 0x0

    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 2117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove ephemeral status netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2118
    const-string/jumbo v6, " "

    .line 2117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2118
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    .line 2117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2122
    :cond_c
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "will read network variables netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2124
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 2127
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v5, v15}, Lcom/android/server/wifi/WifiConfigStore;->saveNetworkMetadata(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to set network metadata. Removing config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2131
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    .line 2062
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v14    # "c":Ljava/util/Calendar;
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_e
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2068
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :cond_f
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 2069
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    .line 2070
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 2071
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v12, 0x0

    .line 2068
    invoke-direct/range {v4 .. v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2073
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "created a homeSP object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2077
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :goto_6
    iget-object v5, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    .line 2078
    iget-object v5, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2079
    :catch_0
    move-exception v18

    .line 2080
    .local v18, "ioe":Ljava/io/IOException;
    :goto_7
    const-string/jumbo v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to create Passpoint config: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v5

    .line 2089
    .end local v18    # "ioe":Ljava/io/IOException;
    :cond_10
    move/from16 v0, p2

    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_4

    .line 2103
    .restart local v14    # "c":Ljava/util/Calendar;
    .restart local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    goto/16 :goto_5

    .line 2135
    :cond_12
    const/16 v22, 0x0

    .line 2137
    .local v22, "passwordChanged":Z
    if-nez v20, :cond_13

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_13

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2141
    :cond_13
    :goto_8
    if-nez v20, :cond_14

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v15}, Lcom/android/server/wifi/WifiConfigManager;->wasCredentialChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2142
    :cond_14
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    .line 2146
    :cond_15
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 2147
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 2149
    :cond_16
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_17

    .line 2150
    move-object/from16 v0, p1

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2153
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5, v15}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 2156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v23

    .line 2157
    .local v23, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 2158
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    .line 2160
    if-eqz v4, :cond_18

    .line 2161
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wifi/WifiConfigManager;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 2164
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    .line 2165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 2167
    return-object v23

    .line 2138
    .end local v23    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_19
    const/16 v22, 0x1

    goto :goto_8

    .line 2079
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v14    # "c":Ljava/util/Calendar;
    .end local v22    # "passwordChanged":Z
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :catch_1
    move-exception v18

    .restart local v18    # "ioe":Ljava/io/IOException;
    move-object/from16 v4, v17

    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_7

    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v18    # "ioe":Ljava/io/IOException;
    :cond_1a
    move-object/from16 v4, v17

    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_6

    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_1b
    move-object/from16 v4, v17

    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_3
.end method

.method private cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .prologue
    .line 2646
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    .line 2648
    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    .line 2649
    .local v5, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v5, :cond_0

    .line 2650
    const-string/jumbo v9, "WifiConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not allocate scan cache for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    return-void

    .line 2655
    :cond_0
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 2656
    .local v4, "result":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_1

    .line 2658
    iget-wide v10, v4, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    iput-wide v10, v6, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    .line 2659
    iget v9, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v9, v6, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 2660
    iget v9, v4, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v9, v6, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 2661
    iget v9, v4, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    iput v9, v6, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 2664
    :cond_1
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v9, :cond_2

    .line 2667
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 2670
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v9

    const/16 v10, 0xc0

    if-le v9, v10, :cond_5

    .line 2671
    const-wide/16 v2, 0x0

    .line 2672
    .local v2, "now_dbg":J
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    if-eqz v9, :cond_4

    .line 2673
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Will trim config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2674
    const-string/jumbo v10, " size "

    .line 2673
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2674
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v10

    .line 2673
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "sd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .line 2677
    .local v7, "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2679
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 2684
    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_4
    const/16 v9, 0x80

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->trim(I)V

    .line 2685
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    if-eqz v9, :cond_5

    .line 2686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    sub-long v0, v10, v2

    .line 2687
    .local v0, "diff":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Finished trimming config, time(ns) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2688
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "sd$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    .line 2689
    .restart local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2695
    .end local v0    # "diff":J
    .end local v2    # "now_dbg":J
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_5
    if-eqz p3, :cond_6

    .line 2696
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v9

    invoke-virtual {v5, p2, p3, v9}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 2702
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 2644
    return-void

    .line 2698
    :cond_6
    invoke-virtual {v5, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    goto :goto_2
.end method

.method private cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2625
    .local p2, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .local p3, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2626
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    .line 2627
    .local v3, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v3, v4, :cond_0

    .line 2628
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2629
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 2630
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    .line 2631
    if-eqz p3, :cond_0

    .line 2632
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2635
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find config for \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2636
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v4

    .line 2635
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2636
    const-string/jumbo v6, "\'"

    .line 2635
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2623
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v3    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    return-void
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2998
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 2999
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method private static createPnoNetworkFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "newPriority"    # I

    .prologue
    .line 1134
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v0, "pnoNetwork":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->networkId:I

    .line 1136
    iput p1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->priority:I

    .line 1137
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_0

    .line 1138
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 1140
    :cond_0
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 1141
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 1142
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1143
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 1150
    :goto_0
    return-object v0

    .line 1144
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1145
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 1144
    if-eqz v1, :cond_3

    .line 1146
    :cond_2
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_0

    .line 1148
    :cond_3
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_0
.end method

.method private getAllConfiguredNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 491
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 492
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v2
.end method

.method private static getChecksum(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1206
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1207
    .local v0, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1208
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private getCredentialsByConfigKeyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    const-string/jumbo v0, "psk"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getSavedNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 465
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 468
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 475
    if-eqz p1, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v4, :cond_1

    .line 476
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    .line 475
    if-eqz v4, :cond_1

    .line 477
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 475
    if-eqz v4, :cond_1

    .line 478
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 480
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method private isEncryptionEap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .prologue
    .line 2714
    const-string/jumbo v0, "EAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isEncryptionPsk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .prologue
    .line 2710
    const-string/jumbo v0, "PSK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isEncryptionWep(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .prologue
    .line 2706
    const-string/jumbo v0, "WEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 3064
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3062
    :cond_0
    return-void
.end method

.method private localLogAndLogcat(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3069
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 3070
    const-string/jumbo v0, "WifiConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    return-void
.end method

.method private localLogNetwork(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 3074
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    .line 3075
    return-void

    .line 3079
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    monitor-enter v2

    .line 3080
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ConfigurationMap;->getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2

    .line 3083
    if-eqz v0, :cond_1

    .line 3084
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3085
    const-string/jumbo v3, " status="

    .line 3084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3085
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 3084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3086
    const-string/jumbo v3, " key="

    .line 3084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3086
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 3084
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3073
    :goto_0
    return-void

    .line 3079
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3088
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logContents(Ljava/lang/String;)V
    .locals 8
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 1742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--- Begin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLogAndLogcat(Ljava/lang/String;)V

    .line 1743
    const/4 v3, 0x0

    .line 1745
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1746
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 1747
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLogAndLogcat(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto :goto_0

    .line 1757
    :cond_0
    if-eqz v4, :cond_1

    .line 1758
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v3, v4

    .line 1764
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--- End "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Contents ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLogAndLogcat(Ljava/lang/String;)V

    .line 1741
    return-void

    .line 1760
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 1752
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 1753
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1754
    const-string/jumbo v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1757
    if-eqz v3, :cond_2

    .line 1758
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1760
    :catch_2
    move-exception v1

    goto :goto_2

    .line 1749
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 1750
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1751
    const-string/jumbo v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1757
    if-eqz v3, :cond_2

    .line 1758
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 1760
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 1755
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1757
    :goto_5
    if-eqz v3, :cond_3

    .line 1758
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1755
    :cond_3
    :goto_6
    throw v5

    .line 1760
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 1755
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1749
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1752
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method private logKernelTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 3048
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 3049
    .local v2, "kernelTimeMs":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3050
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "kernel time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3051
    div-long v4, v2, v8

    .line 3050
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3052
    const-string/jumbo v4, "."

    .line 3050
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3053
    rem-long v4, v2, v8

    .line 3050
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3054
    const-string/jumbo v4, "\n"

    .line 3050
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 3047
    return-void
.end method

.method private matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 16
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2531
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v9

    .line 2533
    .local v9, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v13, v9}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v1

    .line 2536
    .local v1, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    .line 2538
    :goto_0
    if-eqz p2, :cond_3

    const/4 v11, 0x0

    .line 2539
    .local v11, "queried":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    invoke-virtual {v13}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLoadedSPs()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 2540
    .local v5, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-direct {v8, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 2541
    .local v8, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "match nwk "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/ScanDetail;->toKeyString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2542
    const-string/jumbo v15, ", anqp "

    .line 2541
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2542
    if-eqz v1, :cond_4

    const-string/jumbo v13, "present"

    .line 2541
    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2543
    const-string/jumbo v15, ", query "

    .line 2541
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2543
    const-string/jumbo v15, ", home sps: "

    .line 2541
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2543
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v15

    .line 2541
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "homeSP$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 2546
    .local v3, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    invoke-virtual {v3, v9, v2, v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v6

    .line 2548
    .local v6, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2549
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v15

    .line 2548
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2549
    const-string/jumbo v15, ": match "

    .line 2548
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2549
    const-string/jumbo v15, ", queried "

    .line 2548
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    sget-object v13, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-eq v6, v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableOsuQueries:Z

    if-eqz v13, :cond_1

    :cond_0
    if-eqz v11, :cond_5

    .line 2564
    :cond_1
    :goto_4
    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2536
    .end local v3    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "homeSP$iterator":Ljava/util/Iterator;
    .end local v5    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v6    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v8    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v11    # "queried":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    goto/16 :goto_0

    .line 2538
    .end local v2    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_3
    const/4 v11, 0x1

    .restart local v11    # "queried":Z
    goto/16 :goto_1

    .line 2542
    .restart local v5    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v8    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_4
    const-string/jumbo v13, "missing"

    goto/16 :goto_2

    .line 2552
    .restart local v3    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP$iterator":Ljava/util/Iterator;
    .restart local v6    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_5
    sget-object v13, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v6, v13, :cond_7

    const/4 v7, 0x1

    .line 2553
    .local v7, "matchSet":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableOsuQueries:Z

    .line 2555
    .local v10, "osu":Z
    invoke-static {v9, v7, v10}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildQueryList(Lcom/android/server/wifi/hotspot2/NetworkDetail;ZZ)Ljava/util/List;

    move-result-object v12

    .line 2556
    .local v12, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-virtual {v9, v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->queriable(Ljava/util/List;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v13, v9, v12}, Lcom/android/server/wifi/hotspot2/AnqpCache;->initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 2558
    if-eqz v12, :cond_6

    .line 2559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->startANQP(Lcom/android/server/wifi/ScanDetail;Ljava/util/List;)Z

    .line 2562
    :cond_6
    const/4 v11, 0x1

    goto :goto_4

    .line 2552
    .end local v7    # "matchSet":Z
    .end local v10    # "osu":Z
    .end local v12    # "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "matchSet":Z
    goto :goto_5

    .line 2566
    .end local v3    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v6    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v7    # "matchSet":Z
    :cond_8
    return-object v8
.end method

.method private matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2515
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->isConfigured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2516
    return-object v3

    .line 2518
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .line 2519
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2520
    return-object v3

    .line 2522
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 2524
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .line 2525
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2526
    const-string/jumbo v4, " pass 1 matches: "

    .line 2525
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2526
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 2525
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    return-object v0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 3093
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 3094
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3103
    const/4 v1, 0x1

    return v1

    .line 3146
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private readIpAndProxyConfigurations()V
    .locals 6

    .prologue
    .line 1946
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    sget-object v5, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1948
    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1950
    :cond_0
    return-void

    .line 1953
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1954
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1955
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyIDForAllUsers(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1958
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_3

    .line 1959
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "configuration found for missing network, nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1960
    const-string/jumbo v5, ", ignored, networks.size="

    .line 1959
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1960
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1959
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 1953
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1962
    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_1

    .line 1944
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "id":I
    :cond_4
    return-void
.end method

.method private readNetworkHistory(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1870
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    .line 1871
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1872
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 1870
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNetworkHistory;->readNetworkHistory(Ljava/util/Map;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    .line 1869
    return-void
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1772
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 1773
    .local v4, "start":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1774
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 1776
    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_0

    .line 1777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readNetworkVariableFromSupplicantFile configKey=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "] key="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1778
    const-string/jumbo v6, " duration="

    .line 1777
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1778
    sub-long v6, v2, v4

    .line 1777
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1780
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2952
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 2951
    return-void
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private removeConfigAndSendBroadcastIfNeeded(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->removeConfigWithoutBroadcast(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    const/4 v1, 0x0

    return v1

    .line 1231
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "key":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_1

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNetwork  key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " config.id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 1235
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeIpAndProxyConfigurations()V

    .line 1236
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1237
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v1, :cond_2

    .line 1238
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeUserSelectionPreference(Ljava/lang/String;)V

    .line 1240
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 1241
    return v3
.end method

.method private removeConfigWithoutBroadcast(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1212
    if-nez p1, :cond_0

    .line 1213
    return v2

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to remove network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 1217
    return v2

    .line 1219
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1220
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    .line 1222
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    .line 1223
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const/4 v0, 0x1

    return v0
.end method

.method private removeUserSelectionPreference(Ljava/lang/String;)V
    .locals 8
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1246
    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeUserSelectionPreference: key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    if-nez p1, :cond_0

    .line 1249
    return-void

    .line 1251
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1252
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    .line 1253
    .local v3, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    .line 1254
    .local v2, "connectChoice":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1255
    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove connect choice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1256
    const-string/jumbo v6, " : "

    .line 1255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1256
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    .line 1258
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    goto :goto_0

    .line 1244
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "connectChoice":Ljava/lang/String;
    .end local v3    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_2
    return-void
.end method

.method private retrievePnoNetworkList(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "pnoListComparator"    # Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v3, "pnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1166
    .local v5, "wifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1167
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1169
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1170
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1173
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-static {v5, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1176
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1177
    .local v4, "priority":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1178
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->createPnoNetworkFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1181
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v3
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .prologue
    .line 1686
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1688
    const-string/jumbo v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1689
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1685
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1674
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1675
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1676
    const-string/jumbo v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1677
    const-string/jumbo v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1678
    const-string/jumbo v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1679
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1673
    return-void
.end method

.method private setNetworkPriorityNative(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "priority"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriority(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method private setSSIDNative(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static toMatchString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2614
    .local p0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2615
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2616
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2618
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private tryEnableQualifiedNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v8, 0x0

    .line 1453
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1454
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long v2, v4, v6

    .line 1458
    .local v2, "timeDifference":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1459
    sget-object v1, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT:[I

    .line 1460
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v4

    .line 1459
    aget v1, v1, v4

    int-to-long v4, v1

    .line 1458
    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1461
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v1, v8}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 1463
    const/4 v1, 0x1

    return v1

    .line 1466
    .end local v2    # "timeDifference":J
    :cond_1
    return v8
.end method

.method private updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2599
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v1

    .line 2601
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-nez p2, :cond_1

    .line 2603
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .line 2604
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    .line 2605
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    .line 2607
    :cond_0
    return-void

    .line 2610
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    .line 2598
    return-void
.end method

.method private wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 2
    .param p1, "originalBitSet"    # Ljava/util/BitSet;
    .param p2, "currentBitSet"    # Ljava/util/BitSet;

    .prologue
    const/4 v1, 0x1

    .line 2171
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2173
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2175
    return v1

    .line 2177
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 2178
    :cond_1
    return v1

    .line 2180
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private wasCredentialChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "originalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    .line 2186
    if-nez p1, :cond_0

    .line 2187
    return v3

    .line 2190
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2191
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2190
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2192
    return v3

    .line 2195
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2196
    return v3

    .line 2199
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2200
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2199
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2201
    return v3

    .line 2204
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2205
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2204
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2206
    return v3

    .line 2209
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2210
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2209
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2211
    return v3

    .line 2214
    :cond_5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 2215
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_7

    .line 2216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 2217
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2218
    return v3

    .line 2216
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2222
    .end local v0    # "i":I
    :cond_7
    return v3

    .line 2226
    :cond_8
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eq v1, v2, :cond_9

    .line 2227
    return v3

    .line 2230
    :cond_9
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eq v1, v2, :cond_a

    .line 2231
    return v3

    .line 2234
    :cond_a
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2235
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2234
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasEnterpriseConfigChange(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2236
    return v3

    .line 2238
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 5

    .prologue
    .line 1934
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1935
    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1936
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    .line 1937
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1941
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    sget-object v4, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1933
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 6
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "isNewNetwork"    # Z

    .prologue
    .line 2865
    const/4 v1, 0x0

    .line 2866
    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    .line 2868
    .local v3, "proxyChanged":Z
    invoke-static {}, Lcom/android/server/wifi/WifiConfigManager;->-getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2887
    const-string/jumbo v4, "Ignore invalid ip assignment during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 2891
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigManager;->-getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 2912
    const-string/jumbo v4, "Ignore invalid proxy configuration during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 2916
    :cond_1
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_2

    .line 2917
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 2918
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 2919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IP config changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " static configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2922
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2921
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2926
    :cond_2
    if-eqz v3, :cond_3

    .line 2927
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 2928
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 2929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "proxy changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2930
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " proxyProperties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 2935
    :cond_3
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-eqz p3, :cond_6

    .line 2936
    :cond_4
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v4, :cond_5

    .line 2937
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeIpAndProxyConfigurationsOnChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2938
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2938
    const-string/jumbo v5, " path: "

    .line 2937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2938
    sget-object v5, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    .line 2937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2940
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeIpAndProxyConfigurations()V

    .line 2942
    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v4

    .line 2870
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 2871
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2874
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    .line 2875
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    .line 2873
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2879
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 2880
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2894
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 2895
    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 2897
    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    .line 2898
    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2900
    :cond_a
    if-eqz v0, :cond_b

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2904
    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 2905
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2868
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 2891
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, -0x1

    .line 942
    if-eqz p1, :cond_3

    .line 943
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 942
    invoke-static {p1, v3}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 947
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "addOrUpdateNetwork id="

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 948
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigManager;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 951
    .local v1, "csum":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 952
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 955
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 956
    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 957
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 958
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 961
    iget-boolean v3, v2, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v3, :cond_4

    .line 962
    const/4 v3, 0x0

    .line 959
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 967
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    return v3

    .line 944
    .end local v2    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_3
    return v5

    .line 963
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_4
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public addPasspointManagementObject(Ljava/lang/String;)I
    .locals 2
    .param p1, "managementObject"    # Ljava/lang/String;

    .prologue
    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    const/4 v1, 0x0

    return v1

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method blackListBssid(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    .line 3300
    return-void
.end method

.method canModifyNetwork(IIZ)Z
    .locals 12
    .param p1, "uid"    # I
    .param p2, "networkId"    # I
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v11, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3183
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v9, p2}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3185
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 3186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "canModifyNetwork: cannot find config networkId "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 3187
    return v8

    .line 3191
    :cond_0
    const-class v9, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3190
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3193
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v5

    .line 3196
    .local v5, "isUidDeviceOwner":Z
    :goto_0
    if-eqz v5, :cond_2

    .line 3197
    return v7

    .end local v5    # "isUidDeviceOwner":Z
    :cond_1
    move v5, v8

    .line 3193
    goto :goto_0

    .line 3200
    .restart local v5    # "isUidDeviceOwner":Z
    :cond_2
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v9, p1, :cond_4

    const/4 v3, 0x1

    .line 3202
    .local v3, "isCreator":Z
    :goto_1
    if-eqz p3, :cond_5

    .line 3203
    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v7

    :cond_3
    return v7

    .line 3200
    .end local v3    # "isCreator":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isCreator":Z
    goto :goto_1

    .line 3208
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "android.software.device_admin"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3209
    if-nez v1, :cond_6

    .line 3210
    return v8

    .line 3215
    :cond_6
    if-eqz v1, :cond_8

    .line 3216
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3215
    invoke-virtual {v1, v9, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v2

    .line 3217
    .local v2, "isConfigEligibleForLockdown":Z
    :goto_2
    if-nez v2, :cond_9

    .line 3218
    if-nez v3, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v7

    :cond_7
    return v7

    .end local v2    # "isConfigEligibleForLockdown":Z
    :cond_8
    move v2, v8

    .line 3215
    goto :goto_2

    .line 3221
    .restart local v2    # "isConfigEligibleForLockdown":Z
    :cond_9
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3223
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "wifi_device_owner_configs_lockdown"

    .line 3222
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_a

    move v4, v7

    .line 3224
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_3
    if-nez v4, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v7

    :goto_4
    return v7

    .end local v4    # "isLockdownFeatureEnabled":Z
    :cond_a
    move v4, v8

    .line 3222
    goto :goto_3

    .restart local v4    # "isLockdownFeatureEnabled":Z
    :cond_b
    move v7, v8

    .line 3224
    goto :goto_4
.end method

.method canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "onlyAnnotate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3258
    if-nez p2, :cond_0

    .line 3259
    const-string/jumbo v2, "canModifyNetowrk recieved null configuration"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 3260
    return v4

    .line 3265
    :cond_0
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 3266
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3277
    .local v0, "netid":I
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    move-result v2

    return v2

    .line 3269
    .end local v0    # "netid":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 3270
    .local v1, "test":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_2

    .line 3271
    return v4

    .line 3273
    :cond_2
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .restart local v0    # "netid":I
    goto :goto_0
.end method

.method checkConfigOverridePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 3282
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 3283
    const-string/jumbo v3, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 3282
    invoke-virtual {v2, v3, p1}, Lcom/android/server/wifi/FrameworkFacade;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3285
    :catch_0
    move-exception v0

    .line 3286
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method clearBssidBlacklist()V
    .locals 1

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    .line 3296
    return-void
.end method

.method disableAllNetworksNative()V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks(Ljava/util/Collection;)Z

    .line 1369
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 898
    if-nez p1, :cond_0

    .line 899
    return-object v1

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getEphemeralForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 904
    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Forget ephemeral SSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 907
    if-eqz v0, :cond_1

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 912
    return-object v0
.end method

.method disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method disableNetworkNative(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3003
    const-string/jumbo v4, "Dump of WifiConfigManager"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLastPriority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string/jumbo v4, "Configured networks"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getAllConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conf$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3007
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 3009
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3010
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 3011
    const-string/jumbo v4, "LostConfigs: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3013
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3017
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->isConfigured()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3018
    const-string/jumbo v4, "Begin dump of ANQP Cache"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v4, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    .line 3020
    const-string/jumbo v4, "End dump of ANQP Cache"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    :cond_2
    return-void
.end method

.method enableAllNetworks()V
    .locals 4

    .prologue
    .line 674
    const/4 v2, 0x0

    .line 676
    .local v2, "networkEnabledStateChanged":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 677
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    .line 678
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 679
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 680
    const/4 v2, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    if-eqz v2, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    .line 687
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    .line 673
    :cond_2
    return-void
.end method

.method enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 1329
    if-nez p1, :cond_0

    .line 1330
    return v1

    .line 1333
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setLatestUserSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1336
    const/4 v0, 0x1

    .line 1337
    .local v0, "ret":Z
    if-eqz p2, :cond_2

    .line 1338
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->selectNetworkWithoutBroadcast(I)Z

    move-result v0

    .line 1339
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_1

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableNetwork(disableOthers=true, uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1341
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1340
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 1343
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 1345
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    .line 1350
    .end local v0    # "ret":Z
    :goto_0
    return v0

    .line 1347
    .local v0, "ret":Z
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "enableNetwork(disableOthers=false) "

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 1348
    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 427
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 428
    if-lez p1, :cond_0

    .line 429
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    .line 430
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    .line 434
    :goto_0
    if-le p1, v1, :cond_1

    .line 435
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    .line 426
    :goto_1
    return-void

    .line 432
    :cond_0
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    goto :goto_0

    .line 437
    :cond_1
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "forgetNetwork"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 923
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to forget network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 925
    const/4 v0, 0x0

    return v0

    .line 927
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    .line 928
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 929
    const/4 v0, 0x1

    return v0
.end method

.method public getANQPData(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/util/Map;
    .locals 3
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2570
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .line 2571
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3025
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->sizeForCurrentUser()I

    move-result v0

    return v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 2849
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    return v0
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getHiddenConfiguredNetworkIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->getHiddenNetworkIdsForCurrentUser()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 2292
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2293
    .local v0, "storedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2294
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v1

    .line 2293
    :cond_0
    return-object v1
.end method

.method public getIsCarrierNetworkEnabledByUser()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3337
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3338
    const-string/jumbo v3, "wifi_connect_carrier_networks"

    .line 3337
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSelectedTimeStamp()J
    .locals 2

    .prologue
    .line 1924
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    return-wide v0
.end method

.method getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v6, 0x0

    .line 553
    if-nez p1, :cond_0

    .line 554
    return-object v6

    .line 556
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 557
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 558
    .local v4, "netId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 559
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 560
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 563
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 564
    return-object v1

    .line 568
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "netId":Ljava/lang/Integer;
    :cond_2
    return-object v6
.end method

.method getMaxDhcpRetries()I
    .locals 4

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    .line 3292
    const-string/jumbo v2, "wifi_max_dhcp_retry_count"

    .line 3293
    const/16 v3, 0x9

    .line 3291
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getMeteredHint(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1663
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPrivilegedSavedNetworks()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getCredentialsByConfigKeyMap()Ljava/util/Map;

    move-result-object v4

    .line 529
    .local v4, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 530
    .local v2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "configuration$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 533
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getMOTree(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setPasspointManagementObjectTree(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v3

    .line 535
    .local v3, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "WifiConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse MO from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    .end local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_0
    return-object v2
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1636
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1637
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    .line 1640
    :cond_0
    return-object v2
.end method

.method getRecentSavedNetworks(IZ)Ljava/util/List;
    .locals 6
    .param p1, "scanResultAgeMs"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 594
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 602
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v0

    .line 603
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v0, :cond_0

    .line 606
    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    .line 607
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_0

    .line 610
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v4, v5, :cond_1

    .line 611
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-eq v4, v5, :cond_0

    .line 614
    :cond_1
    if-eqz p2, :cond_2

    .line 615
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v3
.end method

.method public getSIMAccessor()Lcom/android/server/wifi/SIMAccessor;
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    return-object v0
.end method

.method public getSavedNetworkFromScanDetail(Lcom/android/server/wifi/ScanDetail;)Ljava/util/List;
    .locals 9
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2741
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 2742
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v4, :cond_0

    .line 2743
    return-object v7

    .line 2745
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2746
    .local v3, "savedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2747
    .local v6, "ssid":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2748
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2752
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSavedNetworkFromScanDetail(): try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2753
    const-string/jumbo v8, " SSID="

    .line 2752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2753
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2753
    const-string/jumbo v8, " "

    .line 2752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2753
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2753
    const-string/jumbo v8, " "

    .line 2752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2754
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 2756
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2757
    .local v5, "scanResultEncrypt":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 2758
    .local v2, "configEncrypt":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2759
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    move-result v7

    .line 2758
    if-nez v7, :cond_5

    .line 2760
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    move-result v7

    .line 2758
    if-nez v7, :cond_5

    .line 2761
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v7

    .line 2758
    if-eqz v7, :cond_1

    .line 2762
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2765
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configEncrypt":Ljava/lang/String;
    .end local v5    # "scanResultEncrypt":Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method public getSavedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 2299
    if-nez p1, :cond_0

    return-object v1

    .line 2300
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    .line 2301
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_1

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2302
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 2303
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    :cond_1
    return-object v0
.end method

.method public getScanResultCandidate(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 3248
    if-nez p1, :cond_0

    .line 3249
    return-object v0

    .line 3251
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1601
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1602
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    return-object v1

    .line 1605
    :cond_0
    return-object v2
.end method

.method public getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 2284
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByFQDNForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2285
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 2286
    const-string/jumbo v1, "WifiConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not find network for homeSP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_0
    return-object v0
.end method

.method public getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public handleUserSwitch(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2819
    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    .line 2820
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2821
    .local v2, "ephemeralConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2822
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_0

    .line 2823
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2826
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2827
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2828
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeConfigWithoutBroadcast(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1

    .line 2830
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    .line 2831
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 2835
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ConfigurationMap;->handleUserSwitch(I)Ljava/util/List;

    move-result-object v3

    .line 2836
    .local v3, "hiddenConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "network$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 2837
    .local v4, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->disableNetworkNative(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_2

    .line 2839
    .end local v4    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    .line 2845
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    .line 2818
    return-void
.end method

.method public hasCarrierNetworks()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mHasCarrierConfiguredNetworks:Z

    return v0
.end method

.method public isBssidBlacklisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->isBssidBlacklisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCurrentUserProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2853
    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne p1, v3, :cond_0

    .line 2854
    return v1

    .line 2856
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2857
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    if-ne v3, v4, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method isEphemeral(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1657
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1658
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1929
    if-eqz p1, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1928
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3160
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 3161
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 3164
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "scan"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 2726
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2727
    .local v0, "scanResultEncrypt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2731
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 2732
    .local v0, "configEncrypt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isOpenNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    .prologue
    .line 2718
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2719
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2720
    const/4 v0, 0x1

    return v0
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1649
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1650
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    .line 1651
    const/4 v1, 0x1

    return v1

    .line 1653
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2314
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 2313
    invoke-static {p1, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkConfiguration: Attempting to link config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2316
    const-string/jumbo v2, " that is not visible to the current user."

    .line 2315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2317
    return-void

    .line 2320
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 2322
    return-void

    .line 2324
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2326
    return-void

    .line 2328
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "link$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 2329
    .local v11, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v10, 0x0

    .line 2331
    .local v10, "doLink":Z
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2335
    iget-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v1, :cond_3

    .line 2341
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2345
    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v13

    .line 2346
    .local v13, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_3

    .line 2351
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 2353
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2354
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_5

    .line 2355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkConfiguration link due to same gw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2356
    const-string/jumbo v2, " and "

    .line 2355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2356
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2356
    const-string/jumbo v2, " GW "

    .line 2355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2356
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 2355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2358
    :cond_5
    const/4 v10, 0x1

    .line 2385
    :cond_6
    if-eqz v10, :cond_8

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    if-eqz v1, :cond_8

    .line 2387
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2389
    .local v7, "apsk":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "psk"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2390
    .local v9, "bpsk":Ljava/lang/String;
    if-eqz v7, :cond_7

    if-nez v9, :cond_11

    .line 2394
    :cond_7
    const/4 v10, 0x0

    .line 2398
    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_8
    :goto_1
    if-eqz v10, :cond_12

    .line 2399
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_9

    .line 2400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkConfiguration: will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2401
    const-string/jumbo v2, " and "

    .line 2400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2401
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 2400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2403
    :cond_9
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_a

    .line 2404
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2406
    :cond_a
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_b

    .line 2407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2409
    :cond_b
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    .line 2410
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2413
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2365
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2366
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_6

    .line 2368
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "abssid$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2369
    .local v0, "abssid":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "bbssid$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2370
    .local v3, "bbssid":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    if-eqz v1, :cond_10

    .line 2371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkConfiguration try to link due to DBDC BSSID match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2372
    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2372
    const-string/jumbo v2, " and "

    .line 2371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2372
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2372
    const-string/jumbo v2, " bssida "

    .line 2371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2373
    const-string/jumbo v2, " bssidb "

    .line 2371
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2375
    :cond_10
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2378
    const/4 v10, 0x1

    goto :goto_2

    .line 2391
    .end local v0    # "abssid":Ljava/lang/String;
    .end local v3    # "bbssid":Ljava/lang/String;
    .end local v6    # "abssid$iterator":Ljava/util/Iterator;
    .end local v8    # "bbssid$iterator":Ljava/util/Iterator;
    .restart local v7    # "apsk":Ljava/lang/String;
    .restart local v9    # "bpsk":Ljava/lang/String;
    :cond_11
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2390
    if-nez v1, :cond_7

    .line 2391
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2390
    if-nez v1, :cond_7

    .line 2392
    const-string/jumbo v1, "*"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2390
    if-nez v1, :cond_7

    .line 2392
    const-string/jumbo v1, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2390
    if-nez v1, :cond_7

    .line 2393
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    .line 2416
    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_12
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_14

    .line 2417
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 2418
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_13

    .line 2419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2420
    const-string/jumbo v2, " from "

    .line 2419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2420
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 2419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2422
    :cond_13
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    :cond_14
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 2425
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2426
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_15

    .line 2427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2428
    const-string/jumbo v2, " from "

    .line 2427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2428
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 2427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2430
    :cond_15
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2312
    .end local v10    # "doLink":Z
    .end local v11    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_16
    return-void
.end method

.method loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    .line 446
    const-string/jumbo v0, "Loading config and enabling all networks "

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->loadConfiguredNetworks()V

    .line 448
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    .line 445
    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 8

    .prologue
    .line 1694
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1695
    .local v2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 1696
    .local v5, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1697
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v6, v2, v5}, Lcom/android/server/wifi/WifiConfigStore;->loadNetworks(Ljava/util/Map;Landroid/util/SparseArray;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    .line 1699
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkHistory(Ljava/util/Map;)V

    .line 1700
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->readPasspointConfig(Ljava/util/Map;Landroid/util/SparseArray;)V

    .line 1707
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    .line 1708
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1709
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1710
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1711
    .local v1, "configKey":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1712
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1713
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    if-eqz v6, :cond_0

    .line 1714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " because the configKey loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1715
    const-string/jumbo v7, "from wpa_supplicant.conf is not valid."

    .line 1714
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    .line 1717
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 1720
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 1723
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "configKey":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->readIpAndProxyConfigurations()V

    .line 1725
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    .line 1727
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    if-eqz v6, :cond_3

    .line 1728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadConfiguredNetworks loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1729
    const-string/jumbo v7, " networks (for all users)"

    .line 1728
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1732
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    move-result v6

    if-nez v6, :cond_4

    .line 1734
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->logKernelTime()V

    .line 1735
    const-string/jumbo v6, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logContents(Ljava/lang/String;)V

    .line 1736
    const-string/jumbo v6, "/data/misc/wifi/wpa_supplicant.conf.tmp"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logContents(Ljava/lang/String;)V

    .line 1737
    sget-object v6, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logContents(Ljava/lang/String;)V

    .line 1692
    :cond_4
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3059
    const-string/jumbo v0, "WifiConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3029
    const-string/jumbo v0, "WifiConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3033
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;Z)V

    .line 3032
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .prologue
    .line 3037
    if-eqz p2, :cond_0

    .line 3038
    const-string/jumbo v0, "WifiConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3039
    const-string/jumbo v2, " - "

    .line 3038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3039
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 3038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3040
    const-string/jumbo v2, " - "

    .line 3038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3040
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 3038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3041
    const-string/jumbo v2, " - "

    .line 3038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3041
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 3038
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :goto_0
    return-void

    .line 3043
    :cond_0
    const-string/jumbo v0, "WifiConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;I)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2437
    if-nez p1, :cond_0

    .line 2438
    const/4 v14, 0x0

    return-object v14

    .line 2440
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v14}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 2442
    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2445
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v14, :cond_1

    .line 2446
    const/4 v14, 0x0

    return-object v14

    .line 2449
    :cond_1
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v14, :cond_4

    .line 2450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2451
    .local v3, "dbg":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "makeChannelList age="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2452
    const-string/jumbo v15, " for "

    .line 2451
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2452
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v15

    .line 2451
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2453
    const-string/jumbo v15, " max="

    .line 2451
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2451
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2454
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 2455
    const-string/jumbo v14, " bssids="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2457
    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_3

    .line 2458
    const-string/jumbo v14, " linked="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2460
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2463
    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v7, 0x0

    .line 2464
    .local v7, "numChannels":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 2465
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    .line 2466
    .local v11, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v10

    .line 2468
    .local v10, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-le v7, v14, :cond_a

    .line 2484
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v14, :cond_d

    .line 2485
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2486
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2487
    .local v6, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_7

    .line 2490
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 2493
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    .line 2494
    .restart local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v10

    .line 2495
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v14, :cond_9

    .line 2496
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "has link: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2497
    const-string/jumbo v15, " freq="

    .line 2496
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2497
    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 2496
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2498
    const-string/jumbo v15, " age="

    .line 2496
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2498
    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 2496
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2500
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-gt v7, v14, :cond_7

    .line 2503
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_8

    .line 2504
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2505
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2471
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "linked":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v14, :cond_b

    .line 2472
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_c

    const/4 v13, 0x1

    .line 2473
    .local v13, "test":Z
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "has "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " freq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2474
    const-string/jumbo v15, " age="

    .line 2473
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2474
    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v16, v0

    sub-long v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 2473
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2474
    const-string/jumbo v15, " ?="

    .line 2473
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2476
    .end local v13    # "test":Z
    :cond_b
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    .line 2477
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2478
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2472
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "test":Z
    goto :goto_2

    .line 2510
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v13    # "test":Z
    :cond_d
    return-object v2
.end method

.method public matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .locals 6
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 992
    const/4 v3, 0x0

    .line 993
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetailLock:Ljava/lang/Object;

    monitor-enter v4

    .line 994
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetail:Lcom/android/server/wifi/ScanDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    monitor-exit v4

    .line 996
    if-nez v3, :cond_0

    .line 997
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->ordinal()I

    move-result v4

    return v4

    .line 993
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 999
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    move-result-object v2

    .line 1000
    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-nez v2, :cond_1

    .line 1001
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->ordinal()I

    move-result v4

    return v4

    .line 1004
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    move-result-object v0

    .line 1007
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    move-result-object v1

    .line 1009
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    invoke-virtual {v2, v4, v1, v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->ordinal()I

    move-result v4

    return v4

    .line 1007
    :cond_2
    const/4 v1, 0x0

    .local v1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    goto :goto_0
.end method

.method public modifyPasspointMo(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 981
    .local p2, "mos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->modifySP(Ljava/lang/String;Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    .prologue
    .line 1789
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1791
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1792
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 1791
    if-eqz v2, :cond_0

    .line 1794
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigManager;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1795
    const/4 v2, 0x1

    return v2

    .line 1800
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 846
    if-nez p1, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 849
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 848
    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 850
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkSwitchingBlackListPeriodMs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 851
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkSwitchingBlackListPeriodMs:I

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 853
    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    .line 845
    return-void
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->notifyANQPDone(Ljava/lang/Long;Z)V

    .line 2578
    return-void
.end method

.method public notifyIconReceived(Lcom/android/server/wifi/hotspot2/IconEvent;)V
    .locals 6
    .param p1, "iconEvent"    # Lcom/android/server/wifi/hotspot2/IconEvent;

    .prologue
    .line 2583
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.PASSPOINT_ICON_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2584
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2585
    const-string/jumbo v2, "bssid"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2586
    const-string/jumbo v2, "file"

    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2588
    :try_start_0
    const-string/jumbo v2, "icon"

    .line 2589
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->retrieveIcon(Lcom/android/server/wifi/hotspot2/IconEvent;)[B

    move-result-object v3

    .line 2588
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2593
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2582
    return-void

    .line 2590
    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public queryPasspointIcon(JLjava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->doIconQuery(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method readPasspointConfig(Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1807
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->loadAllSPs()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1813
    .local v7, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v15, 0x0

    .line 1814
    .local v15, "matchedConfigs":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "homeSp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .line 1815
    .local v8, "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    move-result-object v6

    .line 1816
    .local v6, "fqdn":Ljava/lang/String;
    const-string/jumbo v17, "WifiConfigManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Looking for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1818
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v17, "WifiConfigManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Testing "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1824
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string/jumbo v18, "fqdn"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1825
    .local v4, "configFqdn":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1826
    const-string/jumbo v17, "WifiConfigManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Matched "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    add-int/lit8 v15, v15, 0x1

    .line 1828
    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1829
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 1831
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    move-result-object v16

    .line 1832
    .local v16, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 1833
    const/4 v10, 0x0

    .line 1834
    .local v10, "i":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "id$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1835
    .local v12, "id":J
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move-object/from16 v17, v0

    aput-wide v12, v17, v10

    .line 1836
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1808
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "config$iterator":Ljava/util/Iterator;
    .end local v4    # "configFqdn":Ljava/lang/String;
    .end local v6    # "fqdn":Ljava/lang/String;
    .end local v7    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v8    # "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v9    # "homeSp$iterator":Ljava/util/Iterator;
    .end local v10    # "i":I
    .end local v11    # "id$iterator":Ljava/util/Iterator;
    .end local v12    # "id":J
    .end local v15    # "matchedConfigs":I
    .end local v16    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception v5

    .line 1809
    .local v5, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Could not read /data/misc/wifi/PerProviderSubscription.conf : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 1810
    return-void

    .line 1838
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "config$iterator":Ljava/util/Iterator;
    .restart local v4    # "configFqdn":Ljava/lang/String;
    .restart local v6    # "fqdn":Ljava/lang/String;
    .restart local v7    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v8    # "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v9    # "homeSp$iterator":Ljava/util/Iterator;
    .restart local v10    # "i":I
    .restart local v11    # "id$iterator":Ljava/util/Iterator;
    .restart local v15    # "matchedConfigs":I
    .restart local v16    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    move-result-object v14

    .line 1839
    .local v14, "imsiParameter":Lcom/android/server/wifi/IMSIParameter;
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v18, v0

    .line 1840
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1839
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    .line 1841
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v17, v0

    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1840
    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    .line 1846
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "config$iterator":Ljava/util/Iterator;
    .end local v4    # "configFqdn":Ljava/lang/String;
    .end local v6    # "fqdn":Ljava/lang/String;
    .end local v8    # "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v10    # "i":I
    .end local v11    # "id$iterator":Ljava/util/Iterator;
    .end local v14    # "imsiParameter":Lcom/android/server/wifi/IMSIParameter;
    .end local v16    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    const-string/jumbo v17, "WifiConfigManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "loaded "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " passpoint configs"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    return-void
.end method

.method removeNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1194
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "removeNetwork"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 1195
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1196
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeConfigAndSendBroadcastIfNeeded(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1197
    const/4 v1, 0x0

    return v1

    .line 1199
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1200
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    .line 1202
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Ljava/util/Set;
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1272
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1273
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 1276
    :cond_1
    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove all networks for app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1279
    .local v2, "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1280
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 1281
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-ne v5, v6, :cond_2

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1285
    const-string/jumbo v6, ", application \""

    .line 1284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1285
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1285
    const-string/jumbo v6, "\" uninstalled"

    .line 1284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1286
    const-string/jumbo v6, " from user "

    .line 1284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1286
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1287
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1288
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1280
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1291
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    .line 1292
    return-object v2
.end method

.method removeNetworksForUser(I)Ljava/util/Set;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1303
    const-string/jumbo v4, "WifiConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove all networks for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1306
    .local v2, "removedNetworks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    .line 1307
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 1308
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq p1, v5, :cond_1

    .line 1307
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1311
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1312
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1313
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1316
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method public resetSimNetworks()V
    .locals 2

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->resetSimNetworks(Ljava/util/Collection;)V

    .line 3152
    return-void
.end method

.method public retrieveConnectedPnoNetworkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->sConnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->retrievePnoNetworkList(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public retrieveDisconnectedPnoNetworkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1091
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->sDisconnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->retrievePnoNetworkList(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method saveConfig()Z
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 787
    if-eqz p1, :cond_0

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, v7, :cond_1

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 788
    :cond_0
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v7}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v4

    .line 792
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 791
    invoke-static {p1, v5}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 793
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v7}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    return-object v4

    .line 796
    :cond_2
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WifiConfigManager: saveNetwork netId"

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 797
    :cond_3
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_4

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WifiConfigManager saveNetwork, size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 799
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 800
    const-string/jumbo v6, " (for all users)"

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 801
    const-string/jumbo v6, " SSID="

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 801
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 802
    const-string/jumbo v6, " Uid="

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 802
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 803
    const-string/jumbo v6, "/"

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 803
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 806
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 807
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_5

    .line 808
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WifiConfigManager: removed from ephemeral blacklist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 814
    :cond_5
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, v7, :cond_a

    const/4 v2, 0x1

    .line 815
    .local v2, "newNetwork":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v3

    .line 816
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    .line 818
    .local v1, "netId":I
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "WifiConfigManager: saveNetwork got it back netId="

    invoke-direct {p0, v5, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 820
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v5, v1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 821
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_9

    .line 822
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    .line 823
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WifiConfigManager: re-enabling: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 826
    :cond_7
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 829
    :cond_8
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v5, :cond_9

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "WifiConfigManager: saveNetwork got config back netId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 831
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 832
    const-string/jumbo v6, " uid="

    .line 830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 832
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 830
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 836
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    .line 839
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 837
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 842
    return-object v3

    .line 814
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "netId":I
    .end local v2    # "newNetwork":Z
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "newNetwork":Z
    goto/16 :goto_0

    .line 841
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "netId":I
    .restart local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_b
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public saveNetworkAndSetCandidate(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 3235
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 3237
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    .line 3238
    return-object p1
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 856
    return-void
.end method

.method selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "updatePriorities"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 723
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "selectNetwork"

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    .line 724
    :cond_0
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, v5, :cond_1

    return v4

    .line 726
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 725
    invoke-static {p1, v2}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Network config is not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 728
    const-string/jumbo v3, "visible to current user."

    .line 727
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    .line 729
    return v4

    .line 733
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    const v3, 0xf4240

    if-le v2, v3, :cond_6

    .line 734
    :cond_3
    if-eqz p2, :cond_5

    .line 735
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config2$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 736
    .local v0, "config2":Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v5, :cond_4

    .line 737
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkPriorityNative(Landroid/net/wifi/WifiConfiguration;I)Z

    goto :goto_0

    .line 741
    .end local v0    # "config2":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config2$iterator":Ljava/util/Iterator;
    :cond_5
    iput v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    .line 745
    :cond_6
    if-eqz p2, :cond_7

    .line 746
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkPriorityNative(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 749
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting SSID for WPA supplicant network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 755
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 754
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 756
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->setSSIDNative(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 759
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableHS20(Z)V

    .line 761
    if-eqz p2, :cond_9

    .line 762
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    .line 765
    :cond_9
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 767
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 770
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetworkWithoutBroadcast(I)Z

    .line 774
    const/4 v2, 0x1

    return v2
.end method

.method selectNetworkWithoutBroadcast(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 1355
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1356
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v2

    .line 1354
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setActiveScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    .locals 2
    .param p1, "activeScanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetailLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3318
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetail:Lcom/android/server/wifi/ScanDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3316
    return-void

    .line 3317
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setAndEnableLastSelectedConfiguration(I)V
    .locals 6
    .param p1, "netId"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 1889
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_0

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastSelectedConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 1892
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1893
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    .line 1894
    iput-wide v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 1888
    :cond_1
    :goto_0
    return-void

    .line 1896
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1897
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 1898
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    .line 1899
    iput-wide v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    goto :goto_0

    .line 1901
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    .line 1902
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 1904
    const/4 v1, 0x0

    .line 1903
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 1905
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_1

    .line 1906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastSelectedConfiguration now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1623
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1625
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1621
    :cond_0
    return-void
.end method

.method public setEnableAutoJoinWhenAssociated(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3312
    return-void
.end method

.method public setHasCarrierNetworks(Z)V
    .locals 0
    .param p1, "hasCarrierNetworks"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mHasCarrierConfiguredNetworks:Z

    .line 518
    return-void
.end method

.method public setLatestUserSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1913
    if-eqz p1, :cond_0

    .line 1914
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    .line 1915
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    .line 1912
    :cond_0
    return-void
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1613
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1611
    :cond_0
    return-void
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 1594
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v1

    .line 1593
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    return-object v0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 1574
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v1

    .line 1573
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    return-object v0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 1584
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    move-result-object v1

    .line 1583
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    return-object v0
.end method

.method public trimANQPCache(Z)V
    .locals 2
    .param p1, "all"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->clear(ZZ)V

    .line 422
    return-void
.end method

.method public tryEnableQualifiedNetwork(I)Z
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 1437
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1438
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1439
    const-string/jumbo v1, "updateQualifiedNetworkstatus invalid network."

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1440
    const/4 v1, 0x0

    return v1

    .line 1442
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    return v1
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 627
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 628
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v5

    .line 630
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v5, :cond_0

    .line 631
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v4

    .line 632
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 633
    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 636
    .local v1, "previousRssi":I
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    .line 637
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iput v6, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 641
    const v6, 0x9c40

    .line 640
    invoke-virtual {v4, v1, v2, v3, v6}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    .line 642
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v6, :cond_0

    .line 643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateConfiguration freq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 644
    const-string/jumbo v7, " BSSID="

    .line 643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 644
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 645
    const-string/jumbo v7, " RSSI="

    .line 643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 645
    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 646
    const-string/jumbo v7, " "

    .line 643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 646
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    .line 643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 626
    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    return-void
.end method

.method public updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 700
    if-eqz p1, :cond_0

    .line 701
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    if-eq v0, p2, :cond_0

    .line 702
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 703
    const/4 v0, 0x1

    return v0

    .line 706
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method updateNetworkSelectionStatus(II)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1391
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1
.end method

.method updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1402
    if-nez p1, :cond_0

    .line 1403
    return v1

    .line 1406
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1407
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-nez p2, :cond_1

    .line 1408
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enable network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1411
    return v3

    .line 1414
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->incrementDisableReasonCounter(I)V

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "disable counter of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1417
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v2

    .line 1416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1418
    const-string/jumbo v2, " is: "

    .line 1416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1418
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    .line 1416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1418
    const-string/jumbo v2, "and threshold is: "

    .line 1416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1419
    sget-object v2, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    aget v2, v2, p2

    .line 1416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    .line 1423
    sget-object v2, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    aget v2, v2, p2

    .line 1422
    if-lt v1, v2, :cond_2

    .line 1424
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    return v1

    .line 1426
    :cond_2
    return v3
.end method

.method updateNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNetworkStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1478
    if-nez p1, :cond_1

    .line 1479
    return v5

    .line 1477
    :cond_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1482
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 1483
    .local v1, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-ltz p2, :cond_2

    const/16 v2, 0xa

    if-lt p2, v2, :cond_3

    .line 1485
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Network disable reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1486
    return v5

    .line 1489
    :cond_3
    if-nez p2, :cond_5

    .line 1490
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1492
    const-string/jumbo v2, "Need not change Qualified network Selection status since already enabled"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1495
    return v5

    .line 1497
    :cond_4
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1499
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1501
    const-wide/16 v2, -0x1

    .line 1500
    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1503
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    .line 1504
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, "disableTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Re-enable network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1508
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1555
    :goto_1
    return v7

    .line 1511
    .end local v0    # "disableTime":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Do nothing. Alreay permanent disabled! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1515
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v3

    .line 1514
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1518
    return v5

    .line 1519
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1520
    if-ge p2, v8, :cond_7

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Do nothing. Already temporarily disabled! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1525
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v3

    .line 1524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1528
    return v5

    .line 1531
    :cond_7
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1532
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->disableNetworkNative(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1533
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disable network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1536
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    move-result-object v3

    .line 1535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    .line 1539
    :cond_8
    if-ge p2, v8, :cond_9

    .line 1540
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    .line 1542
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    .line 1547
    :goto_2
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    .line 1549
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    .restart local v0    # "disableTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Configure new status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1551
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    .line 1550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1551
    const-string/jumbo v3, " with reason:"

    .line 1550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1552
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    move-result-object v3

    .line 1550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1552
    const-string/jumbo v3, " at: "

    .line 1550
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1544
    .end local v0    # "disableTime":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    goto :goto_2
.end method

.method public updateSavedNetworkWithNewScanDetail(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/List;
    .locals 9
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "isConnectingOrConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2778
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v6

    .line 2779
    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v6, :cond_0

    .line 2780
    return-object v8

    .line 2782
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-result-object v4

    .line 2783
    .local v4, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2784
    .local v0, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p2, :cond_2

    .line 2793
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworkFromScanDetail(Lcom/android/server/wifi/ScanDetail;)Ljava/util/List;

    move-result-object v5

    .line 2794
    .local v5, "savedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_3

    .line 2795
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2796
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p1, v8}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    .line 2797
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2785
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v5    # "savedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;

    move-result-object v3

    .line 2786
    .local v3, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v3, :cond_1

    .line 2787
    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 2800
    .end local v3    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .restart local v5    # "savedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 2801
    return-object v8

    .line 2803
    :cond_4
    return-object v0
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 862
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 864
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigManager;->-getandroid-net-NetworkInfo$DetailedStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 861
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-void

    .line 867
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 869
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    goto :goto_0

    .line 874
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_1

    .line 875
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected wasEnterpriseConfigChange(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 6
    .param p1, "originalEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "currentEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v5, 0x1

    .line 2244
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 2245
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 2246
    return v5

    .line 2249
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    .line 2250
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    .line 2249
    if-eq v3, v4, :cond_1

    .line 2251
    return v5

    .line 2254
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 2255
    .local v2, "originalCaCerts":[Ljava/security/cert/X509Certificate;
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 2257
    .local v0, "currentCaCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 2258
    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_3

    .line 2259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 2260
    aget-object v3, v2, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2261
    return v5

    .line 2259
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2266
    .end local v1    # "i":I
    :cond_3
    return v5

    .line 2270
    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_8

    .line 2271
    :cond_5
    return v5

    .line 2276
    .end local v0    # "currentCaCerts":[Ljava/security/cert/X509Certificate;
    .end local v2    # "originalCaCerts":[Ljava/security/cert/X509Certificate;
    :cond_6
    if-nez p1, :cond_7

    if-eqz p2, :cond_8

    .line 2277
    :cond_7
    return v5

    .line 2280
    :cond_8
    const/4 v3, 0x0

    return v3
.end method

.method public wasEphemeralNetworkDeleted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2959
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2961
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2963
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    if-eqz v1, :cond_0

    .line 2964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiConfiguration from scan results "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2965
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2965
    const-string/jumbo v2, " cap "

    .line 2964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2965
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    .line 2968
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2969
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2968
    if-eqz v1, :cond_5

    .line 2970
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2971
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2974
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2975
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2976
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2979
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2980
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 2981
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 2982
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2988
    :cond_4
    :goto_0
    return-object v0

    .line 2985
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .prologue
    .line 2992
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 2993
    .local v0, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public writeKnownNetworkHistory()V
    .locals 6

    .prologue
    .line 1879
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1881
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1883
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    .line 1884
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1885
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 1883
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wifi/WifiNetworkHistory;->writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    .line 1878
    return-void
.end method

.method public writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    const-string/jumbo v1, "/data/misc/wifi/PerProviderSubscription.conf"

    new-instance v2, Lcom/android/server/wifi/WifiConfigManager$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wifi/WifiConfigManager$3;-><init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V

    .line 1863
    const/4 v3, 0x0

    .line 1850
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 1849
    return-void
.end method
