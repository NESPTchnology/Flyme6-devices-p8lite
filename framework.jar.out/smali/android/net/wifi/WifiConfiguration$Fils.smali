.class public Landroid/net/wifi/WifiConfiguration$Fils;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fils"
.end annotation


# static fields
.field public static final FILS_SHA256:I = 0x0

.field public static final FILS_SHA384:I = 0x1

.field public static final filsKeyStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "FILS_SHA256"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "FILS_SHA384"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiConfiguration$Fils;->filsKeyStrings:[Ljava/lang/String;

    .line 222
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
