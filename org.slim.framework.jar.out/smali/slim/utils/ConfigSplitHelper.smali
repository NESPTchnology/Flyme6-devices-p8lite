.class public Lslim/utils/ConfigSplitHelper;
.super Ljava/lang/Object;
.source "ConfigSplitHelper.java"


# static fields
.field private static final SLIM_METADATA_NAME:Ljava/lang/String; = "slim"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .param p3, "entries"    # Ljava/lang/String;
    .param p4, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lslim/action/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/16 v16, 0x0

    .line 37
    .local v16, "counter":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v15, "actionConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lslim/action/ActionConfig;>;"
    const/4 v14, 0x0

    .line 40
    .local v14, "actionConfig":Lslim/action/ActionConfig;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 41
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 44
    .local v4, "slimResources":Landroid/content/res/Resources;
    const-string/jumbo v2, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v17, v2

    .end local v14    # "actionConfig":Lslim/action/ActionConfig;
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v5, v18, v17

    .line 45
    .local v5, "configValue":Ljava/lang/String;
    add-int/lit8 v16, v16, 0x1

    .line 46
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 47
    new-instance v14, Lslim/action/ActionConfig;

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 48
    invoke-static/range {v2 .. v7}, Lslim/utils/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v14

    move-object v7, v5

    .line 47
    invoke-direct/range {v6 .. v13}, Lslim/action/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    .line 52
    if-eqz p4, :cond_4

    .line 53
    invoke-virtual {v14, v5}, Lslim/action/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v16, 0x0

    .line 64
    :cond_1
    :goto_1
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 65
    invoke-virtual {v14, v5}, Lslim/action/ActionConfig;->setDoubleTapAction(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 67
    invoke-static/range {v2 .. v7}, Lslim/utils/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v14, v2}, Lslim/action/ActionConfig;->setDoubleTapActionDescription(Ljava/lang/String;)V

    .line 70
    :cond_2
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 71
    invoke-virtual {v14, v5}, Lslim/action/ActionConfig;->setIcon(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const/16 v16, 0x0

    .line 44
    :cond_3
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {v14, v5}, Lslim/action/ActionConfig;->setLongpressAction(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 60
    invoke-static/range {v2 .. v7}, Lslim/utils/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v14, v2}, Lslim/action/ActionConfig;->setLongpressActionDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .end local v5    # "configValue":Ljava/lang/String;
    :cond_5
    return-object v15
.end method

.method public static setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .param p1, "isShortcut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lslim/action/ActionConfig;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lslim/action/ActionConfig;>;"
    const-string/jumbo v1, ""

    .line 86
    .local v1, "finalConfig":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lslim/action/ActionConfig;

    .line 91
    .local v0, "actionConfig":Lslim/action/ActionConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lslim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-nez p1, :cond_1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lslim/action/ActionConfig;->getLongpressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    const-string/jumbo v4, "|"

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lslim/action/ActionConfig;->getDoubleTapAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96
    const-string/jumbo v4, "|"

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lslim/action/ActionConfig;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 101
    .end local v0    # "actionConfig":Lslim/action/ActionConfig;
    :cond_2
    return-object v1
.end method
