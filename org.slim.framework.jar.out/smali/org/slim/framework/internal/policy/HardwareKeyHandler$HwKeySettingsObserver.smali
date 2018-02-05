.class Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;
.super Landroid/database/ContentObserver;
.source "HardwareKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/framework/internal/policy/HardwareKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwKeySettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;


# direct methods
.method constructor <init>(Lorg/slim/framework/internal/policy/HardwareKeyHandler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/framework/internal/policy/HardwareKeyHandler;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    .line 181
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 180
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 186
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "disable_hw_keys"

    .line 187
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    const-string/jumbo v1, "key_home_action"

    .line 190
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 194
    const-string/jumbo v1, "key_home_long_press_action"

    .line 193
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    const-string/jumbo v1, "key_home_double_tap_action"

    .line 196
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 200
    const-string/jumbo v1, "key_menu_action"

    .line 199
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 203
    const-string/jumbo v1, "key_menu_long_press_action"

    .line 202
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 206
    const-string/jumbo v1, "key_menu_double_tap_action"

    .line 205
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    const-string/jumbo v1, "key_assist_action"

    .line 208
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 212
    const-string/jumbo v1, "key_assist_long_press_action"

    .line 211
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 215
    const-string/jumbo v1, "key_assist_double_tap_action"

    .line 214
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 218
    const-string/jumbo v1, "key_app_switch_action"

    .line 217
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 221
    const-string/jumbo v1, "key_app_switch_long_press_action"

    .line 220
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 224
    const-string/jumbo v1, "key_app_switch_double_tap_action"

    .line 223
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 227
    const-string/jumbo v1, "key_back_action"

    .line 226
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 230
    const-string/jumbo v1, "key_back_long_press_action"

    .line 229
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 233
    const-string/jumbo v1, "key_back_double_tap_action"

    .line 232
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    const-string/jumbo v1, "key_camera_action"

    .line 235
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    const-string/jumbo v1, "key_camera_long_press_action"

    .line 238
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 242
    const-string/jumbo v1, "key_camera_double_tap_action"

    .line 241
    invoke-static {v1}, Lslim/provider/SlimSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 244
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 184
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 248
    return-void
.end method
