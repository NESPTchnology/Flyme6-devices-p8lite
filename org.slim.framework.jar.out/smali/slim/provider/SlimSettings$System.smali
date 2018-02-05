.class public final Lslim/provider/SlimSettings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "SlimSettings.java"

# interfaces
.implements Lslim/provider/SlimSettingsKeys$System;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lslim/provider/SlimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOZE_BRIGHTNESS_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_FADE_IN_DOUBLETAP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_FADE_IN_PICKUP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_FADE_OUT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_TIMEOUT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_TRIGGER_HAND_WAVE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_TRIGGER_NOTIFICATION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_TRIGGER_PICKUP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_TRIGGER_POCKET_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_TRIGGER_SIGMOTION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_TRIGGER_TILT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final DOZE_WAKEUP_DOUBLETAP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXIMITY_AUTO_SPEAKER_DELAY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final PROXIMITY_AUTO_SPEAKER_INCALL_ONLY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final PROXIMITY_AUTO_SPEAKER_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final PROXIMITY_ON_WAKE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUSBAR_CLOCK_AM_PM_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final STATUSBAR_CLOCK_COLOR_OVERRIDE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final STATUSBAR_CLOCK_DATE_DISPLAY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final STATUSBAR_CLOCK_DATE_POSITION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final STATUSBAR_CLOCK_DATE_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final STATUSBAR_CLOCK_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final STATUS_BAR_CLOCK_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field public static final SYS_PROP_SLIM_SETTING_VERSION:Ljava/lang/String; = "sys.slim_setting_system_version"

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lslim/provider/SlimSettings$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final WAKEUP_WHEN_PLUGGED_UNPLUGGED_VALIDATOR:Lslim/provider/SlimSettings$Validator;

.field private static final sNameValueCache:Lslim/provider/SlimSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 423
    const-string/jumbo v0, "content://slimsettings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 422
    sput-object v0, Lslim/provider/SlimSettings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 425
    new-instance v0, Lslim/provider/SlimSettings$NameValueCache;

    .line 426
    const-string/jumbo v1, "sys.slim_setting_system_version"

    .line 427
    sget-object v2, Lslim/provider/SlimSettings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 428
    const-string/jumbo v3, "GET_system"

    .line 429
    const-string/jumbo v4, "PUT_system"

    .line 425
    invoke-direct {v0, v1, v2, v3, v4}, Lslim/provider/SlimSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lslim/provider/SlimSettings$System;->sNameValueCache:Lslim/provider/SlimSettings$NameValueCache;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 439
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 440
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 796
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->WAKEUP_WHEN_PLUGGED_UNPLUGGED_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 798
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->PROXIMITY_AUTO_SPEAKER_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 801
    invoke-static {}, Lslim/provider/SlimSettings;->-get1()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    .line 800
    sput-object v0, Lslim/provider/SlimSettings$System;->PROXIMITY_AUTO_SPEAKER_DELAY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 804
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    .line 803
    sput-object v0, Lslim/provider/SlimSettings$System;->PROXIMITY_AUTO_SPEAKER_INCALL_ONLY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 806
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->STATUS_BAR_CLOCK_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 808
    invoke-static {}, Lslim/provider/SlimSettings;->-get2()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_AM_PM_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 810
    invoke-static {}, Lslim/provider/SlimSettings;->-get2()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 812
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_COLOR_OVERRIDE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 814
    invoke-static {}, Lslim/provider/SlimSettings;->-get2()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_DATE_DISPLAY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 816
    invoke-static {}, Lslim/provider/SlimSettings;->-get2()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_DATE_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 818
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_DATE_POSITION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 820
    invoke-static {}, Lslim/provider/SlimSettings;->-get1()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_FADE_IN_PICKUP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 823
    invoke-static {}, Lslim/provider/SlimSettings;->-get1()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    .line 822
    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_FADE_IN_DOUBLETAP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 825
    invoke-static {}, Lslim/provider/SlimSettings;->-get1()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_TIMEOUT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 827
    invoke-static {}, Lslim/provider/SlimSettings;->-get1()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_FADE_OUT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 830
    new-instance v0, Lslim/provider/SlimSettings$InclusiveFloatRangeValidator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lslim/provider/SlimSettings$InclusiveFloatRangeValidator;-><init>(FF)V

    .line 829
    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_BRIGHTNESS_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 832
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_WAKEUP_DOUBLETAP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 834
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_PICKUP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 836
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_TILT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 838
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_SIGMOTION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 840
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_NOTIFICATION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 842
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_HAND_WAVE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 844
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_POCKET_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 848
    invoke-static {}, Lslim/provider/SlimSettings;->-get0()Lslim/provider/SlimSettings$Validator;

    move-result-object v0

    sput-object v0, Lslim/provider/SlimSettings$System;->PROXIMITY_ON_WAKE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 855
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lslim/provider/SlimSettings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    .line 864
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lslim/provider/SlimSettings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 878
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 877
    sput-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    .line 880
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "wakeup_when_plugged_unplugged"

    sget-object v2, Lslim/provider/SlimSettings$System;->WAKEUP_WHEN_PLUGGED_UNPLUGGED_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "prox_auto_speaker"

    sget-object v2, Lslim/provider/SlimSettings$System;->PROXIMITY_AUTO_SPEAKER_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "prox_auto_speaker_delay"

    sget-object v2, Lslim/provider/SlimSettings$System;->PROXIMITY_AUTO_SPEAKER_DELAY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "prox_auto_speaker_incall_only"

    .line 884
    sget-object v2, Lslim/provider/SlimSettings$System;->PROXIMITY_AUTO_SPEAKER_INCALL_ONLY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 883
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "status_bar_clock"

    sget-object v2, Lslim/provider/SlimSettings$System;->STATUS_BAR_CLOCK_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "statusbar_clock_am_pm_style"

    sget-object v2, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_AM_PM_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "statusbar_clock_style"

    sget-object v2, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "statusbar_clock_color_override"

    .line 889
    sget-object v2, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_COLOR_OVERRIDE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    .line 888
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "statusbar_clock_date_display"

    sget-object v2, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_DATE_DISPLAY_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "statusbar_clock_date_style"

    sget-object v2, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_DATE_STYLE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "statusbar_clock_date_position"

    sget-object v2, Lslim/provider/SlimSettings$System;->STATUSBAR_CLOCK_DATE_POSITION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_fade_in_pickup"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_FADE_IN_PICKUP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_fade_in_doubletap"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_FADE_IN_DOUBLETAP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_timeout"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_TIMEOUT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_fade_out"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_FADE_OUT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_brightness"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_BRIGHTNESS_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_wakeup_doubletap"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_WAKEUP_DOUBLETAP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_trigger_pickup"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_PICKUP_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_trigger_tilt"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_TILT_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_trigger_sigmotion"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_SIGMOTION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_trigger_notification"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_NOTIFICATION_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_trigger_hand_wave"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_HAND_WAVE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "doze_trigger_pocket"

    sget-object v2, Lslim/provider/SlimSettings$System;->DOZE_TRIGGER_POCKET_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v0, Lslim/provider/SlimSettings$System;->VALIDATORS:Ljava/util/Map;

    const-string/jumbo v1, "proximity_on_wake"

    sget-object v2, Lslim/provider/SlimSettings$System;->PROXIMITY_ON_WAKE_VALIDATOR:Lslim/provider/SlimSettings$Validator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lslim/provider/SlimSettings$SlimSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lslim/provider/SlimSettings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 721
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lslim/provider/SlimSettings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 727
    invoke-static {p0, p1, p3}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":F
    :cond_0
    return p2

    .line 730
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lslim/provider/SlimSettings$SlimSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-static {p0, p1, p2}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 763
    new-instance v2, Lslim/provider/SlimSettings$SlimSettingNotFoundException;

    invoke-direct {v2, p1}, Lslim/provider/SlimSettings$SlimSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lslim/provider/SlimSettings$SlimSettingNotFoundException;

    invoke-direct {v2, p1}, Lslim/provider/SlimSettings$SlimSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lslim/provider/SlimSettings$SlimSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lslim/provider/SlimSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 549
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lslim/provider/SlimSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lslim/provider/SlimSettings$SlimSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {p0, p1, p2}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lslim/provider/SlimSettings$SlimSettingNotFoundException;

    invoke-direct {v2, p1}, Lslim/provider/SlimSettings$SlimSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 554
    invoke-static {p0, p1, p3}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2

    .line 557
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lslim/provider/SlimSettings$SlimSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lslim/provider/SlimSettings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 634
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lslim/provider/SlimSettings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lslim/provider/SlimSettings$SlimSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {p0, p1, p2}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lslim/provider/SlimSettings$SlimSettingNotFoundException;

    invoke-direct {v2, p1}, Lslim/provider/SlimSettings$SlimSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 640
    invoke-static {p0, p1, p4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 647
    .local v2, "value":J
    :goto_0
    return-wide v2

    .line 643
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0

    .line 644
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 446
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 444
    return-void
.end method

.method public static getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 450
    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 455
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 472
    invoke-static {p1}, Landroid/util/SeempLog;->getSeempGetApiIdFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 473
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const-string/jumbo v0, "SlimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 475
    const-string/jumbo v2, " to android.provider.Settings.Secure, returning read-only value."

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {p0, p1, p2}, Lslim/provider/SlimSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    :cond_0
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_1
    const-string/jumbo v0, "SlimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    const-string/jumbo v2, " to android.provider.Settings.Global, returning read-only value."

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {p0, p1, p2}, Lslim/provider/SlimSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 483
    :cond_2
    sget-object v0, Lslim/provider/SlimSettings$System;->sNameValueCache:Lslim/provider/SlimSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lslim/provider/SlimSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 521
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string/jumbo v0, "SlimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    const-string/jumbo v2, " to android.provider.Settings.Secure, returning Secure URI."

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-object v0, Lslim/provider/SlimSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lslim/provider/SlimSettings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    :cond_1
    const-string/jumbo v0, "SlimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 528
    const-string/jumbo v2, " to android.provider.Settings.Global, returning read-only global URI."

    .line 527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object v0, Lslim/provider/SlimSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lslim/provider/SlimSettings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 531
    :cond_2
    sget-object v0, Lslim/provider/SlimSettings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lslim/provider/SlimSettings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 786
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lslim/provider/SlimSettings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .prologue
    .line 792
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lslim/provider/SlimSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 610
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lslim/provider/SlimSettings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 616
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lslim/provider/SlimSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 697
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lslim/provider/SlimSettings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 703
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lslim/provider/SlimSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lslim/provider/SlimSettings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 500
    invoke-static {p1}, Landroid/util/SeempLog;->getSeempPutApiIdFromValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 501
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const-string/jumbo v0, "SlimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    const-string/jumbo v2, " to android.provider.Settings.Secure, value is unchanged."

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v3

    .line 506
    :cond_0
    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lslim/provider/SlimSettings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    :cond_1
    const-string/jumbo v0, "SlimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 508
    const-string/jumbo v2, " to android.provider.Settings.Global, value is unchanged."

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v3

    .line 511
    :cond_2
    sget-object v0, Lslim/provider/SlimSettings$System;->sNameValueCache:Lslim/provider/SlimSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lslim/provider/SlimSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
