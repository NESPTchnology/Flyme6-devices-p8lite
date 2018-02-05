.class public Lslim/utils/HwKeyHelper;
.super Ljava/lang/Object;
.source "HwKeyHelper.java"


# static fields
.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDoubleTapOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 228
    const-string/jumbo v0, "**null**"

    .line 229
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 230
    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 234
    const-string/jumbo v3, "key_app_switch_double_tap_action"

    .line 235
    const/4 v4, -0x2

    .line 232
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 192
    const-string/jumbo v0, "**null**"

    .line 193
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 194
    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 198
    const-string/jumbo v3, "key_assist_double_tap_action"

    .line 199
    const/4 v4, -0x2

    .line 196
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 156
    const-string/jumbo v0, "**null**"

    .line 157
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 158
    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 162
    const-string/jumbo v3, "key_back_double_tap_action"

    .line 163
    const/4 v4, -0x2

    .line 160
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 264
    const-string/jumbo v0, "**null**"

    .line 265
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 266
    return-object v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 270
    const-string/jumbo v3, "key_camera_double_tap_action"

    .line 271
    const/4 v4, -0x2

    .line 268
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 73
    const v4, 0x10e0064

    .line 72
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 74
    .local v1, "doubleTapOnHome":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 75
    const-string/jumbo v0, "**recents**"

    .line 79
    .local v0, "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    .line 80
    return-object v0

    .line 77
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "**null**"

    .restart local v0    # "defaultValue":Ljava/lang/String;
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 84
    const-string/jumbo v4, "key_home_double_tap_action"

    .line 85
    const/4 v5, -0x2

    .line 82
    invoke-static {v3, v4, v5}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_2

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public static getDoubleTapOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 120
    const-string/jumbo v0, "**null**"

    .line 121
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 122
    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 126
    const-string/jumbo v3, "key_menu_double_tap_action"

    .line 127
    const/4 v4, -0x2

    .line 124
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 216
    const-string/jumbo v0, "**null**"

    .line 217
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 218
    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 222
    const-string/jumbo v3, "key_app_switch_long_press_action"

    .line 223
    const/4 v4, -0x2

    .line 220
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 180
    const-string/jumbo v0, "**voice_search**"

    .line 181
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 182
    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 186
    const-string/jumbo v3, "key_assist_long_press_action"

    .line 187
    const/4 v4, -0x2

    .line 184
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 144
    const-string/jumbo v0, "**null**"

    .line 145
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 146
    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 150
    const-string/jumbo v3, "key_back_long_press_action"

    .line 151
    const/4 v4, -0x2

    .line 148
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 252
    const-string/jumbo v0, "**null**"

    .line 253
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 254
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 258
    const-string/jumbo v3, "key_camera_long_press_action"

    .line 259
    const/4 v4, -0x2

    .line 256
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 52
    const v4, 0x10e0063

    .line 51
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 53
    .local v1, "longPressOnHome":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 54
    const-string/jumbo v0, "**recents**"

    .line 60
    .local v0, "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    .line 61
    return-object v0

    .line 55
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 56
    const-string/jumbo v0, "**search**"

    .restart local v0    # "defaultValue":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "**null**"

    .restart local v0    # "defaultValue":Ljava/lang/String;
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 65
    const-string/jumbo v4, "key_home_long_press_action"

    .line 66
    const/4 v5, -0x2

    .line 63
    invoke-static {v3, v4, v5}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_3

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public static getLongPressOnMenuBehavior(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z
    .param p2, "hasAssistOrNoMenu"    # Z

    .prologue
    .line 104
    if-eqz p2, :cond_0

    .line 105
    const-string/jumbo v0, "**null**"

    .line 109
    .local v0, "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    .line 110
    return-object v0

    .line 107
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "**search**"

    .restart local v0    # "defaultValue":Ljava/lang/String;
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 114
    const-string/jumbo v3, "key_menu_long_press_action"

    .line 115
    const/4 v4, -0x2

    .line 112
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_2

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 204
    const-string/jumbo v0, "**recents**"

    .line 205
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 206
    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 210
    const-string/jumbo v3, "key_app_switch_action"

    .line 211
    const/4 v4, -0x2

    .line 208
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 168
    const-string/jumbo v0, "**search**"

    .line 169
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 170
    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 174
    const-string/jumbo v3, "key_assist_action"

    .line 175
    const/4 v4, -0x2

    .line 172
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 132
    const-string/jumbo v0, "**back**"

    .line 133
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 134
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 138
    const-string/jumbo v3, "key_back_action"

    .line 139
    const/4 v4, -0x2

    .line 136
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 240
    const-string/jumbo v0, "**camera**"

    .line 241
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 242
    return-object v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 246
    const-string/jumbo v3, "key_camera_action"

    .line 247
    const/4 v4, -0x2

    .line 244
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 38
    const-string/jumbo v0, "**home**"

    .line 39
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 40
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 44
    const-string/jumbo v3, "key_home_action"

    .line 45
    const/4 v4, -0x2

    .line 42
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "getDefault"    # Z

    .prologue
    .line 90
    const-string/jumbo v0, "**menu**"

    .line 91
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 92
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 96
    const-string/jumbo v3, "key_menu_action"

    .line 97
    const/4 v4, -0x2

    .line 94
    invoke-static {v2, v3, v4}, Lslim/provider/SlimSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .end local v0    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
