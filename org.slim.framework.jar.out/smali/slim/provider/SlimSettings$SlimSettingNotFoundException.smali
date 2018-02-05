.class public Lslim/provider/SlimSettings$SlimSettingNotFoundException;
.super Landroid/util/AndroidException;
.source "SlimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lslim/provider/SlimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlimSettingNotFoundException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method
