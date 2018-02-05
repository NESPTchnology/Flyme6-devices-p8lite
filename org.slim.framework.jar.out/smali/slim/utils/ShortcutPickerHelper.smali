.class public Lslim/utils/ShortcutPickerHelper;
.super Ljava/lang/Object;
.source "ShortcutPickerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lslim/utils/ShortcutPickerHelper$OnPickListener;
    }
.end annotation


# static fields
.field public static final REQUEST_CREATE_SHORTCUT:I = 0x66

.field public static final REQUEST_PICK_APPLICATION:I = 0x65

.field public static final REQUEST_PICK_SHORTCUT:I = 0x64


# instance fields
.field private lastFragmentId:I

.field private mListener:Lslim/utils/ShortcutPickerHelper$OnPickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lslim/utils/ShortcutPickerHelper$OnPickListener;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "listener"    # Lslim/utils/ShortcutPickerHelper$OnPickListener;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    .line 56
    iget-object v0, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lslim/utils/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    iput-object p2, p0, Lslim/utils/ShortcutPickerHelper;->mListener:Lslim/utils/ShortcutPickerHelper$OnPickListener;

    .line 54
    return-void
.end method

.method private completeSetCustomApp(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v0, p0, Lslim/utils/ShortcutPickerHelper;->mListener:Lslim/utils/ShortcutPickerHelper$OnPickListener;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    iget-object v3, p0, Lslim/utils/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v2, v3, p1, v4}, Lslim/utils/AppHelper;->getFriendlyActivityName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 150
    invoke-interface {v0, v1, v2, v3, v4}, Lslim/utils/ShortcutPickerHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 149
    return-void
.end method

.method private completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 13
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 155
    const-string/jumbo v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 157
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "android.intent.extra.shortcut.NAME"

    .line 158
    const-string/jumbo v10, "android.intent.extra.shortcut.NAME"

    .line 157
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v7, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "appUri":Ljava/lang/String;
    const-string/jumbo v9, "com.android.contacts.action.QUICK_CONTACT"

    .line 161
    const-string/jumbo v10, "android.intent.action.VIEW"

    .line 160
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const-string/jumbo v9, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 166
    .local v4, "extra":Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    instance-of v9, v4, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    move-object v2, v4

    .line 167
    check-cast v2, Landroid/graphics/Bitmap;

    .line 170
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v2, :cond_1

    .line 171
    const-string/jumbo v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_1

    instance-of v9, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v9, :cond_1

    .line 174
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v5, v0

    .line 176
    .local v5, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    iget-object v9, p0, Lslim/utils/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 177
    .local v8, "resources":Landroid/content/res/Resources;
    iget-object v9, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 178
    .local v6, "id":I
    invoke-static {v8, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 184
    .end local v5    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v6    # "id":I
    .end local v8    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    iget-object v9, p0, Lslim/utils/ShortcutPickerHelper;->mListener:Lslim/utils/ShortcutPickerHelper$OnPickListener;

    .line 185
    iget-object v10, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    iget-object v11, p0, Lslim/utils/ShortcutPickerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v10, v11, v7}, Lslim/utils/AppHelper;->getFriendlyShortcutName(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    .line 184
    invoke-interface {v9, v1, v10, v2, v12}, Lslim/utils/ShortcutPickerHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 154
    return-void

    .line 179
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static pickShortcut(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 78
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.slim.settings"

    .line 79
    const-string/jumbo v3, "com.slim.settings.activities.ShortcutPickerActivity"

    .line 78
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, "comp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private processShortcut(Landroid/content/Intent;II)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCodeApplication"    # I
    .param p3, "requestCodeShortcut"    # I

    .prologue
    const/4 v6, 0x0

    .line 134
    iget-object v4, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x37040042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "applicationName":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "shortcutName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    invoke-direct {p0, v2, p2}, Lslim/utils/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 132
    .end local v1    # "mainIntent":Landroid/content/Intent;
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-direct {p0, p1, p3}, Lslim/utils/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startFragmentOrActivity(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "pickIntent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 121
    iget v1, p0, Lslim/utils/ShortcutPickerHelper;->lastFragmentId:I

    if-nez v1, :cond_1

    .line 122
    iget-object v1, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lslim/utils/ShortcutPickerHelper;->lastFragmentId:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 125
    .local v0, "cFrag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 61
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 62
    packed-switch p1, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-direct {p0, p3}, Lslim/utils/ShortcutPickerHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-direct {p0, p3}, Lslim/utils/ShortcutPickerHelper;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :pswitch_2
    const/16 v0, 0x65

    const/16 v1, 0x66

    invoke-direct {p0, p3, v0, v1}, Lslim/utils/ShortcutPickerHelper;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pickShortcut(I)V
    .locals 1
    .param p1, "fragmentId"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lslim/utils/ShortcutPickerHelper;->pickShortcut(IZ)V

    .line 85
    return-void
.end method

.method public pickShortcut(IZ)V
    .locals 8
    .param p1, "fragmentId"    # I
    .param p2, "fullAppsOnly"    # Z

    .prologue
    .line 90
    iput p1, p0, Lslim/utils/ShortcutPickerHelper;->lastFragmentId:I

    .line 92
    if-eqz p2, :cond_0

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "pickIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    const/16 v5, 0x65

    invoke-direct {p0, v2, v5}, Lslim/utils/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    .line 89
    .end local v1    # "mainIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 100
    .end local v2    # "pickIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, "shortcutNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    const v6, 0x37040042

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string/jumbo v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, "shortcutIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v5, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    .line 108
    const v6, 0x1080093

    .line 107
    invoke-static {v5, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string/jumbo v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 111
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v2    # "pickIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.INTENT"

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v5, "android.intent.extra.TITLE"

    iget-object v6, p0, Lslim/utils/ShortcutPickerHelper;->mParent:Landroid/app/Activity;

    .line 114
    const v7, 0x37040043

    .line 113
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    const/16 v5, 0x64

    invoke-direct {p0, v2, v5}, Lslim/utils/ShortcutPickerHelper;->startFragmentOrActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method
