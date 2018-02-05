.class public Lslim/utils/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field private static final BUILD_TYPE_PROP:Ljava/lang/String; = "ro.slim.buildtype"

.field public static final BUILD_TYPE_UNOFFICIAL:Ljava/lang/String; = "UNOFFICIAL"

.field private static final SLIM_VERSION_PROP:Ljava/lang/String; = "ro.slim.version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSlimBuildType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "ro.slim.buildtype"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlimVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "ro.slim.version"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
