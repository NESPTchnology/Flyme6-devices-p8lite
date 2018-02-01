.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$10;,
        Landroid/app/SystemServiceRegistry$11;,
        Landroid/app/SystemServiceRegistry$12;,
        Landroid/app/SystemServiceRegistry$13;,
        Landroid/app/SystemServiceRegistry$14;,
        Landroid/app/SystemServiceRegistry$15;,
        Landroid/app/SystemServiceRegistry$16;,
        Landroid/app/SystemServiceRegistry$17;,
        Landroid/app/SystemServiceRegistry$18;,
        Landroid/app/SystemServiceRegistry$19;,
        Landroid/app/SystemServiceRegistry$1;,
        Landroid/app/SystemServiceRegistry$20;,
        Landroid/app/SystemServiceRegistry$21;,
        Landroid/app/SystemServiceRegistry$22;,
        Landroid/app/SystemServiceRegistry$23;,
        Landroid/app/SystemServiceRegistry$24;,
        Landroid/app/SystemServiceRegistry$25;,
        Landroid/app/SystemServiceRegistry$26;,
        Landroid/app/SystemServiceRegistry$27;,
        Landroid/app/SystemServiceRegistry$28;,
        Landroid/app/SystemServiceRegistry$29;,
        Landroid/app/SystemServiceRegistry$2;,
        Landroid/app/SystemServiceRegistry$30;,
        Landroid/app/SystemServiceRegistry$31;,
        Landroid/app/SystemServiceRegistry$32;,
        Landroid/app/SystemServiceRegistry$33;,
        Landroid/app/SystemServiceRegistry$34;,
        Landroid/app/SystemServiceRegistry$35;,
        Landroid/app/SystemServiceRegistry$36;,
        Landroid/app/SystemServiceRegistry$37;,
        Landroid/app/SystemServiceRegistry$38;,
        Landroid/app/SystemServiceRegistry$39;,
        Landroid/app/SystemServiceRegistry$3;,
        Landroid/app/SystemServiceRegistry$40;,
        Landroid/app/SystemServiceRegistry$41;,
        Landroid/app/SystemServiceRegistry$42;,
        Landroid/app/SystemServiceRegistry$43;,
        Landroid/app/SystemServiceRegistry$44;,
        Landroid/app/SystemServiceRegistry$45;,
        Landroid/app/SystemServiceRegistry$46;,
        Landroid/app/SystemServiceRegistry$47;,
        Landroid/app/SystemServiceRegistry$48;,
        Landroid/app/SystemServiceRegistry$49;,
        Landroid/app/SystemServiceRegistry$4;,
        Landroid/app/SystemServiceRegistry$50;,
        Landroid/app/SystemServiceRegistry$51;,
        Landroid/app/SystemServiceRegistry$52;,
        Landroid/app/SystemServiceRegistry$53;,
        Landroid/app/SystemServiceRegistry$54;,
        Landroid/app/SystemServiceRegistry$55;,
        Landroid/app/SystemServiceRegistry$56;,
        Landroid/app/SystemServiceRegistry$57;,
        Landroid/app/SystemServiceRegistry$58;,
        Landroid/app/SystemServiceRegistry$59;,
        Landroid/app/SystemServiceRegistry$5;,
        Landroid/app/SystemServiceRegistry$60;,
        Landroid/app/SystemServiceRegistry$61;,
        Landroid/app/SystemServiceRegistry$62;,
        Landroid/app/SystemServiceRegistry$63;,
        Landroid/app/SystemServiceRegistry$64;,
        Landroid/app/SystemServiceRegistry$65;,
        Landroid/app/SystemServiceRegistry$66;,
        Landroid/app/SystemServiceRegistry$67;,
        Landroid/app/SystemServiceRegistry$68;,
        Landroid/app/SystemServiceRegistry$69;,
        Landroid/app/SystemServiceRegistry$6;,
        Landroid/app/SystemServiceRegistry$70;,
        Landroid/app/SystemServiceRegistry$71;,
        Landroid/app/SystemServiceRegistry$72;,
        Landroid/app/SystemServiceRegistry$73;,
        Landroid/app/SystemServiceRegistry$74;,
        Landroid/app/SystemServiceRegistry$75;,
        Landroid/app/SystemServiceRegistry$76;,
        Landroid/app/SystemServiceRegistry$7;,
        Landroid/app/SystemServiceRegistry$8;,
        Landroid/app/SystemServiceRegistry$9;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    .line 154
    const-string/jumbo v0, "accessibility"

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 155
    new-instance v2, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    .line 154
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 161
    const-string/jumbo v0, "captioning"

    const-class v1, Landroid/view/accessibility/CaptioningManager;

    .line 162
    new-instance v2, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    .line 161
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 168
    const-string/jumbo v0, "account"

    const-class v1, Landroid/accounts/AccountManager;

    .line 169
    new-instance v2, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    .line 168
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 177
    const-string/jumbo v0, "activity"

    const-class v1, Landroid/app/ActivityManager;

    .line 178
    new-instance v2, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    .line 177
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 184
    const-string/jumbo v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    .line 185
    new-instance v2, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    .line 184
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 193
    const-string/jumbo v0, "audio"

    const-class v1, Landroid/media/AudioManager;

    .line 194
    new-instance v2, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    .line 193
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 200
    const-string/jumbo v0, "media_router"

    const-class v1, Landroid/media/MediaRouter;

    .line 201
    new-instance v2, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    .line 200
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 207
    const-string/jumbo v0, "bluetooth"

    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 208
    new-instance v2, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    .line 207
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 214
    const-string/jumbo v0, "hdmi_control"

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    .line 215
    new-instance v2, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    .line 214
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 222
    const-string/jumbo v0, "clipboard"

    const-class v1, Landroid/content/ClipboardManager;

    .line 223
    new-instance v2, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    .line 222
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 233
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    const-class v1, Landroid/text/ClipboardManager;

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v0, "connectivity"

    const-class v1, Landroid/net/ConnectivityManager;

    .line 236
    new-instance v2, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    .line 235
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 244
    const-string/jumbo v0, "country_detector"

    const-class v1, Landroid/location/CountryDetector;

    .line 245
    new-instance v2, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    .line 244
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 252
    const-string/jumbo v0, "device_policy"

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 253
    new-instance v2, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    .line 252
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 259
    const-string/jumbo v0, "download"

    const-class v1, Landroid/app/DownloadManager;

    .line 260
    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    .line 259
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 266
    const-string/jumbo v0, "batterymanager"

    const-class v1, Landroid/os/BatteryManager;

    .line 267
    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    .line 266
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 273
    const-string/jumbo v0, "nfc"

    const-class v1, Landroid/nfc/NfcManager;

    .line 274
    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    .line 273
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 280
    const-string/jumbo v0, "dropbox"

    const-class v1, Landroid/os/DropBoxManager;

    .line 281
    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    .line 280
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 296
    const-string/jumbo v0, "input"

    const-class v1, Landroid/hardware/input/InputManager;

    .line 297
    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    .line 296
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 303
    const-string/jumbo v0, "display"

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 304
    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    .line 303
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 310
    const-string/jumbo v0, "input_method"

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 311
    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    .line 310
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 317
    const-string/jumbo v0, "textservices"

    const-class v1, Landroid/view/textservice/TextServicesManager;

    .line 318
    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    .line 317
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 324
    const-string/jumbo v0, "keyguard"

    const-class v1, Landroid/app/KeyguardManager;

    .line 325
    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    .line 324
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 331
    const-string/jumbo v0, "layout_inflater"

    const-class v1, Landroid/view/LayoutInflater;

    .line 332
    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    .line 331
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 338
    const-string/jumbo v0, "location"

    const-class v1, Landroid/location/LocationManager;

    .line 339
    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    .line 338
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 346
    const-string/jumbo v0, "netpolicy"

    const-class v1, Landroid/net/NetworkPolicyManager;

    .line 347
    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    .line 346
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 354
    const-string/jumbo v0, "notification"

    const-class v1, Landroid/app/NotificationManager;

    .line 355
    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    .line 354
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 370
    const-string/jumbo v0, "servicediscovery"

    const-class v1, Landroid/net/nsd/NsdManager;

    .line 371
    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    .line 370
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 379
    const-string/jumbo v0, "power"

    const-class v1, Landroid/os/PowerManager;

    .line 380
    new-instance v2, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    .line 379
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 392
    const-string/jumbo v0, "recovery"

    const-class v1, Landroid/os/RecoverySystem;

    .line 393
    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    .line 392
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 404
    const-string/jumbo v0, "search"

    const-class v1, Landroid/app/SearchManager;

    .line 405
    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    .line 404
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 412
    const-string/jumbo v0, "sensor"

    const-class v1, Landroid/hardware/SensorManager;

    .line 413
    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    .line 412
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 420
    const-string/jumbo v0, "statusbar"

    const-class v1, Landroid/app/StatusBarManager;

    .line 421
    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    .line 420
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 427
    const-string/jumbo v0, "storage"

    const-class v1, Landroid/os/storage/StorageManager;

    .line 428
    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    .line 427
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 434
    const-string/jumbo v0, "phone"

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 435
    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    .line 434
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 441
    const-string/jumbo v0, "telephony_subscription_service"

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 442
    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    .line 441
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 448
    const-string/jumbo v0, "carrier_config"

    const-class v1, Landroid/telephony/CarrierConfigManager;

    .line 449
    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    .line 448
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 455
    const-string/jumbo v0, "telecom"

    const-class v1, Landroid/telecom/TelecomManager;

    .line 456
    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    .line 455
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 462
    const-string/jumbo v0, "uimode"

    const-class v1, Landroid/app/UiModeManager;

    .line 463
    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    .line 462
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 469
    const-string/jumbo v0, "usb"

    const-class v1, Landroid/hardware/usb/UsbManager;

    .line 470
    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    .line 469
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 477
    const-string/jumbo v0, "serial"

    const-class v1, Landroid/hardware/SerialManager;

    .line 478
    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    .line 477
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 485
    const-string/jumbo v0, "vibrator"

    const-class v1, Landroid/os/Vibrator;

    .line 486
    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    .line 485
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 492
    const-string/jumbo v0, "wallpaper"

    const-class v1, Landroid/app/WallpaperManager;

    .line 493
    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    .line 492
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 500
    const-string/jumbo v0, "wifi"

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 501
    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    .line 500
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 510
    const-string/jumbo v0, "wifip2p"

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 511
    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    .line 510
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 519
    const-string/jumbo v0, "wifinan"

    const-class v1, Landroid/net/wifi/nan/WifiNanManager;

    .line 520
    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    .line 519
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 531
    const-string/jumbo v0, "wifiscanner"

    const-class v1, Landroid/net/wifi/WifiScanner;

    .line 532
    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    .line 531
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 541
    const-string/jumbo v0, "rttmanager"

    const-class v1, Landroid/net/wifi/RttManager;

    .line 542
    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    .line 541
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 551
    const-string/jumbo v0, "ethernet"

    const-class v1, Landroid/net/EthernetManager;

    .line 552
    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    .line 551
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 560
    const-string/jumbo v0, "window"

    const-class v1, Landroid/view/WindowManager;

    .line 561
    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    .line 560
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 567
    const-string/jumbo v0, "user"

    const-class v1, Landroid/os/UserManager;

    .line 568
    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    .line 567
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 576
    const-string/jumbo v0, "appops"

    const-class v1, Landroid/app/AppOpsManager;

    .line 577
    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    .line 576
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 585
    const-string/jumbo v0, "camera"

    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 586
    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    .line 585
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 592
    const-string/jumbo v0, "launcherapps"

    const-class v1, Landroid/content/pm/LauncherApps;

    .line 593
    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    .line 592
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 599
    const-string/jumbo v0, "restrictions"

    const-class v1, Landroid/content/RestrictionsManager;

    .line 600
    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    .line 599
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 608
    const-string/jumbo v0, "print"

    const-class v1, Landroid/print/PrintManager;

    .line 609
    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    .line 608
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 618
    const-string/jumbo v0, "consumer_ir"

    const-class v1, Landroid/hardware/ConsumerIrManager;

    .line 619
    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    .line 618
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 625
    const-string/jumbo v0, "media_session"

    const-class v1, Landroid/media/session/MediaSessionManager;

    .line 626
    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    .line 625
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 632
    const-string/jumbo v0, "trust"

    const-class v1, Landroid/app/trust/TrustManager;

    .line 633
    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    .line 632
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 640
    const-string/jumbo v0, "fingerprint"

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 641
    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    .line 640
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 649
    const-string/jumbo v0, "theme"

    const-class v1, Landroid/app/ThemeManager;

    .line 650
    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    .line 649
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 658
    const-string/jumbo v0, "pocket"

    const-class v1, Landroid/pocket/PocketManager;

    .line 659
    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    .line 658
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 667
    const-string/jumbo v0, "tv_input"

    const-class v1, Landroid/media/tv/TvInputManager;

    .line 668
    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    .line 667
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 676
    const-string/jumbo v0, "network_score"

    const-class v1, Landroid/net/NetworkScoreManager;

    .line 677
    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    .line 676
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 683
    const-string/jumbo v0, "usagestats"

    const-class v1, Landroid/app/usage/UsageStatsManager;

    .line 684
    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    .line 683
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 692
    const-string/jumbo v0, "netstats"

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    .line 693
    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    .line 692
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 699
    const-string/jumbo v0, "jobscheduler"

    const-class v1, Landroid/app/job/JobScheduler;

    .line 700
    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    .line 699
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 707
    const-string/jumbo v0, "persistent_data_block"

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 708
    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    .line 707
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 722
    const-string/jumbo v0, "media_projection"

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    .line 723
    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    .line 722
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 729
    const-string/jumbo v0, "appwidget"

    const-class v1, Landroid/appwidget/AppWidgetManager;

    .line 730
    new-instance v2, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    .line 729
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 737
    const-string/jumbo v0, "midi"

    const-class v1, Landroid/media/midi/MidiManager;

    .line 738
    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    .line 737
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 748
    const-string/jumbo v0, "radio"

    const-class v1, Landroid/hardware/radio/RadioManager;

    .line 749
    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    .line 748
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 755
    const-string/jumbo v0, "hardware_properties"

    const-class v1, Landroid/os/HardwarePropertiesManager;

    .line 756
    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    .line 755
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 769
    const-string/jumbo v0, "soundtrigger"

    const-class v1, Landroid/media/soundtrigger/SoundTriggerManager;

    .line 770
    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    .line 769
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 777
    const-string/jumbo v0, "shortcut"

    const-class v1, Landroid/content/pm/ShortcutManager;

    .line 778
    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    .line 777
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 784
    const-string/jumbo v0, "systemhealth"

    const-class v1, Landroid/os/health/SystemHealthManager;

    .line 785
    new-instance v2, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    .line 784
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 791
    const-string/jumbo v0, "contexthub"

    const-class v1, Landroid/hardware/location/ContextHubManager;

    .line 792
    new-instance v2, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    .line 791
    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 139
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 804
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 811
    sget-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 812
    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 819
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    return-void
.end method
