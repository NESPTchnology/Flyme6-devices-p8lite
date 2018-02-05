.class public abstract Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;
.super Landroid/os/Binder;
.source "ISlimStatusBar.java"

# interfaces
.implements Lorg/slim/framework/internal/statusbar/ISlimStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/framework/internal/statusbar/ISlimStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.slim.framework.internal.statusbar.ISlimStatusBar"

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x9

.field static final TRANSACTION_preloadRecentApps:I = 0x8

.field static final TRANSACTION_showCustomIntentAfterKeyguard:I = 0x1

.field static final TRANSACTION_startAssist:I = 0x5

.field static final TRANSACTION_toggleKillApp:I = 0x4

.field static final TRANSACTION_toggleLastApp:I = 0x3

.field static final TRANSACTION_toggleRecentApps:I = 0x7

.field static final TRANSACTION_toggleScreenshot:I = 0x2

.field static final TRANSACTION_toggleSplitScreen:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p0, p0, v0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/slim/framework/internal/statusbar/ISlimStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lorg/slim/framework/internal/statusbar/ISlimStatusBar;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 43
    :sswitch_0
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v3

    .line 48
    :sswitch_1
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 56
    :goto_0
    invoke-virtual {p0, v0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V

    .line 57
    return v3

    .line 54
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->toggleScreenshot()V

    .line 63
    return v3

    .line 67
    :sswitch_3
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->toggleLastApp()V

    .line 69
    return v3

    .line 73
    :sswitch_4
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->toggleKillApp()V

    .line 75
    return v3

    .line 79
    :sswitch_5
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 87
    :goto_1
    invoke-virtual {p0, v1}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 88
    return v3

    .line 85
    :cond_1
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 92
    .end local v1    # "_arg0":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->toggleSplitScreen()V

    .line 94
    return v3

    .line 98
    :sswitch_7
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->toggleRecentApps()V

    .line 100
    return v3

    .line 104
    :sswitch_8
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->preloadRecentApps()V

    .line 106
    return v3

    .line 110
    :sswitch_9
    const-string/jumbo v2, "org.slim.framework.internal.statusbar.ISlimStatusBar"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/slim/framework/internal/statusbar/ISlimStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 112
    return v3

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
