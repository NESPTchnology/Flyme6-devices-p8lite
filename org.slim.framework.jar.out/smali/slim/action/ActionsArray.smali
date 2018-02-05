.class public Lslim/action/ActionsArray;
.super Ljava/lang/Object;
.source "ActionsArray.java"


# instance fields
.field private entries:[Ljava/lang/String;

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lslim/action/ActionsArray;-><init>(Landroid/content/Context;ZZLjava/util/ArrayList;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showWake"    # Z

    .prologue
    .line 37
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lslim/action/ActionsArray;-><init>(Landroid/content/Context;ZZLjava/util/ArrayList;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNone"    # Z
    .param p3, "showWake"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lslim/action/ActionsArray;-><init>(Landroid/content/Context;ZZLjava/util/ArrayList;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNone"    # Z
    .param p3, "showWake"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "actionsToExclude":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 47
    const v6, 0x37070002

    .line 46
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "initialValues":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 49
    const v6, 0x37070003

    .line 48
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "initialEntries":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "finalEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "finalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_5

    .line 55
    if-nez p2, :cond_0

    const-string/jumbo v5, "**null**"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 56
    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v5, "**wake_device**"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 55
    if-nez v5, :cond_2

    .line 57
    :cond_1
    if-nez p3, :cond_3

    const-string/jumbo v5, "**doze_pulse**"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_3
    if-eqz p4, :cond_4

    aget-object v5, v4, v2

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    :cond_4
    aget-object v5, v4, v2

    invoke-static {p1, v5}, Lslim/action/ActionsArray;->isSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    aget-object v5, v3, v2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    aget-object v5, v4, v2

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_5
    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lslim/action/ActionsArray;->entries:[Ljava/lang/String;

    .line 68
    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lslim/action/ActionsArray;->values:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private static isSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v0, "**torch**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Lslim/utils/DeviceUtils;->deviceSupportsTorch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    :cond_0
    const-string/jumbo v0, "**ring_vib**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p0}, Lslim/utils/DeviceUtils;->deviceSupportsVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    :cond_1
    const-string/jumbo v0, "**ring_vib_silent**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-static {p0}, Lslim/utils/DeviceUtils;->deviceSupportsVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getEntries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lslim/action/ActionsArray;->entries:[Ljava/lang/String;

    return-object v0
.end method

.method public getEntry(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lslim/action/ActionsArray;->entries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lslim/action/ActionsArray;->values:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lslim/action/ActionsArray;->values:[Ljava/lang/String;

    return-object v0
.end method
