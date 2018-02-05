.class public Lslim/utils/QSUtil;
.super Ljava/lang/Object;
.source "QSUtil.java"


# static fields
.field private static sAvailableTilesFiltered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsCompass(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    const-string/jumbo v3, "sensor"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 147
    .local v0, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 148
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 147
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 148
    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    goto :goto_0
.end method

.method public static deviceSupportsDdsSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 103
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 104
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 104
    :cond_0
    return v1
.end method

.method public static deviceSupportsDoze(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    const v2, 0x104005b

    .line 152
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static deviceSupportsFlashLight(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 125
    const-string/jumbo v7, "camera"

    .line 124
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 127
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "ids":[Ljava/lang/String;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v4, v5, v7

    .line 129
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 130
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 131
    .local v3, "flashAvailable":Ljava/lang/Boolean;
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 132
    .local v6, "lensFacing":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 132
    if-eqz v10, :cond_0

    .line 134
    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v11, :cond_0

    .line 136
    return v11

    .line 128
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "ids":[Ljava/lang/String;
    .end local v6    # "lensFacing":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 142
    :cond_1
    return v8
.end method

.method public static deviceSupportsMobileData(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string/jumbo v1, "connectivity"

    .line 109
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public static deviceSupportsNfc(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 120
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static filterTiles(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-boolean v0, Lslim/utils/QSUtil;->sAvailableTilesFiltered:Z

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lslim/utils/QSUtil;->filterTiles(Landroid/content/Context;Ljava/util/List;)V

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lslim/utils/QSUtil;->sAvailableTilesFiltered:Z

    .line 46
    :cond_0
    return-void
.end method

.method private static filterTiles(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lslim/utils/QSUtil;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v0

    .line 57
    .local v0, "deviceSupportsMobile":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    .local v3, "tileKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 61
    .local v2, "removeTile":Z
    const-string/jumbo v4, "cell"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    :cond_1
    if-eqz v0, :cond_9

    const/4 v2, 0x0

    .line 88
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 61
    :cond_3
    const-string/jumbo v4, "hotspot"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "roaming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "apn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "dds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    invoke-static {p0}, Lslim/utils/QSUtil;->deviceSupportsDdsSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v2, 0x0

    goto :goto_1

    .line 61
    :cond_4
    const-string/jumbo v4, "flashlight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    invoke-static {p0}, Lslim/utils/QSUtil;->deviceSupportsFlashLight(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v2, 0x0

    goto :goto_1

    .line 61
    :cond_5
    const-string/jumbo v4, "bt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 76
    invoke-static {}, Lslim/utils/QSUtil;->deviceSupportsBluetooth()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v2, 0x0

    goto :goto_1

    .line 61
    :cond_6
    const-string/jumbo v4, "nfc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 79
    invoke-static {p0}, Lslim/utils/QSUtil;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v2, 0x0

    goto :goto_1

    .line 61
    :cond_7
    const-string/jumbo v4, "compass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 82
    invoke-static {p0}, Lslim/utils/QSUtil;->deviceSupportsCompass(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v2, 0x0

    goto :goto_1

    .line 61
    :cond_8
    const-string/jumbo v4, "ambient_display"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    invoke-static {p0}, Lslim/utils/QSUtil;->deviceSupportsDoze(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 67
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 70
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 73
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 76
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 79
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 82
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 85
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 53
    .end local v2    # "removeTile":Z
    .end local v3    # "tileKey":Ljava/lang/String;
    :cond_10
    return-void
.end method

.method public static getAvailableTiles(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lslim/utils/QSUtil;->filterTiles(Landroid/content/Context;)V

    .line 42
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    sget-object v0, Lslim/utils/QSConstants;->TILES_AVAILABLE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
