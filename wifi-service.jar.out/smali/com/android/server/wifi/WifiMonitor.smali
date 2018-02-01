.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$1;,
        Lcom/android/server/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final ADDR_STRING:Ljava/lang/String; = "addr="

.field public static final ANQP_DONE_EVENT:I = 0x2402c

.field private static final ANQP_DONE_STR:Ljava/lang/String; = "ANQP-QUERY-DONE"

.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final ASSOCIATED_WITH_STR:Ljava/lang/String; = "Associated with "

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTH_EVENT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTH_TIMEOUT_STR:Ljava/lang/String; = "timed out."

.field private static final BASE:I = 0x24000

.field private static final BSS_ADDED:I = 0xc

.field private static final BSS_ADDED_STR:Ljava/lang/String; = "BSS-ADDED"

.field private static final BSS_REMOVED:I = 0xd

.field private static final BSS_REMOVED_STR:Ljava/lang/String; = "BSS-REMOVED"

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static final ConnectPrefix:Ljava/lang/String; = "Connection to "

.field private static final ConnectSuffix:Ljava/lang/String; = " completed"

.field private static DBG:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field public static final FILS_NETWORK_CONNECTION_EVENT:I = 0x13e

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field private static final GAS_QUERY_DONE_STR:Ljava/lang/String; = "GAS-QUERY-DONE"

.field private static final GAS_QUERY_PREFIX_STR:Ljava/lang/String; = "GAS-QUERY-"

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field private static final GAS_QUERY_START_STR:Ljava/lang/String; = "GAS-QUERY-START"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field private static final HS20_ICON_STR:Ljava/lang/String; = "RX-HS20-ICON"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field public static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

.field private static final IDENTITY_STR:Ljava/lang/String; = "IDENTITY"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_REMOVE_AND_REFORM_GROUP_EVENT:I = 0x24028

.field private static final P2P_REMOVE_AND_REFORM_GROUP_STR:Ljava/lang/String; = "P2P-REMOVE-AND-REFORM-GROUP"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final REENABLED_STR:Ljava/lang/String; = "SSID-REENABLED"

.field private static final REQUEST_PREFIX_LEN_STR:I

.field private static final REQUEST_PREFIX_STR:Ljava/lang/String; = "CTRL-REQ-"

.field private static final RESULT_STRING:Ljava/lang/String; = "result="

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field private static final RX_HS20_ANQP_ICON_STR:Ljava/lang/String; = "RX-HS20-ANQP-ICON"

.field private static final RX_HS20_ANQP_ICON_STR_LEN:I

.field private static final SCAN_FAILED:I = 0xf

.field public static final SCAN_FAILED_EVENT:I = 0x24011

.field private static final SCAN_FAILED_STR:Ljava/lang/String; = "SCAN-FAILED"

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SIM_STR:Ljava/lang/String; = "SIM"

.field private static final SSID_REENABLE:I = 0xb

.field public static final SSID_REENABLED:I = 0x2400e

.field private static final SSID_TEMP_DISABLE:I = 0xa

.field public static final SSID_TEMP_DISABLED:I = 0x2400d

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field private static final SUBNET_STATUS_UPDATE:I = 0x100

.field public static final SUBNET_STATUS_UPDATE_EVENT:I = 0x13d

.field private static final SUBNET_STATUS_UPDATE_STR:Ljava/lang/String; = "SUBNET-STATUS-UPDATE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TARGET_BSSID_STR:Ljava/lang/String; = "Trying to associate with "

.field private static final TEMP_DISABLED_STR:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xe

.field private static final VDBG:Z = false

.field private static final VENDOR_BASE_WIFI_MONITOR:I = 0xff

.field private static final WIFI_VENDOR_EVENT_BASE:I = 0xff

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static eventLogCounter:I

.field private static mAssocRejectEventPattern:Ljava/util/regex/Pattern;

.field private static mAssociatedPattern:Ljava/util/regex/Pattern;

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mDisconnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

.field private static mRequestIdentityPattern:Ljava/util/regex/Pattern;

.field private static mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

.field private static mTargetBSSIDPattern:Ljava/util/regex/Pattern;

.field private static sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;


# instance fields
.field private mConnected:Z

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/os/Handler;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mLastConnectBSSIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitoringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecvErrors:I

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    sput-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 90
    const-string/jumbo v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 94
    const-string/jumbo v0, "CTRL-REQ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    .line 126
    const-string/jumbo v0, "RX-HS20-ANQP-ICON"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    .line 139
    sput v1, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 254
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 253
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    .line 262
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 261
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    .line 271
    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 270
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    .line 282
    const-string/jumbo v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 281
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    .line 292
    const-string/jumbo v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 291
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    .line 306
    const-string/jumbo v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 305
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    .line 319
    const-string/jumbo v0, "SIM-([0-9]*):UMTS-AUTH:([0-9a-f]+):([0-9a-f]+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 318
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    .line 327
    const-string/jumbo v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 326
    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    .line 549
    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMonitor;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 60
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput v0, p0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    .line 569
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 572
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    .line 587
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    .line 821
    new-instance v0, Lcom/android/server/wifi/WifiMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiMonitor$1;-><init>(Lcom/android/server/wifi/WifiMonitor;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    .line 556
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 555
    return-void
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 783
    :try_start_0
    const-string/jumbo v2, "IFNAME="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 784
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 785
    .local v1, "space":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 786
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "iface":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    const-string/jumbo v2, "p2p-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    const-string/jumbo v0, "p2p0"

    .line 799
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 814
    .end local v1    # "space":I
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 815
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 794
    .restart local v1    # "space":I
    :cond_1
    :try_start_1
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignoring event from unexpected interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 796
    return v5

    .line 804
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dropping malformed event (unparsable iface): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 805
    return v5

    .line 809
    .end local v1    # "space":I
    :cond_3
    :try_start_3
    const-string/jumbo v0, "p2p0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v0    # "iface":Ljava/lang/String;
    goto :goto_0

    :cond_4
    monitor-exit p0

    .line 818
    return v5

    .end local v0    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 34
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 833
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_0

    .line 835
    if-eqz p1, :cond_0

    const-string/jumbo v4, "CTRL-EVENT-BSS-ADDED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 841
    :cond_0
    :goto_0
    const-string/jumbo v4, "CTRL-EVENT-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 842
    const-string/jumbo v4, "WPA:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 843
    const-string/jumbo v4, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 844
    const v4, 0x24007

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 891
    :cond_1
    :goto_1
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 892
    const/4 v4, 0x0

    return v4

    .line 836
    :cond_2
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 837
    const-string/jumbo v6, " dispatchEvent: "

    .line 836
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 845
    :cond_3
    const-string/jumbo v4, "WPS-SUCCESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 846
    const v4, 0x24008

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_1

    .line 847
    :cond_4
    const-string/jumbo v4, "WPS-FAIL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 848
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 849
    :cond_5
    const-string/jumbo v4, "WPS-OVERLAP-DETECTED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 850
    const v4, 0x2400a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_1

    .line 851
    :cond_6
    const-string/jumbo v4, "WPS-TIMEOUT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 852
    const v4, 0x2400b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 853
    :cond_7
    const-string/jumbo v4, "P2P"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 854
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 855
    :cond_8
    const-string/jumbo v4, "AP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 856
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 857
    :cond_9
    const-string/jumbo v4, "ANQP-QUERY-DONE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 859
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleAnqpResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 861
    :catch_0
    move-exception v24

    .line 862
    .local v24, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad ANQP event string: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 864
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_a
    const-string/jumbo v4, "RX-HS20-ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 866
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleIconResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 868
    :catch_1
    move-exception v24

    .line 869
    .restart local v24    # "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad Icon event string: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 872
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_b
    const-string/jumbo v4, "HS20-SUBSCRIPTION-REMEDIATION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 874
    const-string/jumbo v4, "%012x %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 875
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 874
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 876
    :cond_c
    const-string/jumbo v4, "HS20-DEAUTH-IMMINENT-NOTICE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 877
    const-string/jumbo v4, "%012x %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 878
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    .line 877
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/server/wifi/WifiMonitor;->handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 879
    :cond_d
    const-string/jumbo v4, "CTRL-REQ-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 880
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 881
    :cond_e
    const-string/jumbo v4, "Trying to associate with "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 882
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 883
    :cond_f
    const-string/jumbo v4, "Associated with "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 884
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 885
    :cond_10
    const-string/jumbo v4, "Authentication with"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 886
    const-string/jumbo v4, "timed out."

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 885
    if-eqz v4, :cond_11

    .line 887
    const v4, 0x24007

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 889
    :cond_11
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "couldn\'t identify event type - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 895
    :cond_12
    sget v4, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 896
    .local v22, "eventName":Ljava/lang/String;
    const/16 v4, 0x20

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    .line 897
    .local v29, "nameEnd":I
    const/4 v4, -0x1

    move/from16 v0, v29

    if-eq v0, v4, :cond_13

    .line 898
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 899
    :cond_13
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_15

    .line 900
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_14

    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "Received wpa_supplicant event with empty event name"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_14
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 902
    const/4 v4, 0x0

    return v4

    .line 908
    :cond_15
    const-string/jumbo v4, "CONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 909
    const/16 v20, 0x1

    .line 910
    .local v20, "event":I
    const-wide/16 v16, -0x1

    .line 911
    .local v16, "bssid":J
    const-string/jumbo v4, "Connection to "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    .line 912
    .local v30, "prefix":I
    if-ltz v30, :cond_16

    .line 913
    const-string/jumbo v4, " completed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 914
    .local v33, "suffix":I
    move/from16 v0, v33

    move/from16 v1, v30

    if-le v0, v1, :cond_16

    .line 917
    :try_start_2
    const-string/jumbo v4, "Connection to "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v30

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 916
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v16

    .line 923
    .end local v33    # "suffix":I
    :cond_16
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMonitor;->mLastConnectBSSIDs:Ljava/util/Map;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-nez v4, :cond_17

    .line 925
    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to parse out BSSID from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v16    # "bssid":J
    .end local v30    # "prefix":I
    :cond_17
    :goto_3
    move-object/from16 v21, p1

    .line 960
    .local v21, "eventData":Ljava/lang/String;
    const/4 v4, 0x7

    move/from16 v0, v20

    if-eq v0, v4, :cond_18

    const/4 v4, 0x5

    move/from16 v0, v20

    if-ne v0, v4, :cond_2b

    .line 961
    :cond_18
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v21, v4, v5

    .line 974
    :cond_19
    :goto_4
    const/16 v4, 0xa

    move/from16 v0, v20

    if-eq v0, v4, :cond_1a

    const/16 v4, 0xb

    move/from16 v0, v20

    if-ne v0, v4, :cond_32

    .line 975
    :cond_1a
    const/4 v9, 0x0

    .line 976
    .local v9, "substr":Ljava/lang/String;
    const/4 v7, -0x1

    .line 977
    .local v7, "netId":I
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 978
    .local v26, "ind":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_1b

    .line 979
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 981
    .end local v9    # "substr":Ljava/lang/String;
    :cond_1b
    if-eqz v9, :cond_2f

    .line 982
    const-string/jumbo v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 983
    .local v31, "status":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v31

    array-length v5, v0

    :goto_5
    if-ge v4, v5, :cond_2f

    aget-object v27, v31, v4

    .line 984
    .local v27, "key":Ljava/lang/String;
    const-string/jumbo v6, "id="

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 985
    const/16 v25, 0x3

    .line 986
    .local v25, "idx":I
    const/4 v7, 0x0

    .line 987
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v25

    if-ge v0, v6, :cond_2e

    .line 988
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 989
    .local v18, "c":C
    const/16 v6, 0x30

    move/from16 v0, v18

    if-lt v0, v6, :cond_2e

    const/16 v6, 0x39

    move/from16 v0, v18

    if-gt v0, v6, :cond_2e

    .line 990
    mul-int/lit8 v7, v7, 0xa

    .line 991
    add-int/lit8 v6, v18, -0x30

    add-int/2addr v7, v6

    .line 992
    add-int/lit8 v25, v25, 0x1

    .line 989
    goto :goto_6

    .line 918
    .end local v7    # "netId":I
    .end local v18    # "c":C
    .end local v21    # "eventData":Ljava/lang/String;
    .end local v25    # "idx":I
    .end local v26    # "ind":I
    .end local v27    # "key":Ljava/lang/String;
    .end local v31    # "status":[Ljava/lang/String;
    .restart local v16    # "bssid":J
    .restart local v30    # "prefix":I
    .restart local v33    # "suffix":I
    :catch_2
    move-exception v24

    .line 919
    .restart local v24    # "iae":Ljava/lang/IllegalArgumentException;
    const-wide/16 v16, -0x1

    goto/16 :goto_2

    .line 928
    .end local v16    # "bssid":J
    .end local v20    # "event":I
    .end local v24    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v30    # "prefix":I
    .end local v33    # "suffix":I
    :cond_1c
    const-string/jumbo v4, "DISCONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 929
    const/16 v20, 0x2

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 930
    .end local v20    # "event":I
    :cond_1d
    const-string/jumbo v4, "STATE-CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 931
    const/16 v20, 0x3

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 932
    .end local v20    # "event":I
    :cond_1e
    const-string/jumbo v4, "SCAN-RESULTS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 933
    const/16 v20, 0x4

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 934
    .end local v20    # "event":I
    :cond_1f
    const-string/jumbo v4, "SCAN-FAILED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 935
    const/16 v20, 0xf

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 936
    .end local v20    # "event":I
    :cond_20
    const-string/jumbo v4, "LINK-SPEED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 937
    const/16 v20, 0x5

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 938
    .end local v20    # "event":I
    :cond_21
    const-string/jumbo v4, "TERMINATING"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 939
    const/16 v20, 0x6

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 940
    .end local v20    # "event":I
    :cond_22
    const-string/jumbo v4, "DRIVER-STATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 941
    const/16 v20, 0x7

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 942
    .end local v20    # "event":I
    :cond_23
    const-string/jumbo v4, "EAP-FAILURE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 943
    const/16 v20, 0x8

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 944
    .end local v20    # "event":I
    :cond_24
    const-string/jumbo v4, "ASSOC-REJECT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 945
    const/16 v20, 0x9

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 946
    .end local v20    # "event":I
    :cond_25
    const-string/jumbo v4, "SSID-TEMP-DISABLED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 947
    const/16 v20, 0xa

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 948
    .end local v20    # "event":I
    :cond_26
    const-string/jumbo v4, "SSID-REENABLED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 949
    const/16 v20, 0xb

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 950
    .end local v20    # "event":I
    :cond_27
    const-string/jumbo v4, "BSS-ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 951
    const/16 v20, 0xc

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 952
    .end local v20    # "event":I
    :cond_28
    const-string/jumbo v4, "BSS-REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 953
    const/16 v20, 0xd

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 954
    .end local v20    # "event":I
    :cond_29
    const-string/jumbo v4, "SUBNET-STATUS-UPDATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 955
    const/16 v20, 0x100

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 957
    .end local v20    # "event":I
    :cond_2a
    const/16 v20, 0xe

    .restart local v20    # "event":I
    goto/16 :goto_3

    .line 962
    .restart local v21    # "eventData":Ljava/lang/String;
    :cond_2b
    const/4 v4, 0x3

    move/from16 v0, v20

    if-eq v0, v4, :cond_2c

    const/16 v4, 0x8

    move/from16 v0, v20

    if-ne v0, v4, :cond_2d

    .line 963
    :cond_2c
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 964
    .restart local v26    # "ind":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_19

    .line 965
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    .line 968
    .end local v26    # "ind":I
    :cond_2d
    const-string/jumbo v4, " - "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 969
    .restart local v26    # "ind":I
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_19

    .line 970
    add-int/lit8 v4, v26, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    .line 983
    .restart local v7    # "netId":I
    .restart local v27    # "key":Ljava/lang/String;
    .restart local v31    # "status":[Ljava/lang/String;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 1000
    .end local v27    # "key":Ljava/lang/String;
    .end local v31    # "status":[Ljava/lang/String;
    :cond_2f
    const/16 v4, 0xa

    move/from16 v0, v20

    if-ne v0, v4, :cond_31

    .line 1001
    const v6, 0x2400d

    :goto_7
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 1000
    invoke-direct/range {v4 .. v9}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1060
    .end local v7    # "netId":I
    .end local v26    # "ind":I
    :cond_30
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    .line 1061
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1062
    const/4 v4, 0x0

    return v4

    .line 1001
    .restart local v7    # "netId":I
    .restart local v26    # "ind":I
    :cond_31
    const v6, 0x2400e

    goto :goto_7

    .line 1002
    .end local v7    # "netId":I
    .end local v26    # "ind":I
    :cond_32
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_33

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1004
    :cond_33
    const/4 v4, 0x7

    move/from16 v0, v20

    if-ne v0, v4, :cond_34

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1006
    :cond_34
    const/4 v4, 0x6

    move/from16 v0, v20

    if-ne v0, v4, :cond_37

    .line 1011
    const-string/jumbo v4, "recv error"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1012
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiMonitor;->mRecvErrors:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_36

    .line 1013
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_35

    .line 1014
    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "too many recv errors, closing connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_35
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v5, 0x0

    const v6, 0x24002

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1024
    const/4 v4, 0x1

    return v4

    .line 1017
    :cond_36
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1018
    const/4 v4, 0x0

    return v4

    .line 1025
    :cond_37
    const/16 v4, 0x8

    move/from16 v0, v20

    if-ne v0, v4, :cond_38

    .line 1026
    const-string/jumbo v4, "EAP authentication failed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1027
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v5, 0x24007

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    goto/16 :goto_8

    .line 1029
    :cond_38
    const/16 v4, 0x9

    move/from16 v0, v20

    if-ne v0, v4, :cond_3c

    .line 1030
    sget-object v4, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 1031
    .local v28, "match":Ljava/util/regex/Matcher;
    const-string/jumbo v15, ""

    .line 1032
    .local v15, "BSSID":Ljava/lang/String;
    const/4 v14, -0x1

    .line 1033
    .local v14, "status":I
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1034
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_39

    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "Assoc Reject: Could not parse assoc reject string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .end local v15    # "BSSID":Ljava/lang/String;
    :cond_39
    :goto_9
    sget v13, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v12, 0x2402b

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-direct/range {v10 .. v15}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    goto/16 :goto_8

    .line 1036
    .restart local v15    # "BSSID":Ljava/lang/String;
    :cond_3a
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v23

    .line 1037
    .local v23, "groupNumber":I
    const/16 v32, -0x1

    .line 1038
    .local v32, "statusGroupNumber":I
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_3b

    .line 1039
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 1040
    const/16 v32, 0x2

    .line 1047
    .end local v15    # "BSSID":Ljava/lang/String;
    :goto_a
    :try_start_3
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v14

    goto :goto_9

    .line 1043
    .restart local v15    # "BSSID":Ljava/lang/String;
    :cond_3b
    const/4 v15, 0x0

    .line 1044
    .local v15, "BSSID":Ljava/lang/String;
    const/16 v32, 0x1

    goto :goto_a

    .line 1048
    .end local v15    # "BSSID":Ljava/lang/String;
    :catch_3
    move-exception v19

    .line 1049
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/4 v14, -0x1

    goto :goto_9

    .line 1053
    .end local v14    # "status":I
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "groupNumber":I
    .end local v28    # "match":Ljava/util/regex/Matcher;
    .end local v32    # "statusGroupNumber":I
    :cond_3c
    const/16 v4, 0xc

    move/from16 v0, v20

    if-eq v0, v4, :cond_30

    .line 1055
    const/16 v4, 0xd

    move/from16 v0, v20

    if-eq v0, v4, :cond_30

    .line 1058
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private ensureConnectedLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 609
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    if-eqz v3, :cond_0

    .line 610
    return v6

    .line 613
    :cond_0
    sget-boolean v3, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiMonitor"

    const-string/jumbo v4, "connecting to supplicant"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    const/4 v0, 0x0

    .line 616
    .local v0, "connectTries":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 617
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 618
    new-instance v3, Lcom/android/server/wifi/WifiMonitor$MonitorThread;

    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;-><init>(Lcom/android/server/wifi/WifiMonitor;Landroid/util/LocalLog;)V

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiMonitor$MonitorThread;->start()V

    .line 619
    return v6

    .line 621
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    const/16 v3, 0x32

    if-ge v0, v3, :cond_3

    .line 623
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    goto :goto_0

    .line 624
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    :catch_0
    move-exception v2

    .local v2, "ignore":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 627
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static getInstance()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->sWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method private getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1197
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1205
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleAnqpResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x20

    .line 1286
    const-string/jumbo v0, "addr="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1287
    .local v6, "addrPos":I
    const-string/jumbo v0, "result="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1288
    .local v12, "resPos":I
    if-ltz v6, :cond_0

    if-gez v12, :cond_1

    .line 1289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unexpected ANQP result notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1291
    :cond_1
    const-string/jumbo v0, "addr="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1292
    .local v7, "eoaddr":I
    if-gez v7, :cond_2

    .line 1293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1295
    :cond_2
    const-string/jumbo v0, "result="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 1296
    .local v10, "eoresult":I
    if-gez v10, :cond_3

    .line 1297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1301
    :cond_3
    :try_start_0
    const-string/jumbo v0, "addr="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v8

    .line 1303
    .local v8, "bssid":J
    const-string/jumbo v0, "result="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v12

    .line 1302
    invoke-virtual {p1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1303
    const-string/jumbo v1, "success"

    .line 1302
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1303
    const/4 v3, 0x1

    .line 1305
    .local v3, "result":I
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const v2, 0x2402c

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    .end local v3    # "result":I
    .end local v8    # "bssid":J
    :goto_1
    return-void

    .line 1303
    .restart local v8    # "bssid":J
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "result":I
    goto :goto_0

    .line 1307
    .end local v3    # "result":I
    .end local v8    # "bssid":J
    :catch_0
    move-exception v11

    .line 1308
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad MAC address in ANQP response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1125
    const/4 v5, 0x0

    .line 1126
    .local v5, "BSSID":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1127
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1130
    .end local v5    # "BSSID":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v2, 0x20093

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1124
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1066
    if-nez p1, :cond_0

    .line 1067
    return-void

    .line 1069
    :cond_0
    const-string/jumbo v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    const v0, 0x2400c

    invoke-direct {p0, p2, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 1065
    :cond_1
    return-void
.end method

.method private handleEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 1081
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    .line 1082
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1080
    :cond_1
    :goto_0
    return-void

    .line 1086
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :sswitch_2
    const v0, 0x24005

    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1098
    :sswitch_3
    const v0, 0x24011

    invoke-direct {p0, p3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1102
    :sswitch_4
    invoke-direct {p0, p3, p2}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantVendorDebugEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1106
    :sswitch_5
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    .line 1107
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEvent unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1084
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_5
        0xf -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1270
    const-string/jumbo v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string/jumbo v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1273
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    const v2, 0x2402a

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    aget-object v1, v0, v3

    const-string/jumbo v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    const v2, 0x24029

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleIconResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1314
    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1315
    .local v3, "segments":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 1316
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Incorrect number of segments"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1320
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    aget-object v0, v3, v5

    .line 1321
    .local v0, "bssid":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v1, v3, v5

    .line 1322
    .local v1, "fileName":Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1324
    .local v4, "size":I
    new-instance v5, Lcom/android/server/wifi/hotspot2/IconEvent;

    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->parseMac(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v1, v4}, Lcom/android/server/wifi/hotspot2/IconEvent;-><init>(JLjava/lang/String;I)V

    .line 1323
    const v6, 0x24035

    invoke-direct {p0, p2, v6, v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    return-void

    .line 1326
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 1327
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Bad numeral"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 1451
    const/4 v6, 0x0

    .line 1452
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1453
    .local v4, "networkId":I
    const/4 v5, 0x0

    .line 1454
    .local v5, "reason":I
    const/4 v14, -0x1

    .line 1455
    .local v14, "ind":I
    const/4 v10, 0x0

    .line 1457
    .local v10, "local":I
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 1458
    sget-object v1, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 1459
    .local v15, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1460
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "handleNetworkStateChange: Couldnt find BSSID in event string"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    .end local v6    # "BSSID":Ljava/lang/String;
    :cond_0
    const v3, 0x24003

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1450
    .end local v15    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    return-void

    .line 1462
    .restart local v6    # "BSSID":Ljava/lang/String;
    .restart local v15    # "match":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1464
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1468
    :goto_1
    const-string/jumbo v1, "FILS_HLP_SENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    const/16 v3, 0x13e

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1470
    return-void

    .line 1465
    :catch_0
    move-exception v13

    .line 1466
    .local v13, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_1

    .line 1474
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "match":Ljava/util/regex/Matcher;
    .local v6, "BSSID":Ljava/lang/String;
    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 1475
    sget-object v1, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 1476
    .restart local v15    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1477
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiMonitor"

    const-string/jumbo v2, "handleNetworkStateChange: Could not parse disconnect string"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    .end local v6    # "BSSID":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WifiMonitor notify network disconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1493
    const-string/jumbo v3, " reason="

    .line 1491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1493
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_5
    const v9, 0x24004

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1479
    .restart local v6    # "BSSID":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1481
    .local v6, "BSSID":Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1486
    :goto_3
    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {v15, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    goto :goto_2

    .line 1482
    :catch_1
    move-exception v13

    .line 1483
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    goto :goto_3

    .line 1487
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v13

    .line 1488
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, -0x1

    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1215
    const-string/jumbo v3, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1217
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    const v3, 0x24015

    invoke-direct {p0, p2, v3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1214
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    const-string/jumbo v3, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1219
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1220
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    const v3, 0x24016

    invoke-direct {p0, p2, v3, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 1221
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string/jumbo v3, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1222
    const v3, 0x24025

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1223
    :cond_3
    const-string/jumbo v3, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1224
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    const v4, 0x24017

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 1225
    :cond_4
    const-string/jumbo v3, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1226
    const v3, 0x24019

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1227
    :cond_5
    const-string/jumbo v3, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1228
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    const v4, 0x2401a

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 1229
    :cond_6
    const-string/jumbo v3, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1230
    const v3, 0x2401b

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 1231
    :cond_7
    const-string/jumbo v3, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1232
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    const v4, 0x2401c

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1233
    :cond_8
    const-string/jumbo v3, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    .line 1235
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    const v3, 0x2401d

    invoke-direct {p0, p2, v3, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1236
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_9
    const-string/jumbo v3, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1237
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    .line 1238
    .restart local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v1, :cond_0

    const v3, 0x2401e

    invoke-direct {p0, p2, v3, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1239
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_a
    const-string/jumbo v3, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1240
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    const v4, 0x2401f

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1241
    :cond_b
    const-string/jumbo v3, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1242
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    const v4, 0x24020

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1243
    :cond_c
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1244
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24021

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1245
    :cond_d
    const-string/jumbo v3, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1246
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24022

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1247
    :cond_e
    const-string/jumbo v3, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1248
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24023

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1249
    :cond_f
    const-string/jumbo v3, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1250
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    const v4, 0x24024

    invoke-direct {p0, p2, v4, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1251
    :cond_10
    const-string/jumbo v3, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1252
    const v3, 0x24027

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1253
    :cond_11
    const-string/jumbo v3, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1254
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1255
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v2, :cond_12

    .line 1256
    const v3, 0x24026

    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1258
    :cond_12
    const-string/jumbo v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Null service resp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1260
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string/jumbo v3, "P2P-REMOVE-AND-REFORM-GROUP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1261
    const-string/jumbo v3, "WifiMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received event= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const v3, 0x24028

    invoke-direct {p0, p2, v3}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const v12, 0x24010

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 1344
    const/4 v5, 0x0

    .line 1345
    .local v5, "SSID":Ljava/lang/String;
    const/4 v4, -0x2

    .line 1346
    .local v4, "reason":I
    sget v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1347
    .local v11, "requestName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    return-void

    .line 1350
    :cond_0
    const-string/jumbo v0, "IDENTITY"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1351
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 1352
    .local v8, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1353
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1355
    .local v5, "SSID":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1362
    .end local v5    # "SSID":Ljava/lang/String;
    :goto_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v2, 0x2400f

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1343
    .end local v8    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 1356
    .restart local v5    # "SSID":Ljava/lang/String;
    .restart local v8    # "match":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v7

    .line 1357
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    goto :goto_0

    .line 1360
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .local v5, "SSID":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "didn\'t find SSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1363
    .end local v8    # "match":Ljava/util/regex/Matcher;
    :cond_3
    const-string/jumbo v0, "SIM"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1364
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1365
    .local v9, "matchGsm":Ljava/util/regex/Matcher;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestUmtsAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1367
    .local v10, "matchUmts":Ljava/util/regex/Matcher;
    new-instance v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    invoke-direct {v6}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    .line 1368
    .local v6, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1369
    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1370
    iput v2, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1371
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1372
    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 1373
    invoke-direct {p0, p2, v12, v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 1374
    :cond_4
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1375
    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1376
    const/4 v0, 0x5

    iput v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1377
    invoke-virtual {v10, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1378
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    .line 1379
    iget-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1380
    iget-object v0, v6, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1381
    invoke-direct {p0, p2, v12, v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1383
    :cond_5
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t parse SIM auth request - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1387
    .end local v6    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    .end local v9    # "matchGsm":Ljava/util/regex/Matcher;
    .end local v10    # "matchUmts":Ljava/util/regex/Matcher;
    :cond_6
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t identify request type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1397
    const/16 v18, 0x0

    .line 1398
    .local v18, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string/jumbo v1, "SSID="

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1399
    .local v10, "index":I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_0

    .line 1401
    add-int/lit8 v1, v10, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1400
    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v18

    .line 1403
    .end local v18    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    const-string/jumbo v1, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1405
    .local v8, "dataTokens":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1406
    .local v7, "BSSID":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1407
    .local v12, "networkId":I
    const/4 v13, -0x1

    .line 1408
    .local v13, "newState":I
    const/4 v1, 0x0

    array-length v2, v8

    .end local v7    # "BSSID":Ljava/lang/String;
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v16, v8, v1

    .line 1409
    .local v16, "token":Ljava/lang/String;
    const-string/jumbo v3, "="

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1410
    .local v11, "nameValue":[Ljava/lang/String;
    array-length v3, v11

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1408
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1414
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string/jumbo v4, "BSSID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1415
    const/4 v3, 0x1

    aget-object v7, v11, v3

    .local v7, "BSSID":Ljava/lang/String;
    goto :goto_1

    .line 1421
    .end local v7    # "BSSID":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 1426
    .local v17, "value":I
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1427
    move/from16 v12, v17

    goto :goto_1

    .line 1428
    :cond_4
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1429
    move/from16 v13, v17

    goto :goto_1

    .line 1433
    .end local v11    # "nameValue":[Ljava/lang/String;
    .end local v16    # "token":Ljava/lang/String;
    .end local v17    # "value":I
    :cond_5
    const/4 v1, -0x1

    if-ne v13, v1, :cond_6

    return-void

    .line 1435
    :cond_6
    sget-object v14, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1436
    .local v14, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_7

    aget-object v15, v2, v1

    .line 1437
    .local v15, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v15}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    if-ne v4, v13, :cond_9

    .line 1438
    move-object v14, v15

    .line 1442
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v14, v1, :cond_8

    .line 1443
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_8
    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1446
    new-instance v6, Lcom/android/server/wifi/StateChangeResult;

    move-object/from16 v0, v18

    invoke-direct {v6, v12, v0, v7, v14}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 1445
    const v3, 0x24006

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1396
    return-void

    .line 1436
    .restart local v15    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1422
    .end local v14    # "newSupplicantState":Landroid/net/wifi/SupplicantState;
    .end local v15    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v11    # "nameValue":[Ljava/lang/String;
    .restart local v16    # "token":Ljava/lang/String;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private handleSupplicantVendorDebugEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1517
    const/4 v2, 0x0

    .line 1519
    .local v2, "subnetStatus":I
    sget-boolean v4, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IP subnet status change event - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_0
    const-string/jumbo v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1522
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v8, :cond_1

    .line 1523
    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "IP subnet status event: Invalid tokens"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return-void

    .line 1526
    :cond_1
    aget-object v4, v3, v7

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v4, v1

    if-eq v4, v8, :cond_2

    .line 1528
    const-string/jumbo v4, "WifiMonitor"

    const-string/jumbo v5, "IP subnet status event: Invalid nameValue"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void

    .line 1533
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1538
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiMonitor;->notifyIpSubnetStatusChange(Ljava/lang/String;I)V

    .line 1516
    return-void

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1116
    const/4 v5, 0x0

    .line 1117
    .local v5, "BSSID":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1118
    .local v6, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1121
    .end local v5    # "BSSID":Ljava/lang/String;
    :cond_0
    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const v2, 0x2008d

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1115
    return-void
.end method

.method private handleWnmFrame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 1333
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wifi/WnmData;->buildWnmData(Ljava/lang/String;)Lcom/android/server/wifi/WnmData;

    move-result-object v1

    .line 1334
    .local v1, "wnmData":Lcom/android/server/wifi/WnmData;
    const v2, 0x2403d

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    .end local v1    # "wnmData":Lcom/android/server/wifi/WnmData;
    :goto_0
    return-void

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad WNM event: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleWpsFailEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const v8, 0x24009

    .line 1135
    const-string/jumbo v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1136
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1137
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 1138
    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1139
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1142
    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1143
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1144
    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    .line 1152
    move v4, v5

    .line 1156
    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1157
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1158
    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    .line 1166
    if-nez v4, :cond_1

    move v4, v0

    .line 1172
    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, v8, v9, v4}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;III)V

    .line 1134
    return-void

    .line 1146
    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    const/4 v7, 0x5

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1147
    return-void

    .line 1149
    :pswitch_1
    const/4 v7, 0x4

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1150
    return-void

    .line 1160
    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    const/4 v7, 0x6

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1161
    return-void

    .line 1163
    :sswitch_1
    const/4 v7, 0x3

    invoke-direct {p0, p2, v8, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1164
    return-void

    .line 1144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1158
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private isMonitoring(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 590
    .local v0, "val":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 591
    const/4 v1, 0x0

    return v1

    .line 594
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private notifyIpSubnetStatusChange(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "subnetStatus"    # I

    .prologue
    .line 1505
    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    .line 1506
    :cond_0
    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IP subnet status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    return-void

    .line 1510
    :cond_1
    const/16 v0, 0x13d

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;II)V

    .line 1501
    return-void
.end method

.method private p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1177
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1178
    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string/jumbo v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1179
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    return-object v1

    .line 1180
    :cond_0
    aget-object v4, v3, v6

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1181
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    return-object v1

    .line 1184
    :cond_1
    aget-object v4, v2, v6

    const-string/jumbo v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1185
    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v4

    .line 1188
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1192
    :goto_0
    return-object v1

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 740
    if-eqz p1, :cond_0

    .line 741
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 739
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 679
    return-void
.end method

.method private sendMessage(Ljava/lang/String;II)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 688
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 687
    return-void
.end method

.method private sendMessage(Ljava/lang/String;III)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 692
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 691
    return-void
.end method

.method private sendMessage(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 695
    return-void
.end method

.method private sendMessage(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 684
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 683
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 700
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 701
    .local v5, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 703
    const/4 v2, 0x1

    .line 704
    .local v2, "firstHandler":Z
    iget v7, p2, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 705
    .local v6, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-eqz v6, :cond_2

    .line 706
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "handler$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 707
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 708
    const/4 v2, 0x0

    .line 709
    invoke-direct {p0, v3, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 712
    :cond_0
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 717
    .end local v2    # "firstHandler":Z
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "handler$iterator":Ljava/util/Iterator;
    .end local v6    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :cond_1
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Dropping event because ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") is stopped"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2
    return-void

    .line 720
    :cond_3
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "WifiMonitor"

    const-string/jumbo v8, "Sending to all monitors because there\'s no matching iface"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_4
    const/4 v2, 0x1

    .line 722
    .restart local v2    # "firstHandler":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 724
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    iget v8, p2, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 725
    .restart local v6    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "handler$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 726
    .restart local v3    # "handler":Landroid/os/Handler;
    if-eqz v2, :cond_6

    .line 727
    const/4 v2, 0x0

    .line 728
    invoke-direct {p0, v3, p2}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1

    .line 731
    :cond_6
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_1
.end method

.method private setMonitoring(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    return-void
.end method

.method private setMonitoringNone()V
    .locals 3

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoringMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    .local v0, "iface":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    goto :goto_0

    .line 601
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 562
    if-lez p1, :cond_0

    .line 563
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 561
    :goto_0
    return-void

    .line 565
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    goto :goto_0
.end method

.method public declared-synchronized killSupplicant(Z)V
    .locals 5
    .param p1, "p2pSupported"    # Z

    .prologue
    monitor-enter p0

    .line 660
    :try_start_0
    const-string/jumbo v2, "init.svc.wpa_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "suppState":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, "unknown"

    .line 662
    :cond_0
    const-string/jumbo v2, "init.svc.p2p_supplicant"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "p2pSuppState":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string/jumbo v0, "unknown"

    .line 665
    :cond_1
    const-string/jumbo v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killSupplicant p2p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    const-string/jumbo v4, " init.svc.wpa_supplicant="

    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 667
    const-string/jumbo v4, " init.svc.p2p_supplicant="

    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->killSupplicant(Z)Z

    .line 669
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    .line 670
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoringNone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 659
    return-void

    .end local v0    # "p2pSuppState":Ljava/lang/String;
    .end local v1    # "suppState":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "what"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 575
    .local v0, "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    if-nez v0, :cond_0

    .line 576
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 577
    .restart local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 580
    .local v1, "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v1, :cond_1

    .line 581
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 582
    .restart local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 573
    return-void

    .end local v0    # "ifaceHandlers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/os/Handler;>;>;"
    .end local v1    # "ifaceWhatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startMonitoring(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 633
    :try_start_0
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") with mConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiMonitor;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct {p0}, Lcom/android/server/wifi/WifiMonitor;->ensureConnectedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 637
    const v1, 0x24001

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 632
    return-void

    .line 640
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->isMonitoring(Ljava/lang/String;)Z

    move-result v0

    .line 641
    .local v0, "originalMonitoring":Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 642
    const v1, 0x24002

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 643
    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 644
    const-string/jumbo v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMonitoring("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "originalMonitoring":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopMonitoring(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 649
    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMonitoring("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V

    .line 651
    const v0, 0x24002

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->sendMessage(Ljava/lang/String;I)V

    .line 652
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiMonitor;->setMonitoring(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 648
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSupplicant()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 655
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
