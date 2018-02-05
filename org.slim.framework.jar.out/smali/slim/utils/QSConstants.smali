.class public Lslim/utils/QSConstants;
.super Ljava/lang/Object;
.source "QSConstants.java"


# static fields
.field public static final DYNAMIC_TILE_IME_SELECTOR:Ljava/lang/String; = "ime_selector"

.field public static final DYNAMIC_TILE_NEXT_ALARM:Ljava/lang/String; = "next_alarm"

.field protected static final TILES_AVAILABLE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final TILE_AMBIENT_DISPLAY:Ljava/lang/String; = "ambient_display"

.field public static final TILE_APN:Ljava/lang/String; = "apn"

.field public static final TILE_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"

.field public static final TILE_BLUETOOTH:Ljava/lang/String; = "bt"

.field public static final TILE_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final TILE_CAFFEINE:Ljava/lang/String; = "caffeine"

.field public static final TILE_CAST:Ljava/lang/String; = "cast"

.field public static final TILE_CELLULAR:Ljava/lang/String; = "cell"

.field public static final TILE_COMPASS:Ljava/lang/String; = "compass"

.field public static final TILE_DATA:Ljava/lang/String; = "data"

.field public static final TILE_DDS:Ljava/lang/String; = "dds"

.field public static final TILE_DND:Ljava/lang/String; = "dnd"

.field public static final TILE_FLASHLIGHT:Ljava/lang/String; = "flashlight"

.field public static final TILE_HEADS_UP:Ljava/lang/String; = "heads_up"

.field public static final TILE_HOTSPOT:Ljava/lang/String; = "hotspot"

.field public static final TILE_IME:Ljava/lang/String; = "ime"

.field public static final TILE_INVERSION:Ljava/lang/String; = "inversion"

.field public static final TILE_LOCATION:Ljava/lang/String; = "location"

.field public static final TILE_LOCKSCREEN:Ljava/lang/String; = "lockscreen"

.field public static final TILE_LTE:Ljava/lang/String; = "lte"

.field public static final TILE_MUSIC:Ljava/lang/String; = "music"

.field public static final TILE_NFC:Ljava/lang/String; = "nfc"

.field public static final TILE_NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field public static final TILE_REBOOT:Ljava/lang/String; = "reboot"

.field public static final TILE_ROAMING:Ljava/lang/String; = "roaming"

.field public static final TILE_ROTATION:Ljava/lang/String; = "rotation"

.field public static final TILE_SCREENOFF:Ljava/lang/String; = "screenoff"

.field public static final TILE_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final TILE_SCREEN_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final TILE_SOUND:Ljava/lang/String; = "sound"

.field public static final TILE_SYNC:Ljava/lang/String; = "sync"

.field public static final TILE_USB_TETHER:Ljava/lang/String; = "usb_tether"

.field public static final TILE_VISUALIZER:Ljava/lang/String; = "visualizer"

.field public static final TILE_VOLUME:Ljava/lang/String; = "volume"

.field public static final TILE_WIFI:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    .line 67
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "bt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "cell"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "airplane"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "rotation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "flashlight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "cast"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "inversion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "dnd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "compass"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "lockscreen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "timeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "usb_tether"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "heads_up"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "ambient_display"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "sync"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "battery_saver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "caffeine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "screenoff"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "music"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "ime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
