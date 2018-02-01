.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$1;,
        Lcom/android/server/BluetoothManagerService$2;,
        Lcom/android/server/BluetoothManagerService$ActiveLog;,
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_SAVE_RETRIES:I = 0x3

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_UNLOCKED:I = 0x12d

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_SAVE_MS:I = 0x1f4

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8


# instance fields
.field private mActiveLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/BluetoothManagerService$ActiveLog;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress:Ljava/lang/String;

.field private mBinding:Z

.field private mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mEnableBrEdr:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mIntentPending:Z

.field private mName:Ljava/lang/String;

.field private final mPermissionReviewRequired:Z

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/BluetoothManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableBrEdr:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/BluetoothManagerService;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "clearBle"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/BluetoothManagerService;ZLjava/lang/String;)V
    .locals 0
    .param p1, "quietMode"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForMonitoredOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p1, "quietMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 288
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 143
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 142
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 148
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 150
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnableBrEdr:Z

    .line 185
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    .line 191
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mIntentPending:Z

    .line 196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 195
    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 213
    new-instance v3, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 221
    new-instance v3, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1278
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v3, p0, v7}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 289
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 291
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 293
    sget-boolean v3, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-nez v3, :cond_1

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 295
    const v5, 0x11200de

    .line 294
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 293
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    .line 297
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    .line 298
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 299
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 300
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 301
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 302
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 303
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 304
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 305
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 306
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 307
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 308
    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 309
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 312
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    .line 313
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 314
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 315
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 317
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 318
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 320
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v5, "Startup: Bluetooth persisted state is ON."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 323
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableBrEdr:Z

    .line 326
    :cond_0
    const/4 v2, -0x1

    .line 328
    .local v2, "systemUiUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.android.systemui"

    .line 329
    const/high16 v5, 0x100000

    const/4 v6, 0x0

    .line 328
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 334
    :goto_1
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    .line 288
    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "systemUiUid":I
    :cond_1
    move v3, v4

    .line 293
    goto :goto_0

    .line 330
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "systemUiUid":I
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private addActiveLog(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2039
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    monitor-enter v6

    .line 2040
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 2041
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 2043
    :cond_0
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/server/BluetoothManagerService$ActiveLog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/BluetoothManagerService$ActiveLog;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;ZJ)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2038
    return-void

    .line 2039
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private bluetoothStateChangeHandler(II)V
    .locals 12
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xa

    const/4 v4, 0x1

    const/16 v9, 0xf

    const/4 v5, 0x0

    .line 1854
    const/4 v3, 0x1

    .line 1855
    .local v3, "isStandardBroadcast":Z
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bluetoothStateChangeHandler: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ->  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    if-ne p1, p2, :cond_0

    .line 1857
    return-void

    .line 1859
    :cond_0
    if-eq p1, p2, :cond_4

    .line 1861
    if-eq p2, v9, :cond_1

    .line 1862
    if-ne p2, v10, :cond_d

    .line 1863
    :cond_1
    const/16 v6, 0xd

    if-ne p1, v6, :cond_6

    .line 1864
    if-ne p2, v9, :cond_5

    const/4 v2, 0x1

    .line 1866
    .local v2, "intermediate_off":Z
    :goto_0
    if-ne p2, v10, :cond_8

    .line 1868
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "Bluetooth is complete turn off"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 1871
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 1873
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mIntentPending:Z

    if-nez v6, :cond_7

    .line 1874
    const/4 v3, 0x0

    .line 1927
    .end local v2    # "intermediate_off":Z
    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 1928
    if-ne p1, v9, :cond_13

    .line 1930
    const/16 p1, 0xa

    .line 1936
    :cond_3
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1938
    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1939
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1940
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1941
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v7, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1853
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 1864
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "intermediate_off":Z
    goto :goto_0

    .line 1863
    .end local v2    # "intermediate_off":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "intermediate_off":Z
    goto :goto_0

    .line 1876
    :cond_7
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mIntentPending:Z

    goto :goto_1

    .line 1878
    :cond_8
    if-nez v2, :cond_b

    .line 1880
    const-string/jumbo v5, "BluetoothManagerService"

    const-string/jumbo v6, "Bluetooth is in LE only mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v5, :cond_a

    .line 1882
    const-string/jumbo v5, "BluetoothManagerService"

    const-string/jumbo v6, "Calling BluetoothGattServiceUp"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    .line 1892
    :cond_9
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 1894
    const/4 v3, 0x0

    goto :goto_1

    .line 1885
    :cond_a
    const-string/jumbo v5, "BluetoothManagerService"

    const-string/jumbo v6, "Binding Bluetooth GATT service"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1887
    const-string/jumbo v6, "android.hardware.bluetooth_le"

    .line 1886
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1888
    new-instance v0, Landroid/content/Intent;

    const-class v5, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1889
    .local v0, "i":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v7, 0x41

    invoke-virtual {p0, v0, v5, v7, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_3

    .line 1896
    .end local v0    # "i":Landroid/content/Intent;
    :cond_b
    if-eqz v2, :cond_2

    .line 1897
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "Intermediate off, back to LE only mode"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 1900
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 1902
    const/16 p2, 0xa

    .line 1903
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    .line 1904
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1905
    const/4 v3, 0x0

    .line 1906
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mIntentPending:Z

    goto/16 :goto_1

    .line 1908
    :cond_c
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mIntentPending:Z

    .line 1909
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1912
    .end local v2    # "intermediate_off":Z
    :cond_d
    if-ne p2, v11, :cond_f

    .line 1913
    if-ne p2, v11, :cond_e

    .line 1914
    .local v4, "isUp":Z
    :goto_4
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 1915
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto/16 :goto_1

    .end local v4    # "isUp":Z
    :cond_e
    move v4, v5

    .line 1913
    goto :goto_4

    .line 1917
    :cond_f
    const/16 v5, 0xe

    if-eq p2, v5, :cond_10

    .line 1918
    const/16 v5, 0x10

    if-ne p2, v5, :cond_11

    .line 1919
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 1920
    const/4 v3, 0x0

    .line 1918
    goto/16 :goto_1

    .line 1922
    :cond_11
    const/16 v5, 0xb

    if-eq p2, v5, :cond_12

    .line 1923
    const/16 v5, 0xd

    if-ne p2, v5, :cond_2

    .line 1924
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto/16 :goto_1

    .line 1932
    :cond_13
    const/16 v5, 0x10

    if-ne p1, v5, :cond_3

    .line 1934
    const/16 p1, 0xd

    goto/16 :goto_2
.end method

.method private checkIfCallerIsForegroundUser()Z
    .locals 13

    .prologue
    .line 1815
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1816
    .local v4, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1817
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1818
    .local v2, "callingIdentity":J
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 1819
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 1820
    .local v7, "ui":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_1

    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    .line 1821
    .local v6, "parentUser":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1822
    .local v0, "callingAppId":I
    const/4 v9, 0x0

    .line 1824
    .local v9, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1825
    .local v5, "foregroundUser":I
    if-eq v4, v5, :cond_0

    .line 1826
    if-ne v6, v5, :cond_2

    .line 1825
    :cond_0
    const/4 v9, 0x1

    .line 1829
    :goto_1
    if-eqz v9, :cond_4

    .line 1836
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1838
    return v9

    .line 1820
    .end local v0    # "callingAppId":I
    .end local v5    # "foregroundUser":I
    .end local v6    # "parentUser":I
    .end local v9    # "valid":Z
    :cond_1
    const/16 v6, -0x2710

    .restart local v6    # "parentUser":I
    goto :goto_0

    .line 1827
    .restart local v0    # "callingAppId":I
    .restart local v5    # "foregroundUser":I
    .restart local v9    # "valid":Z
    :cond_2
    const/16 v10, 0x403

    if-eq v0, v10, :cond_0

    .line 1828
    :try_start_1
    iget v10, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    if-ne v0, v10, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 1830
    :cond_4
    const-string/jumbo v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1831
    const-string/jumbo v12, " callingUser="

    .line 1830
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1832
    const-string/jumbo v12, " parentUser="

    .line 1830
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1833
    const-string/jumbo v12, " foregroundUser="

    .line 1830
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1835
    .end local v5    # "foregroundUser":I
    :catchall_0
    move-exception v10

    .line 1836
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1835
    throw v10
.end method

.method private clearBleApps()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 645
    return-void
.end method

.method private disableBleScanMode()V
    .locals 3

    .prologue
    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 591
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 588
    :goto_1
    return-void

    .line 592
    :cond_1
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Reseting the mEnable flag for clean disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    .line 597
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 598
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 597
    throw v1
.end method

.method private handleDisable()V
    .locals 3

    .prologue
    .line 1799
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1800
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    .line 1801
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Sending off request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1803
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "IBluetooth.disable() returned false"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1797
    :goto_0
    return-void

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to call disable()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1809
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1808
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1809
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1808
    throw v1
.end method

.method private handleEnable(Z)V
    .locals 6
    .param p1, "quietMode"    # Z

    .prologue
    .line 1750
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 1753
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1754
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-eqz v3, :cond_2

    .line 1765
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1768
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v3, :cond_4

    .line 1769
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1770
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "IBluetooth.enable() returned false"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1749
    return-void

    .line 1756
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1757
    .local v2, "timeoutMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1758
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 1760
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1759
    const/16 v5, 0x41

    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1761
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1782
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    .line 1783
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1782
    throw v3

    .line 1763
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_3
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1774
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1775
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Unable to call enable()"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 342
    const-string/jumbo v3, "airplane_mode_on"

    .line 341
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final isBluetoothPersistedStateOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 350
    const-string/jumbo v3, "bluetooth_on"

    const/4 v4, -0x1

    .line 349
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 351
    .local v0, "state":I
    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bluetooth persisted state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 359
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 360
    const-string/jumbo v2, "bluetooth_on"

    .line 359
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNameAndAddressSet()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadStoredNameAndAddress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 392
    const v1, 0x1120060

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_addr_valid"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const-string/jumbo v0, "BluetoothManagerService"

    const-string/jumbo v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 400
    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method private onBluetoothGattServiceUp()V
    .locals 5

    .prologue
    .line 659
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "BluetoothGatt Service is Up"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 662
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_0

    .line 663
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "onBluetoothServiceUp: mBluetooth is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 664
    return-void

    .line 666
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    .line 667
    .local v1, "st":I
    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 668
    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBluetoothServiceUp: state isn\'t BLE_ON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 669
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 670
    return-void

    .line 672
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableBrEdr:Z

    if-eqz v2, :cond_3

    .line 674
    :cond_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 675
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    :cond_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 658
    .end local v1    # "st":I
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to call onServiceUp"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 680
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 679
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 680
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 679
    throw v2
.end method

.method private persistBluetoothSetting(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 367
    const-string/jumbo v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Persisting Bluetooth Setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 370
    .local v0, "callingIdentity":J
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 371
    const-string/jumbo v3, "bluetooth_on"

    .line 370
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    return-void
.end method

.method private recoverBluetoothServiceFromError(Z)V
    .locals 6
    .param p1, "clearBle"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2053
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "recoverBluetoothServiceFromError"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2056
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_0

    .line 2058
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2066
    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lcom/android/server/BluetoothManagerService;->waitForMonitoredOnOff(ZZ)Z

    .line 2068
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2070
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2071
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 2073
    if-eqz p1, :cond_1

    .line 2074
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 2077
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2079
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 2081
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 2082
    const/16 v3, 0x2a

    .line 2081
    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2083
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2052
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_2
    return-void

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "Unable to unregister"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 2062
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 2063
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2062
    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 201
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 203
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "airplane_mode_radios"

    .line 202
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string/jumbo v4, "airplane_mode_toggleable_radios"

    .line 204
    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 208
    .local v1, "mIsAirplaneSensitive":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 209
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void

    .line 207
    .end local v1    # "mIsAirplaneSensitive":Z
    :cond_1
    const-string/jumbo v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerForBleScanModeChange()V
    .locals 4

    .prologue
    .line 561
    new-instance v0, Lcom/android/server/BluetoothManagerService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    .line 582
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 583
    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 584
    const/4 v3, 0x0

    .line 582
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 560
    return-void
.end method

.method private sendBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 1842
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending BLE State Change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1843
    const-string/jumbo v3, " > "

    .line 1842
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1843
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    .line 1842
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1847
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1848
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1849
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1850
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1841
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .locals 6

    .prologue
    .line 1175
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1176
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1179
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1184
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1185
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1184
    throw v3

    .line 1185
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1173
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .locals 6

    .prologue
    .line 1157
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1158
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1161
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1166
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1167
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1166
    throw v3

    .line 1167
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1155
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .locals 6
    .param p1, "isUp"    # Z

    .prologue
    .line 1138
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1139
    .local v2, "n":I
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1142
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1147
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 1148
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1147
    throw v3

    .line 1148
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1136
    return-void
.end method

.method private sendBrEdrDownCallback()V
    .locals 3

    .prologue
    .line 689
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 692
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Bluetooth handle is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 699
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 688
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Call to onBrEdrDown() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 703
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 702
    throw v1

    .line 708
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothGatt;->unregAll()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 709
    :catch_1
    move-exception v0

    .line 710
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to disconnect all apps."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendDisableMsg(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2029
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/BluetoothManagerService;->addActiveLog(Ljava/lang/String;Z)V

    .line 2027
    return-void
.end method

.method private sendEnableMsg(ZLjava/lang/String;)V
    .locals 5
    .param p1, "quietMode"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2033
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 2034
    if-eqz p1, :cond_0

    move v0, v1

    .line 2033
    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2035
    invoke-direct {p0, p2, v1}, Lcom/android/server/BluetoothManagerService;->addActiveLog(Ljava/lang/String;Z)V

    .line 2032
    return-void

    :cond_0
    move v0, v2

    .line 2034
    goto :goto_0
.end method

.method private startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "intentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 842
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 845
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 844
    const/high16 v6, 0x10000000

    .line 842
    invoke-virtual {v4, p1, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 846
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, p2, :cond_0

    .line 847
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 848
    const-string/jumbo v6, " not in uid "

    .line 847
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 864
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Landroid/os/RemoteException;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 851
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const/high16 v4, 0x10800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 856
    :try_start_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 862
    const/4 v4, 0x1

    return v4

    .line 857
    :catch_1
    move-exception v1

    .line 859
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_3
    const-string/jumbo v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Intent to handle action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 860
    const/4 v4, 0x0

    return v4
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 413
    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stored Bluetooth name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    if-eqz p2, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_address"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 419
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 420
    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 421
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "bluetooth_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 425
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "bluetooth_addr_valid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    :cond_2
    return-void
.end method

.method private unbindAllBluetoothProfileServices()V
    .locals 8

    .prologue
    .line 952
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 953
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 954
    .local v1, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap2(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 952
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "i$iterator":Ljava/util/Iterator;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 957
    .restart local v1    # "i":Ljava/lang/Integer;
    .restart local v2    # "i$iterator":Ljava/util/Iterator;
    .restart local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string/jumbo v4, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 962
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 951
    return-void
.end method

.method private waitForMonitoredOnOff(ZZ)Z
    .locals 10
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/16 v6, 0xf

    .line 1987
    const/4 v1, 0x0

    .line 1988
    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 1989
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v4

    .line 1991
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :goto_1
    monitor-exit v4

    .line 2023
    :cond_0
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "waitForMonitoredOnOff time out"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const/4 v3, 0x0

    return v3

    .line 1992
    :cond_1
    if-eqz p1, :cond_3

    .line 1993
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, v9, :cond_2

    monitor-exit v4

    return v7

    .line 1994
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 1995
    const/16 v3, 0xe

    .line 1996
    const/16 v5, 0xf

    .line 1995
    invoke-direct {p0, v3, v5}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    .line 1997
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .local v2, "ret":Z
    monitor-exit v4

    .line 1998
    return v2

    .line 2000
    .end local v2    # "ret":Z
    :cond_3
    if-eqz p2, :cond_5

    .line 2001
    :try_start_3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-ne v3, v8, :cond_4

    monitor-exit v4

    return v7

    .line 2002
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 2003
    const/16 v3, 0xd

    .line 2004
    const/16 v5, 0xf

    .line 2003
    invoke-direct {p0, v3, v5}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    .line 2005
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .restart local v2    # "ret":Z
    monitor-exit v4

    .line 2006
    return v2

    .line 2009
    .end local v2    # "ret":Z
    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-eq v3, v9, :cond_6

    monitor-exit v4

    return v7

    .line 2011
    :catch_0
    move-exception v0

    .line 2012
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v5, "getState()"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1989
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_6
    monitor-exit v4

    .line 2016
    if-nez p1, :cond_7

    if-eqz p2, :cond_8

    .line 2017
    :cond_7
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2021
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2019
    :cond_8
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2
.end method

.method private waitForOnOff(ZZ)Z
    .locals 6
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 1952
    const/4 v1, 0x0

    .line 1953
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1955
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1956
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1968
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1977
    :cond_0
    :goto_1
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOff time out"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/4 v2, 0x0

    return v2

    .line 1957
    :cond_1
    if-eqz p1, :cond_2

    .line 1958
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, v5, :cond_4

    .line 1968
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1958
    return v4

    .line 1959
    :cond_2
    if-eqz p2, :cond_3

    .line 1960
    :try_start_2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 1968
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1960
    return v4

    .line 1962
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eq v2, v5, :cond_4

    .line 1968
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1962
    return v4

    .line 1968
    :cond_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1970
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 1971
    :cond_5
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1975
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v3, "getState()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1968
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 1967
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 1968
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1967
    throw v2

    .line 1973
    :cond_6
    const-wide/16 v2, 0x1e

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .locals 9
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 909
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-nez v3, :cond_0

    .line 911
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to bind to profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 912
    const-string/jumbo v5, ", while Bluetooth was disabled"

    .line 911
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return v7

    .line 916
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v4

    .line 917
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 918
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_3

    .line 920
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    if-eq p1, v8, :cond_1

    monitor-exit v4

    return v7

    .line 924
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-direct {v2, p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    .line 926
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v4

    return v7

    .line 927
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    monitor-exit v4

    .line 932
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 933
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 934
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 935
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 936
    return v8

    .line 916
    .end local v0    # "addProxyMsg":Landroid/os/Message;
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public disable(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "persist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 781
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 783
    .local v0, "callerSystem":Z
    :goto_0
    if-nez v0, :cond_2

    .line 784
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v5

    if-nez v5, :cond_1

    .line 785
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v5, "disable(): not allowed for non-active and non system user"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return v4

    .end local v0    # "callerSystem":Z
    :cond_0
    move v0, v4

    .line 781
    goto :goto_0

    .line 789
    .restart local v0    # "callerSystem":Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BLUETOOTH_ADMIN"

    .line 790
    const-string/jumbo v7, "Need BLUETOOTH ADMIN permission"

    .line 789
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    if-eqz v5, :cond_2

    .line 794
    const-string/jumbo v5, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    .line 793
    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    .line 792
    if-eqz v5, :cond_2

    .line 795
    return v4

    .line 800
    :cond_2
    const-string/jumbo v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disable(): mBluetooth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 801
    const-string/jumbo v6, " mBinding = "

    .line 800
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 801
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 800
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    .line 805
    if-eqz p2, :cond_3

    .line 806
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 808
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 809
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v4

    .line 835
    return v3

    .line 812
    :cond_3
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 818
    :try_start_4
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 819
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 820
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v5, :cond_4

    .line 821
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_5

    .line 822
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 823
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 831
    :cond_4
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 804
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 812
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit p0

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 825
    :cond_5
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 828
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v5, "BluetoothManagerService"

    const-string/jumbo v6, "Unable to initiate disable"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 831
    :try_start_9
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 830
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v3

    .line 831
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 830
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    .line 1788
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1789
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1790
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1794
    const/4 v1, 0x1

    return v1

    .line 1791
    :cond_0
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to bind to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2091
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "android.permission.DUMP"

    const-string/jumbo v14, "BluetoothManagerService"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/4 v4, 0x0

    .line 2094
    .local v4, "errorMsg":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v12, v0

    if-lez v12, :cond_1

    const/4 v12, 0x0

    aget-object v12, p3, v12

    const-string/jumbo v13, "--proto"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 2096
    .local v10, "protoOut":Z
    :goto_0
    if-nez v10, :cond_4

    .line 2097
    const-string/jumbo v12, "Bluetooth Status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2098
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  enabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v13}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  address: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v12, :cond_0

    .line 2103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/BluetoothManagerService$ActiveLog;

    invoke-virtual {v12}, Lcom/android/server/BluetoothManagerService$ActiveLog;->getTime()J

    move-result-wide v12

    sub-long v8, v14, v12

    .line 2104
    .local v8, "onDuration":J
    const-string/jumbo v12, "%02d:%02d:%02d.%03d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    .line 2105
    const-wide/32 v14, 0x36ee80

    div-long v14, v8, v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 2106
    const-wide/32 v14, 0xea60

    div-long v14, v8, v14

    const-wide/16 v16, 0x3c

    rem-long v14, v14, v16

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    .line 2107
    const-wide/16 v14, 0x3e8

    div-long v14, v8, v14

    const-wide/16 v16, 0x3c

    rem-long v14, v14, v16

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 2108
    const-wide/16 v14, 0x3e8

    rem-long v14, v8, v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v13, v15

    .line 2104
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2109
    .local v7, "onDurationString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  time since enabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    .end local v7    # "onDurationString":Ljava/lang/String;
    .end local v8    # "onDuration":J
    :cond_0
    const-string/jumbo v12, "Enable log:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "log$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BluetoothManagerService$ActiveLog;

    .line 2114
    .local v5, "log":Lcom/android/server/BluetoothManagerService$ActiveLog;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 2094
    .end local v5    # "log":Lcom/android/server/BluetoothManagerService$ActiveLog;
    .end local v6    # "log$iterator":Ljava/util/Iterator;
    .end local v10    # "protoOut":Z
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2117
    .restart local v6    # "log$iterator":Ljava/util/Iterator;
    .restart local v10    # "protoOut":Z
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " BLE Apps registered:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "app$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 2119
    .local v2, "app":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    invoke-virtual {v2}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2122
    .end local v2    # "app":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 2125
    .end local v3    # "app$iterator":Ljava/util/Iterator;
    .end local v6    # "log$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    if-nez v12, :cond_5

    .line 2126
    const-string/jumbo v4, "Bluetooth Service not connected"

    .line 2134
    .end local v4    # "errorMsg":Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_7

    .line 2136
    if-eqz v10, :cond_6

    return-void

    .line 2129
    .restart local v4    # "errorMsg":Ljava/lang/String;
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2130
    :catch_0
    move-exception v11

    .line 2131
    .local v11, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "RemoteException while dumping Bluetooth Service"

    .local v4, "errorMsg":Ljava/lang/String;
    goto :goto_3

    .line 2137
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v11    # "re":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    :cond_7
    return-void
.end method

.method public enable(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 740
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 742
    .local v0, "callerSystem":Z
    :goto_0
    if-nez v0, :cond_2

    .line 743
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_1

    .line 744
    const-string/jumbo v2, "BluetoothManagerService"

    const-string/jumbo v4, "enable(): not allowed for non-active and non system user"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return v3

    .end local v0    # "callerSystem":Z
    :cond_0
    move v0, v3

    .line 740
    goto :goto_0

    .line 748
    .restart local v0    # "callerSystem":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BLUETOOTH_ADMIN"

    .line 749
    const-string/jumbo v6, "Need BLUETOOTH ADMIN permission"

    .line 748
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    if-eqz v4, :cond_2

    .line 753
    const-string/jumbo v4, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 752
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    .line 751
    if-eqz v4, :cond_2

    .line 754
    return v3

    .line 758
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 764
    :cond_4
    :goto_1
    const-string/jumbo v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enable("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "):  mBluetooth ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 765
    const-string/jumbo v5, " mBinding = "

    .line 764
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 765
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 764
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 765
    const-string/jumbo v5, " mState = "

    .line 764
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 766
    iget v5, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v5

    .line 764
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v3

    .line 770
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 771
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 773
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 775
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "enable returning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return v2

    .line 759
    :cond_5
    const-string/jumbo v3, "BluetoothManagerService"

    const-string/jumbo v4, "Set mEnableBrEdr for script enable request"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableBrEdr:Z

    goto :goto_1

    .line 769
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public enableNoAutoConnect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 717
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    .line 718
    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    .line 717
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 722
    const-string/jumbo v3, " mBinding = "

    .line 721
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 722
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 721
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 726
    .local v0, "callingAppId":I
    const/16 v1, 0x403

    if-eq v0, v1, :cond_0

    .line 727
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "no permission to enable Bluetooth quietly"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v2

    .line 731
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    .line 732
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 733
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 735
    return v4

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1190
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 1191
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 1190
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1194
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 1201
    const-string/jumbo v1, "02:00:00:00:00:00"

    return-object v1

    .line 1195
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return-object v4

    .line 1205
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1206
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1210
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1206
    return-object v1

    .line 1210
    :cond_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1216
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    return-object v1

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1210
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1209
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1210
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1209
    throw v1
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1220
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 1221
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 1220
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1224
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1231
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1235
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1231
    return-object v1

    .line 1225
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return-object v4

    .line 1235
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1241
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    return-object v1

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getName(): Unable to retrieve name remotely. Returning cached name"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 1234
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1235
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1234
    throw v1
.end method

.method public getState()I
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 504
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 504
    return v1

    .line 498
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getState(): report OFF for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v3

    .line 508
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 510
    :goto_0
    return v3

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 507
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 508
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 507
    throw v1
.end method

.method public handleOnBootPhase()V
    .locals 3

    .prologue
    .line 971
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Bluetooth boot completed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Auto-enabling Bluetooth."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    const-string/jumbo v2, "system boot"

    invoke-direct {p0, v1, v2}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZLjava/lang/String;)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 976
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Getting adapter name and address"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 978
    .local v0, "getMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleOnSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 986
    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " switched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 985
    return-void
.end method

.method public handleOnUnlockUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 994
    const-string/jumbo v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unlocked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 993
    return-void
.end method

.method public isBleAppPresent()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 651
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBleAppPresent() count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 548
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v2, :cond_2

    .line 552
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 553
    const-string/jumbo v3, "ble_scan_always_enabled"

    .line 552
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 549
    :cond_2
    return v1

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 486
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 490
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 486
    return v1

    .line 480
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return v3

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 492
    :goto_0
    return v3

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "isEnabled()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 489
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 490
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 489
    throw v1
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    const/4 v3, 0x0

    .line 430
    if-nez p1, :cond_0

    .line 431
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Callback is null in registerAdapter"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v3

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 435
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 438
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 455
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 454
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-nez p1, :cond_0

    .line 457
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "registerStateChangeCallback: Callback is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 461
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    return-void
.end method

.method public setBrEdrEnableStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 2049
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableBrEdr:Z

    .line 2048
    return-void
.end method

.method public unbindAndFinish()V
    .locals 4

    .prologue
    .line 870
    const-string/jumbo v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAndFinish(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    const-string/jumbo v3, " mBinding = "

    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    const-string/jumbo v3, " mUnbinding = "

    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 876
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 876
    return-void

    .line 877
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 878
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 879
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 880
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 883
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 887
    :goto_0
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    .line 888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 889
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 890
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 891
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 895
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 897
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 868
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 896
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 897
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 896
    throw v1

    .line 893
    :cond_1
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 942
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v2

    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_0

    monitor-exit v2

    .line 945
    return-void

    .line 947
    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap3(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 941
    return-void

    .line 942
    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "Callback is null in unregisterAdapter"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 447
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 446
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 449
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 450
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    .line 467
    const-string/jumbo v3, "Need BLUETOOTH permission"

    .line 466
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    if-nez p1, :cond_0

    .line 469
    const-string/jumbo v1, "BluetoothManagerService"

    const-string/jumbo v2, "unregisterStateChangeCallback: Callback is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 603
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 604
    .local v4, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v4, :cond_4

    if-eqz p2, :cond_4

    .line 605
    new-instance v1, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v1, p0, p3}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    .line 607
    .local v1, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p1, v1, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Registered for death of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v1    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    .line 620
    .local v0, "appCount":I
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " registered Ble Apps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-nez v0, :cond_3

    .line 623
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v6, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    .line 627
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 628
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_2

    .line 629
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v5

    .line 630
    .local v5, "st":I
    const/16 v6, 0xf

    if-ne v5, v6, :cond_2

    .line 631
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "Move to State Off"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    .end local v5    # "st":I
    :cond_2
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 641
    :cond_3
    :goto_1
    return v0

    .line 608
    .end local v0    # "appCount":I
    .restart local v1    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v3

    .line 609
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BLE app ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") already dead!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 613
    .end local v1    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4
    if-nez p2, :cond_0

    if-eqz v4, :cond_0

    .line 615
    invoke-interface {p1, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 616
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unregistered for death of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 635
    .restart local v0    # "appCount":I
    :catch_1
    move-exception v2

    .line 636
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 637
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    .line 638
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 637
    throw v6
.end method
