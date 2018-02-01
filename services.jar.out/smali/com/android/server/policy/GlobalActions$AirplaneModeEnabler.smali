.class Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeEnabler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$1;,
        Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$2;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3


# instance fields
.field private mAirplaneModeHandler:Landroid/os/Handler;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mLastEnabled:Z

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mLastEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;ZZ)V
    .locals 0
    .param p1, "force"    # Z
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->onAirplaneModeChanged(ZZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;Z)V
    .locals 0
    .param p1, "enabling"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mLastEnabled:Z

    .line 1562
    new-instance v0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$1;-><init>(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mAirplaneModeHandler:Landroid/os/Handler;

    .line 1573
    new-instance v0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler$2;-><init>(Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1581
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 1582
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mAirplaneModeHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 1583
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 1580
    return-void
.end method

.method private onAirplaneModeChanged(ZZ)V
    .locals 1
    .param p1, "force"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$AirplaneModeAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get1(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$AirplaneModeAction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalActions$AirplaneModeAction;->refresh(ZZ)V

    .line 1598
    :cond_0
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .param p1, "enabling"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1606
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1607
    const-string/jumbo v4, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1606
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1610
    invoke-direct {p0, v2, p1}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->onAirplaneModeChanged(ZZ)V

    .line 1613
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1614
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1615
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1616
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1604
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v2

    .line 1607
    goto :goto_0
.end method


# virtual methods
.method public setAirplaneModeInECM(ZZ)V
    .locals 1
    .param p1, "isECMExit"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 1620
    if-eqz p1, :cond_0

    .line 1622
    invoke-direct {p0, p2}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 1619
    :goto_0
    return-void

    .line 1625
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->onAirplaneModeChanged(ZZ)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "registerListeners"    # Z

    .prologue
    .line 1587
    if-eqz p1, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 1589
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1590
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1591
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1590
    const/4 v3, 0x1

    .line 1589
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1586
    :goto_0
    return-void

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 1594
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
