.class public final Lslim/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lslim/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final SLIM_ACTIONS_SERVICE:Ljava/lang/String; = "slim.permission.SLIM_ACTIONS_SERVICE"

.field public static final WRITE_SECURE_SETTINGS:Ljava/lang/String; = "slim.permission.WRITE_SECURE_SETTINGS"

.field public static final WRITE_SETTINGS:Ljava/lang/String; = "slim.permission.WRITE_SETTINGS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
