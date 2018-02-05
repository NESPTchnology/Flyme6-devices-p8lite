.class public Lslim/action/ActionHelper;
.super Ljava/lang/Object;
.source "ActionHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SLIM_FRAMEWORK_METADATA_NAME:Ljava/lang/String; = "slim"

.field private static final SYSTEMUI_METADATA_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEM_METADATA_NAME:Ljava/lang/String; = "android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 250
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v0, Lslim/action/ActionsArray;

    invoke-direct {v0, p0}, Lslim/action/ActionsArray;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "actionsArray":Lslim/action/ActionsArray;
    const/4 v2, -0x1

    .line 253
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lslim/action/ActionsArray;->getEntries()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 254
    invoke-virtual {v0}, Lslim/action/ActionsArray;->getValues()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    invoke-virtual {v0}, Lslim/action/ActionsArray;->getEntries()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    return-object v4

    .line 253
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const-string/jumbo v4, "slim:string/shortcut_action_none"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 258
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v8, -0x1

    .line 90
    .local v8, "resId":I
    const/4 v1, 0x0

    .line 91
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 92
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_0

    .line 93
    const/4 v10, 0x0

    return-object v10

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 104
    .local v9, "resources":Landroid/content/res/Resources;
    const-string/jumbo v10, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 106
    :try_start_0
    const-string/jumbo v10, ".*?hasExtraIcon="

    const-string/jumbo v11, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "extraIconPath":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 114
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 115
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    .end local v5    # "extraIconPath":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    const-string/jumbo v10, "system_shortcut="

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 131
    const-string/jumbo v10, "system_shortcut="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 130
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 132
    const-string/jumbo v11, "drawable"

    const-string/jumbo v12, "slim"

    .line 130
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 133
    if-lez v8, :cond_8

    .line 134
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10

    .line 108
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "extraIconPath":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 110
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 111
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 110
    invoke-direct {v2, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 124
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "extraIconPath":Ljava/lang/String;
    .end local v6    # "f":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v4    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v3

    .line 119
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "slim:drawable/ic_sysbar_null"

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 118
    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 120
    if-lez v8, :cond_2

    .line 121
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 136
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v10, "empty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 147
    :cond_5
    const-string/jumbo v10, "**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 148
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lslim/action/ActionHelper;->getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v8

    .line 150
    if-lez v8, :cond_8

    .line 151
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    return-object v10

    .line 137
    :cond_6
    new-instance v6, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v6    # "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 139
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 141
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 142
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 141
    invoke-direct {v12, v13, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 140
    invoke-static {v12}, Lslim/utils/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 139
    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v10

    .line 144
    :cond_7
    const-string/jumbo v10, "ActionHelper:"

    const-string/jumbo v11, "can\'t access custom icon image"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v10, 0x0

    return-object v10

    .line 154
    .end local v6    # "f":Ljava/io/File;
    :cond_8
    return-object v1
.end method

.method private static getActionSystemIcon(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "clickAction"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v0, -0x1

    .line 160
    .local v0, "resId":I
    const-string/jumbo v1, "**home**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string/jumbo v1, "slim:drawable/ic_sysbar_home"

    .line 161
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 163
    :cond_0
    const-string/jumbo v1, "**back**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    const-string/jumbo v1, "slim:drawable/ic_sysbar_back"

    .line 164
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    const-string/jumbo v1, "**recents**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    const-string/jumbo v1, "slim:drawable/ic_sysbar_recent"

    .line 167
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 169
    :cond_2
    const-string/jumbo v1, "**search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    const-string/jumbo v1, "**assist**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 169
    if-nez v1, :cond_3

    .line 171
    const-string/jumbo v1, "**nowontap**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 169
    if-nez v1, :cond_3

    .line 172
    const-string/jumbo v1, "**voice_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 169
    if-nez v1, :cond_3

    .line 173
    const-string/jumbo v1, "**keyguard_search**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 169
    if-eqz v1, :cond_4

    .line 175
    :cond_3
    const-string/jumbo v1, "slim:drawable/ic_sysbar_search"

    .line 174
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 176
    :cond_4
    const-string/jumbo v1, "**menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    const-string/jumbo v1, "slim:drawable/ic_sysbar_menu_big"

    .line 177
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 179
    :cond_5
    const-string/jumbo v1, "**ime**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    const-string/jumbo v1, "slim:drawable/ic_sysbar_ime_switcher"

    .line 180
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 182
    :cond_6
    const-string/jumbo v1, "**power**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 184
    const-string/jumbo v1, "slim:drawable/ic_sysbar_power"

    .line 183
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 185
    :cond_7
    const-string/jumbo v1, "**power_menu**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    const-string/jumbo v1, "slim:drawable/ic_sysbar_power_menu"

    .line 186
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 188
    :cond_8
    const-string/jumbo v1, "**ring_vib**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 190
    const-string/jumbo v1, "slim:drawable/ic_sysbar_vib"

    .line 189
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 191
    :cond_9
    const-string/jumbo v1, "**ring_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 193
    const-string/jumbo v1, "slim:drawable/ic_sysbar_silent"

    .line 192
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 194
    :cond_a
    const-string/jumbo v1, "**ring_vib_silent**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 196
    const-string/jumbo v1, "slim:drawable/ic_sysbar_ring_vib_silent"

    .line 195
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 197
    :cond_b
    const-string/jumbo v1, "**expanded_desktop**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 199
    const-string/jumbo v1, "slim:drawable/ic_sysbar_expanded_desktop"

    .line 198
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 200
    :cond_c
    const-string/jumbo v1, "**kill**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 202
    const-string/jumbo v1, "slim:drawable/ic_sysbar_killtask"

    .line 201
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 203
    :cond_d
    const-string/jumbo v1, "**lastapp**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 205
    const-string/jumbo v1, "slim:drawable/ic_sysbar_lastapp"

    .line 204
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 206
    :cond_e
    const-string/jumbo v1, "**notifications**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 208
    const-string/jumbo v1, "slim:drawable/ic_sysbar_notifications"

    .line 207
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 209
    :cond_f
    const-string/jumbo v1, "**settings_panel**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 211
    const-string/jumbo v1, "slim:drawable/ic_sysbar_qs"

    .line 210
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 212
    :cond_10
    const-string/jumbo v1, "**screenshot**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 214
    const-string/jumbo v1, "slim:drawable/ic_sysbar_screenshot"

    .line 213
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 215
    :cond_11
    const-string/jumbo v1, "**torch**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 217
    const-string/jumbo v1, "slim:drawable/ic_sysbar_torch"

    .line 216
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 218
    :cond_12
    const-string/jumbo v1, "**camera**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 220
    const-string/jumbo v1, "slim:drawable/ic_sysbar_camera"

    .line 219
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 231
    :cond_13
    const-string/jumbo v1, "slim:drawable/ic_sysbar_null"

    .line 230
    invoke-virtual {p0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public static getNavBarConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lslim/action/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {p0}, Lslim/action/ActionHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v2, v2, v1}, Lslim/utils/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getNavBarConfigWithDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "entries"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lslim/action/ActionConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lslim/action/ActionHelper;->getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, p1, p2, v1}, Lslim/utils/ConfigSplitHelper;->getActionConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getNavBarProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "navigation_bar_config"

    .line 66
    const/4 v3, -0x2

    .line 63
    invoke-static {v1, v2, v3}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "**back**|**null**|**null**|empty|**home**|**nowontap**|**null**|empty|**recents**|**null**|**null**|empty"

    .line 70
    :cond_0
    return-object v0
.end method

.method public static getPowerMenuIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-static {p0, p1, p2}, Lslim/action/ActionHelper;->getActionIconImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 243
    const v2, 0x37060001

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 241
    invoke-static {v0, v1}, Lslim/utils/ImageHelper;->getColoredDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    :cond_0
    return-object v0
.end method

.method public static setNavBarConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lslim/action/ActionConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "actionConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lslim/action/ActionConfig;>;"
    if-eqz p2, :cond_0

    .line 77
    const-string/jumbo v0, "**back**|**null**|**null**|empty|**home**|**nowontap**|**null**|empty|**recents**|**null**|**null**|empty"

    .line 81
    .local v0, "config":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "navigation_bar_config"

    .line 81
    invoke-static {v1, v2, v0}, Lslim/provider/SlimSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    return-void

    .line 79
    .end local v0    # "config":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lslim/utils/ConfigSplitHelper;->setActionConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0
.end method
