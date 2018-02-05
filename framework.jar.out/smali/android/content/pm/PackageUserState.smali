.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public blockUninstall:Z

.field public ceDataInode:J

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installed:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public resourceDirs:[Ljava/lang/String;

.field public stopped:Z

.field public suspended:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 60
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 61
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 62
    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 63
    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 4
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget-wide v2, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 69
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 70
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 71
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 72
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 73
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 74
    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 75
    iget v1, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 76
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 77
    iget v1, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 78
    iget v1, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 79
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 80
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 82
    iget-object v1, p1, Landroid/content/pm/PackageUserState;->resourceDirs:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 81
    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->resourceDirs:[Ljava/lang/String;

    .line 67
    return-void

    .line 82
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->resourceDirs:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->resourceDirs:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_0

    .line 124
    return v3

    .line 129
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_1
    :pswitch_0
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    return v3

    .line 132
    :pswitch_1
    return v2

    .line 134
    :pswitch_2
    const v0, 0x8000

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 135
    return v2

    .line 138
    :cond_2
    :pswitch_3
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 139
    return v2

    .line 150
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    return v2

    .line 154
    :cond_4
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isInstalled(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_2

    .line 89
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isInstalled(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 106
    :cond_1
    const/high16 v2, 0x100000

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    return v3

    .line 112
    :cond_2
    const/high16 v2, 0x40000

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    .line 113
    iget-boolean v2, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 114
    .local v1, "matchesUnaware":Z
    :goto_0
    const/high16 v2, 0x80000

    and-int/2addr v2, p2

    if-eqz v2, :cond_5

    .line 115
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 116
    :goto_1
    if-nez v1, :cond_6

    :goto_2
    return v0

    .line 113
    .end local v1    # "matchesUnaware":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "matchesUnaware":Z
    goto :goto_0

    .line 112
    .end local v1    # "matchesUnaware":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "matchesUnaware":Z
    goto :goto_0

    .line 114
    :cond_5
    const/4 v0, 0x0

    .local v0, "matchesAware":Z
    goto :goto_1

    .line 116
    .end local v0    # "matchesAware":Z
    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method
