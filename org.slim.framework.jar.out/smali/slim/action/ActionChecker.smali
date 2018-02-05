.class public Lslim/action/ActionChecker;
.super Ljava/lang/Object;
.source "ActionChecker.java"


# static fields
.field private static final mConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lslim/action/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    .line 32
    sget-object v0, Lslim/action/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    const-string/jumbo v1, "navigation_bar_config"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionConfigContainsAction(Lslim/action/ActionConfig;Ljava/lang/String;)Z
    .locals 1
    .param p0, "config"    # Lslim/action/ActionConfig;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Lslim/action/ActionConfig;->getClickAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lslim/action/ActionConfig;->getLongpressAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static containsAction(Landroid/content/Context;Lslim/action/ActionConfig;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lslim/action/ActionConfig;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 43
    invoke-static {p1, p2}, Lslim/action/ActionChecker;->actionConfigContainsAction(Lslim/action/ActionConfig;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return v8

    .line 45
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lslim/action/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 47
    sget-object v5, Lslim/action/ActionChecker;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, -0x2

    .line 46
    invoke-static {v6, v5, v7}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "configsString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    const-string/jumbo v5, "**back**"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    move-object v4, v0

    .line 53
    .local v4, "input":Ljava/lang/String;
    const-string/jumbo v5, "**back**"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, "index":I
    const/4 v1, 0x0

    .line 55
    .local v1, "count":I
    :goto_1
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    const-string/jumbo v5, "**back**"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 60
    :cond_3
    if-gt v1, v8, :cond_4

    .line 61
    return v9

    .line 63
    :cond_4
    return v8

    .line 67
    .end local v0    # "configsString":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v3    # "index":I
    .end local v4    # "input":Ljava/lang/String;
    :cond_5
    return v9
.end method
