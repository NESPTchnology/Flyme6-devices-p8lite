.class public final Lslim/provider/SlimSettings;
.super Ljava/lang/Object;
.source "SlimSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lslim/provider/SlimSettings$1;,
        Lslim/provider/SlimSettings$2;,
        Lslim/provider/SlimSettings$3;,
        Lslim/provider/SlimSettings$DelimitedListValidator;,
        Lslim/provider/SlimSettings$DiscreteValueValidator;,
        Lslim/provider/SlimSettings$Global;,
        Lslim/provider/SlimSettings$InclusiveFloatRangeValidator;,
        Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;,
        Lslim/provider/SlimSettings$NameValueCache;,
        Lslim/provider/SlimSettings$Secure;,
        Lslim/provider/SlimSettings$SlimSettingNotFoundException;,
        Lslim/provider/SlimSettings$System;,
        Lslim/provider/SlimSettings$Validator;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "slimsettings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SlimSettings"

.field private static final sAlwaysTrueValidator:Lslim/provider/SlimSettings$Validator;

.field private static final sBooleanValidator:Lslim/provider/SlimSettings$Validator;

.field private static final sColorValidator:Lslim/provider/SlimSettings$Validator;

.field private static final sNonNegativeIntegerValidator:Lslim/provider/SlimSettings$Validator;

.field private static final sThreewayValidator:Lslim/provider/SlimSettings$Validator;

.field private static final sUriValidator:Lslim/provider/SlimSettings$Validator;


# direct methods
.method static synthetic -get0()Lslim/provider/SlimSettings$Validator;
    .locals 1

    sget-object v0, Lslim/provider/SlimSettings;->sBooleanValidator:Lslim/provider/SlimSettings$Validator;

    return-object v0
.end method

.method static synthetic -get1()Lslim/provider/SlimSettings$Validator;
    .locals 1

    sget-object v0, Lslim/provider/SlimSettings;->sNonNegativeIntegerValidator:Lslim/provider/SlimSettings$Validator;

    return-object v0
.end method

.method static synthetic -get2()Lslim/provider/SlimSettings$Validator;
    .locals 1

    sget-object v0, Lslim/provider/SlimSettings;->sThreewayValidator:Lslim/provider/SlimSettings$Validator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    new-instance v0, Lslim/provider/SlimSettings$DiscreteValueValidator;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lslim/provider/SlimSettings$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 135
    sput-object v0, Lslim/provider/SlimSettings;->sBooleanValidator:Lslim/provider/SlimSettings$Validator;

    .line 139
    new-instance v0, Lslim/provider/SlimSettings$DiscreteValueValidator;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "2"

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lslim/provider/SlimSettings$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 138
    sput-object v0, Lslim/provider/SlimSettings;->sThreewayValidator:Lslim/provider/SlimSettings$Validator;

    .line 141
    new-instance v0, Lslim/provider/SlimSettings$1;

    invoke-direct {v0}, Lslim/provider/SlimSettings$1;-><init>()V

    sput-object v0, Lslim/provider/SlimSettings;->sNonNegativeIntegerValidator:Lslim/provider/SlimSettings$Validator;

    .line 152
    new-instance v0, Lslim/provider/SlimSettings$2;

    invoke-direct {v0}, Lslim/provider/SlimSettings$2;-><init>()V

    sput-object v0, Lslim/provider/SlimSettings;->sUriValidator:Lslim/provider/SlimSettings$Validator;

    .line 165
    new-instance v0, Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 164
    sput-object v0, Lslim/provider/SlimSettings;->sColorValidator:Lslim/provider/SlimSettings$Validator;

    .line 167
    new-instance v0, Lslim/provider/SlimSettings$3;

    invoke-direct {v0}, Lslim/provider/SlimSettings$3;-><init>()V

    sput-object v0, Lslim/provider/SlimSettings;->sAlwaysTrueValidator:Lslim/provider/SlimSettings$Validator;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
