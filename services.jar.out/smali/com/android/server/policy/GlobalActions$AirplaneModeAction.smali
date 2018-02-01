.class final Lcom/android/server/policy/GlobalActions$AirplaneModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AirplaneModeAction"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconResId:I

.field private mMessage:Landroid/widget/TextView;

.field private mMessageResId:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    const v0, 0x1080370

    iput v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIconResId:I

    .line 1267
    const v0, 0x104015d

    iput v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mMessageResId:I

    .line 1272
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v3, 0x0

    .line 1283
    const v1, 0x1090065

    invoke-virtual {p4, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mView:Landroid/view/View;

    .line 1286
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIcon:Landroid/widget/ImageView;

    .line 1287
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mMessage:Landroid/widget/TextView;

    .line 1290
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mView:Landroid/view/View;

    const v2, 0x102036a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1291
    .local v0, "statusView":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mMessage:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mMessageResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1297
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->refresh(ZZ)V

    .line 1299
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mView:Landroid/view/View;

    return-object v1
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1277
    iget v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1314
    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1319
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1320
    const-string/jumbo v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1319
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1321
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3, v2}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1322
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1326
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1327
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1318
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 1322
    goto :goto_0

    .line 1329
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->-wrap1(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public refresh(ZZ)V
    .locals 3
    .param p1, "force"    # Z
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1334
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1337
    const-string/jumbo v1, "airplane_mode_on"

    .line 1336
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    .line 1339
    .end local p2    # "enabled":Z
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 1340
    const v0, 0x108036e

    iput v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIconResId:I

    .line 1341
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1333
    :cond_1
    :goto_1
    return-void

    .line 1336
    .restart local p2    # "enabled":Z
    :cond_2
    const/4 p2, 0x0

    .local p2, "enabled":Z
    goto :goto_0

    .line 1343
    .end local p2    # "enabled":Z
    :cond_3
    const v0, 0x1080370

    iput v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIconResId:I

    .line 1344
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    return v0
.end method
