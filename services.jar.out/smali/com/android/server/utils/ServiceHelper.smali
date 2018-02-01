.class public abstract Lcom/android/server/utils/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# static fields
.field private static final gmsPackage:Ljava/lang/String; = "com.google.android.gms"

.field private static uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/android/server/utils/ServiceHelper;->uid:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGMSInstalled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 32
    sget v3, Lcom/android/server/utils/ServiceHelper;->uid:I

    if-ne v3, v6, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 35
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v3, "com.google.android.gms"

    .line 36
    const/high16 v4, 0x100000

    const/4 v5, 0x0

    .line 35
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v3

    sput v3, Lcom/android/server/utils/ServiceHelper;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget v3, Lcom/android/server/utils/ServiceHelper;->uid:I

    if-le v3, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 37
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x2

    sput v3, Lcom/android/server/utils/ServiceHelper;->uid:I

    goto :goto_0
.end method
