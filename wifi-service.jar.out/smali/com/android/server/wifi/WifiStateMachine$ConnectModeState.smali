.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 5469
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5474
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5476
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 5477
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 5480
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 5483
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5484
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    .line 5487
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    .line 5472
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5493
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5494
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 5495
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 5498
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5499
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->setWifiEnabled(Z)V

    .line 5502
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiMetrics;->setWifiState(I)V

    .line 5491
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 49
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 5517
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    sparse-switch v44, :sswitch_data_0

    .line 6446
    const/16 v44, 0x0

    return v44

    .line 5519
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v44

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    .line 5520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5521
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 5522
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_1

    .line 5524
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 5526
    :cond_1
    if-eqz v6, :cond_2

    .line 5528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    if-eqz v44, :cond_2

    .line 5529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v45

    .line 5530
    const/16 v46, 0x0

    .line 5529
    move-object/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->trackBssid(Ljava/lang/String;Z)Z

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5534
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    .line 5535
    const/16 v46, 0x2

    .line 5534
    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 5538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x2402b

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 5541
    const/16 v45, 0x2

    .line 5542
    const/16 v46, 0x1

    .line 5540
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 5543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    .line 5545
    const/16 v46, 0x1

    .line 5543
    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6448
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v44, 0x1

    return v44

    .line 5548
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BaseWifiLogger;

    move-result-object v44

    const/16 v45, 0x2

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/BaseWifiLogger;->captureBugReportData(I)V

    .line 5549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x24007

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 5550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_4

    .line 5551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    .line 5552
    const/16 v46, 0x3

    .line 5551
    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 5556
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 5557
    const/16 v45, 0x3

    .line 5558
    const/16 v46, 0x1

    .line 5556
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 5559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    .line 5560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    .line 5561
    const/16 v47, 0x2

    .line 5559
    invoke-virtual/range {v44 .. v47}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 5564
    :sswitch_2
    const-string/jumbo v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Supplicant SSID temporary disabled:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v46

    .line 5564
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5567
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    .line 5568
    const/16 v46, 0x3

    .line 5566
    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 5570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 5571
    const/16 v45, 0x4

    .line 5572
    const/16 v46, 0x1

    .line 5570
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 5573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLastResortWatchdog;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap11(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    .line 5574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v46

    .line 5575
    const/16 v47, 0x2

    .line 5573
    invoke-virtual/range {v44 .. v47}, Lcom/android/server/wifi/WifiLastResortWatchdog;->noteConnectionFailureAndTriggerIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 5578
    :sswitch_3
    const-string/jumbo v44, "WifiStateMachine"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Supplicant SSID reenable:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v46

    .line 5578
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5584
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap1(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v35

    .line 5587
    .local v35, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v44

    if-nez v44, :cond_6

    .line 5588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v44

    sget-object v45, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_5

    .line 5589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 5591
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Detected an interface down, restart driver"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get22(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2000d

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5602
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-nez v44, :cond_8

    sget-object v44, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_8

    .line 5603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get38(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v44

    sget-object v45, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_8

    .line 5604
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5605
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 5606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 5612
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v44

    if-eqz v44, :cond_3

    sget-object v44, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_3

    .line 5613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/ip/IpManager;->confirmConfiguration()V

    goto/16 :goto_0

    .line 5617
    .end local v35    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_9

    .line 5618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 5621
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 5622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set32(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 5627
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5628
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5627
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v44

    if-nez v44, :cond_a

    .line 5629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v46

    .line 5629
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5631
    const-string/jumbo v46, " sendingUserId="

    .line 5629
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5631
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v46

    .line 5629
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5636
    :cond_a
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 5638
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 5639
    const/16 v46, 0x0

    .line 5638
    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v44

    if-nez v44, :cond_b

    .line 5640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Not authorized to update network  config="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5641
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 5640
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5642
    const-string/jumbo v46, " cnid="

    .line 5640
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5642
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    .line 5640
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5643
    const-string/jumbo v46, " uid="

    .line 5640
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5643
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    .line 5640
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5648
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v28

    .line 5649
    .local v28, "res":I
    if-gez v28, :cond_d

    .line 5650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5679
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x20034

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5652
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 5653
    .local v11, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v11, :cond_c

    if-eqz v9, :cond_c

    .line 5655
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v21

    .line 5656
    .local v21, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v44, v0

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_c

    if-eqz v21, :cond_c

    .line 5657
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v44

    if-nez v44, :cond_c

    .line 5661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 5662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 5663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5664
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 5663
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v24

    .line 5665
    .local v24, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    if-eqz v44, :cond_e

    .line 5666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    .line 5671
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 5675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    sget-object v45, Lcom/android/server/wifi/WifiStateMachine;->WIFI_WORK_SOURCE:Landroid/os/WorkSource;

    const/16 v46, -0x3

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v47

    move-object/from16 v3, v48

    move-object/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_1

    .line 5683
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .end local v24    # "persist":Z
    .end local v28    # "res":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5684
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5683
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v44

    if-nez v44, :cond_f

    .line 5685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v46

    .line 5685
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5687
    const-string/jumbo v46, " sendingUserId="

    .line 5685
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5687
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v46

    .line 5685
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5691
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5693
    .local v19, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 5694
    const/16 v46, 0x0

    .line 5693
    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v19

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    move-result v44

    if-nez v44, :cond_10

    .line 5695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Not authorized to remove network  cnid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5697
    const-string/jumbo v46, " uid="

    .line 5695
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5697
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    .line 5695
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5702
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    move-result v23

    .line 5703
    .local v23, "ok":Z
    if-nez v23, :cond_11

    .line 5704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5706
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    if-eqz v23, :cond_12

    const/16 v44, 0x1

    :goto_2
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_12
    const/16 v44, -0x1

    goto :goto_2

    .line 5710
    .end local v19    # "netId":I
    .end local v23    # "ok":Z
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5711
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5710
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v44

    if-nez v44, :cond_13

    .line 5712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v46

    .line 5712
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5714
    const-string/jumbo v46, " sendingUserId="

    .line 5712
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5714
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v46

    .line 5712
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5719
    :cond_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_14

    const/4 v13, 0x1

    .line 5720
    .local v13, "disableOthers":Z
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5721
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5722
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_15

    .line 5723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "No network with id = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5719
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v19    # "netId":I
    :cond_14
    const/4 v13, 0x0

    .restart local v13    # "disableOthers":Z
    goto :goto_3

    .line 5730
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v19    # "netId":I
    :cond_15
    if-eqz v13, :cond_16

    .line 5732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 5736
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "any"

    move-object/from16 v0, v44

    move/from16 v1, v19

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 5738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5739
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 5738
    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v9, v13, v1}, Lcom/android/server/wifi/WifiConfigManager;->enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v23

    .line 5740
    .restart local v23    # "ok":Z
    if-nez v23, :cond_17

    .line 5741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5749
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    if-eqz v23, :cond_19

    const/16 v44, 0x1

    :goto_5
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5743
    :cond_17
    if-eqz v13, :cond_18

    .line 5744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5746
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    goto :goto_4

    .line 5749
    :cond_19
    const/16 v44, -0x1

    goto :goto_5

    .line 5752
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "disableOthers":Z
    .end local v19    # "netId":I
    .end local v23    # "ok":Z
    :sswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    .line 5753
    .local v38, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v44

    sub-long v44, v38, v44

    const-wide/32 v46, 0x927c0

    cmp-long v44, v44, v46

    if-lez v44, :cond_3

    .line 5754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    .line 5755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v38

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set16(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .line 5759
    .end local v38    # "time":J
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    .line 5760
    const/16 v46, 0x9

    .line 5759
    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    move-result v44

    if-eqz v44, :cond_1a

    .line 5761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25013

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 5763
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25012

    .line 5765
    const/16 v46, 0x0

    .line 5764
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5769
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5770
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    .line 5771
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    .line 5773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x20049

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5778
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->blackListBssid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5781
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->clearBssidBlacklist()V

    goto/16 :goto_0

    .line 5784
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    move-result v23

    .line 5786
    .restart local v23    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "did save config "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5787
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    if-eqz v23, :cond_1c

    const/16 v44, 0x1

    :goto_6
    const v46, 0x2003a

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 5790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get8(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/BackupManagerProxy;->notifyDataChanged()V

    goto/16 :goto_0

    .line 5787
    :cond_1c
    const/16 v44, -0x1

    goto :goto_6

    .line 5793
    .end local v23    # "ok":Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    .line 5794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v46

    .line 5793
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5797
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    .line 5798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->hasCarrierNetworks()Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    .line 5797
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5801
    :sswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 5802
    .local v20, "networkId":I
    const/16 v16, 0x0

    .line 5803
    .local v16, "identitySent":Z
    const/4 v14, -0x1

    .line 5805
    .local v14, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    if-eqz v44, :cond_1d

    .line 5806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1d

    .line 5807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v14

    .line 5811
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    if-eqz v44, :cond_1f

    .line 5812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    .line 5813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v44, v0

    .line 5814
    const/16 v45, 0x3

    .line 5813
    invoke-virtual/range {v44 .. v45}, Ljava/util/BitSet;->get(I)Z

    move-result v44

    if-nez v44, :cond_1e

    .line 5815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v44, v0

    .line 5816
    const/16 v45, 0x2

    .line 5815
    invoke-virtual/range {v44 .. v45}, Ljava/util/BitSet;->get(I)Z

    move-result v44

    .line 5811
    if-eqz v44, :cond_1f

    .line 5817
    :cond_1e
    invoke-static {v14}, Lcom/android/server/wifi/util/TelephonyUtil;->isSimEapMethod(I)Z

    move-result v44

    .line 5811
    if-eqz v44, :cond_1f

    .line 5818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-static {v0, v14}, Lcom/android/server/wifi/util/TelephonyUtil;->getSimIdentity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    .line 5819
    .local v15, "identity":Ljava/lang/String;
    if-eqz v15, :cond_1f

    .line 5820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    .line 5821
    const/16 v16, 0x1

    .line 5824
    .end local v15    # "identity":Ljava/lang/String;
    :cond_1f
    if-nez v16, :cond_3

    .line 5826
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 5827
    .local v34, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    if-eqz v44, :cond_20

    if-eqz v34, :cond_20

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_20

    .line 5829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    .line 5827
    if-eqz v44, :cond_20

    .line 5830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    .line 5831
    const/16 v46, 0x7

    .line 5830
    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 5836
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5837
    const/16 v45, -0x1

    .line 5836
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 5838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 5842
    .end local v14    # "eapMethod":I
    .end local v16    # "identitySent":Z
    .end local v20    # "networkId":I
    .end local v34    # "ssid":Ljava/lang/String;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5843
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 5844
    .local v27, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v27, :cond_23

    .line 5845
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v44, v0

    const/16 v45, 0x4

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_21

    .line 5846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 5847
    :cond_21
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v44, v0

    const/16 v45, 0x5

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_22

    .line 5848
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v44, v0

    const/16 v45, 0x6

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    .line 5849
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 5852
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Invalid sim auth request"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5856
    .end local v27    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    .line 5857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getPrivilegedSavedNetworks()Ljava/util/List;

    move-result-object v46

    .line 5856
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5860
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v46, v0

    .line 5861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v47

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    .line 5860
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v46

    move-object/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5864
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    if-eqz v44, :cond_3

    .line 5865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConnectivityManager;->forceConnectivityScan()V

    goto/16 :goto_0

    .line 5869
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_0

    .line 5873
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->needsUnlockedKeyStore()Z

    move-result v44

    if-eqz v44, :cond_3

    .line 5874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_0

    .line 5881
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5882
    const/16 v44, 0x1

    return v44

    .line 5892
    :sswitch_19
    const/4 v12, 0x0

    .line 5893
    .local v12, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-eq v0, v1, :cond_24

    .line 5897
    const/4 v12, 0x1

    .line 5898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5902
    :cond_24
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 5903
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 5905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5906
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    .line 5906
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5908
    const-string/jumbo v46, " my state "

    .line 5906
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    .line 5906
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5909
    const-string/jumbo v46, " nid="

    .line 5906
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5909
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    .line 5906
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5910
    const-string/jumbo v46, " roam="

    .line 5906
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v46

    .line 5906
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5911
    if-nez v9, :cond_25

    .line 5912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5917
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 5920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5921
    const-string/jumbo v46, " nid="

    .line 5920
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5921
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    .line 5920
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    const/16 v45, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v29

    .line 5923
    .local v29, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v19

    .line 5924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5925
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    .line 5924
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5929
    if-nez v9, :cond_26

    .line 5930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5933
    :cond_26
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move/from16 v0, v19

    move/from16 v1, v44

    if-eq v0, v1, :cond_27

    .line 5934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5935
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    .line 5934
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5935
    const-string/jumbo v46, " but got"

    .line 5934
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 5935
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    .line 5934
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5939
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v44

    if-nez v44, :cond_3

    .line 5941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v44, v0

    .line 5942
    const/16 v45, 0x2

    .line 5941
    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_28

    .line 5943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    .line 5944
    const/16 v46, 0x9

    .line 5943
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5952
    :cond_28
    const/16 v17, -0x1

    .line 5956
    .local v17, "lastConnectUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    .line 5957
    const/16 v46, 0x5

    .line 5956
    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 5958
    if-nez v12, :cond_29

    .line 5960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v44

    .line 5961
    const/16 v45, 0x1

    .line 5960
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    .line 5964
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_2a

    .line 5965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5966
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 5965
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v44

    .line 5964
    if-eqz v44, :cond_2a

    .line 5967
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v17, v0

    .line 5968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v44

    .line 5969
    const/16 v45, 0x4

    .line 5968
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiMetrics;->setConnectionEventRoamType(I)V

    .line 5971
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v17

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v44

    if-eqz v44, :cond_2f

    .line 5972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v44

    .line 5971
    if-eqz v44, :cond_2f

    .line 5973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 5974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 5975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 5976
    if-eqz v9, :cond_2b

    .line 5977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiConfigManager;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v44

    if-eqz v44, :cond_2d

    .line 5994
    :cond_2b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v44

    if-nez v44, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    if-eqz v44, :cond_2e

    .line 5996
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5990
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 5992
    const/16 v45, -0x1

    .line 5990
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    goto :goto_7

    .line 5997
    :cond_2e
    if-eqz v12, :cond_3

    .line 5998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6001
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Failed to connect config: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, " netId: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    .line 6003
    const/16 v46, 0x0

    .line 6002
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 6004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 6005
    const/16 v45, 0x5

    .line 6006
    const/16 v46, 0x1

    .line 6004
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 6012
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v17    # "lastConnectUid":I
    .end local v19    # "netId":I
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Ljava/util/Set;

    move-result-object v26

    .line 6013
    .local v26, "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_30

    .line 6014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v44

    .line 6013
    if-eqz v44, :cond_3

    .line 6016
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x20049

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6021
    .end local v26    # "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Integer;->intValue()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->removeNetworksForUser(I)Ljava/util/Set;

    move-result-object v26

    .line 6022
    .restart local v26    # "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_31

    .line 6023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v44

    .line 6022
    if-eqz v44, :cond_3

    .line 6025
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x20049

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6031
    .end local v26    # "removedNetworkIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6032
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 6031
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v44

    if-nez v44, :cond_32

    .line 6033
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_32

    .line 6034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v46

    .line 6034
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6036
    const-string/jumbo v46, " sendingUserId="

    .line 6034
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6036
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v46

    .line 6034
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    .line 6038
    const/16 v46, 0x9

    .line 6037
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6048
    :cond_32
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 6049
    .restart local v19    # "netId":I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 6050
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 6051
    const/16 v40, 0x0

    .line 6054
    .local v40, "updatedExisting":Z
    if-eqz v9, :cond_35

    .line 6059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 6060
    const/16 v46, 0x1

    .line 6059
    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v44

    if-nez v44, :cond_33

    .line 6061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Not authorized to update network  config="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6062
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 6061
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6063
    const-string/jumbo v46, " cnid="

    .line 6061
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6063
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    .line 6061
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6064
    const-string/jumbo v46, " uid="

    .line 6061
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6064
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    .line 6061
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    .line 6066
    const/16 v46, 0x9

    .line 6065
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6069
    :cond_33
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    .line 6071
    .local v10, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    .line 6072
    .local v30, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v30, :cond_34

    .line 6076
    move-object/from16 v9, v30

    .line 6077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6078
    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    .line 6077
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6078
    const-string/jumbo v46, " configKey="

    .line 6077
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6079
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v30

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 6080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6081
    const/16 v45, 0x0

    .line 6080
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 6083
    const/16 v40, 0x1

    .line 6086
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v29

    .line 6087
    .restart local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v19

    .line 6089
    .end local v10    # "configKey":Ljava/lang/String;
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v30    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 6090
    if-nez v9, :cond_36

    .line 6091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, " "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    .line 6091
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6092
    const-string/jumbo v46, " my state "

    .line 6091
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    .line 6091
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    .line 6095
    const/16 v46, 0x0

    .line 6094
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6098
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "any"

    move-object/from16 v0, v44

    move/from16 v1, v19

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 6100
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    const/16 v45, 0x3f2

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_37

    .line 6101
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v44, v0

    const/16 v45, 0x3e8

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_38

    .line 6108
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "CONNECT_NETWORK"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 6111
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v44

    if-nez v44, :cond_3

    .line 6113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v44, v0

    .line 6114
    const/16 v45, 0x2

    .line 6113
    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_39

    .line 6115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    .line 6116
    const/16 v46, 0x9

    .line 6115
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6120
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v24

    .line 6128
    .restart local v24    # "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 6129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    if-eqz v44, :cond_3a

    .line 6130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    .line 6132
    :cond_3a
    const/4 v12, 0x0

    .line 6133
    .restart local v12    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_3b

    .line 6134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v19

    if-eq v0, v1, :cond_3b

    .line 6138
    const/4 v12, 0x1

    .line 6139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6144
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    .line 6145
    const/16 v46, 0x4

    .line 6144
    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 6146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6147
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 6146
    const/16 v46, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v44

    if-eqz v44, :cond_3e

    .line 6147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v44

    .line 6146
    if-eqz v44, :cond_3e

    .line 6148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set40(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v44

    const v45, 0x25001

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25003

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6154
    if-eqz v12, :cond_3c

    .line 6156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6157
    :cond_3c
    if-eqz v40, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_3d

    .line 6158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v19

    if-ne v0, v1, :cond_3d

    .line 6161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 6167
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6170
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Failed to connect config: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, " netId: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25002

    .line 6172
    const/16 v46, 0x0

    .line 6171
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 6173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    .line 6174
    const/16 v45, 0x5

    .line 6175
    const/16 v46, 0x1

    .line 6173
    invoke-static/range {v44 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 6180
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "didDisconnect":Z
    .end local v19    # "netId":I
    .end local v24    # "persist":Z
    .end local v40    # "updatedExisting":Z
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v45, v0

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 6184
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6185
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 6184
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v44

    if-nez v44, :cond_3f

    .line 6186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v46

    .line 6186
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6188
    const-string/jumbo v46, " sendingUserId="

    .line 6186
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6188
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v46

    .line 6186
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25008

    .line 6190
    const/16 v46, 0x9

    .line 6189
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6194
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6195
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 6196
    .restart local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_40

    .line 6197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    .line 6197
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6199
    const-string/jumbo v46, " my state "

    .line 6197
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    .line 6197
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25008

    .line 6202
    const/16 v46, 0x0

    .line 6201
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6205
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v45

    invoke-direct {v0, v9}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6206
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    .line 6207
    .local v22, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "SAVE_NETWORK id="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6208
    const-string/jumbo v46, " config="

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6208
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6209
    const-string/jumbo v46, " nid="

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6209
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6210
    const-string/jumbo v46, " supstate="

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v46

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6211
    const-string/jumbo v46, " my state "

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v46

    .line 6207
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6214
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const v45, 0x25007

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_46

    const/4 v8, 0x1

    .line 6215
    .local v8, "checkUid":Z
    :goto_8
    if-eqz v8, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 6216
    const/16 v46, 0x0

    .line 6215
    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v44

    if-eqz v44, :cond_47

    .line 6226
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    const/16 v45, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v29

    .line 6227
    .restart local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_49

    .line 6228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v44

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_43

    .line 6229
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v44

    if-eqz v44, :cond_42

    .line 6233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Reconfiguring IP on connection"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6240
    :cond_42
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v44

    if-eqz v44, :cond_43

    .line 6241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Reconfiguring proxy on connection"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v44

    .line 6243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getProxyProperties(I)Landroid/net/ProxyInfo;

    move-result-object v45

    .line 6242
    invoke-virtual/range {v44 .. v45}, Landroid/net/ip/IpManager;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 6246
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25009

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-static {v0, v1, v9}, Lcom/android/server/wifi/WifiStateMachine;->-wrap14(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 6249
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_44

    .line 6250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Success save network nid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6251
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v46

    .line 6250
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6259
    :cond_44
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    const v45, 0x25007

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_48

    const/16 v41, 0x1

    .line 6263
    .local v41, "user":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6264
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 6263
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    move-result v25

    .line 6266
    .local v25, "persistConnect":Z
    if-eqz v41, :cond_45

    .line 6267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 6268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    .line 6271
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    if-eqz v44, :cond_3

    .line 6272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v44

    .line 6273
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v45

    .line 6272
    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->connectToUserSelectNetwork(IZ)V

    goto/16 :goto_0

    .line 6214
    .end local v8    # "checkUid":Z
    .end local v25    # "persistConnect":Z
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v41    # "user":Z
    :cond_46
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 6217
    .restart local v8    # "checkUid":Z
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Not authorized to update network  config="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6218
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 6217
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6219
    const-string/jumbo v46, " cnid="

    .line 6217
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6219
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    .line 6217
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6220
    const-string/jumbo v46, " uid="

    .line 6217
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6220
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    .line 6217
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25008

    .line 6222
    const/16 v46, 0x9

    .line 6221
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6259
    .restart local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_48
    const/16 v41, 0x0

    .restart local v41    # "user":Z
    goto/16 :goto_9

    .line 6276
    .end local v41    # "user":Z
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Failed to save network"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25008

    .line 6279
    const/16 v46, 0x0

    .line 6278
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6284
    .end local v8    # "checkUid":Z
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v22    # "nid":I
    .end local v29    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6285
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v45

    .line 6284
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->isCurrentUserProfile(I)Z

    move-result v44

    if-nez v44, :cond_4a

    .line 6286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Only the current foreground user can modify networks  currentUserId="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigManager;->getCurrentUserId()I

    move-result v46

    .line 6286
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6288
    const-string/jumbo v46, " sendingUserId="

    .line 6286
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6288
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v46

    .line 6286
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25005

    .line 6290
    const/16 v46, 0x9

    .line 6289
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6296
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v37

    .line 6297
    .local v37, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v37, :cond_4b

    .line 6298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 6303
    :goto_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 6305
    .restart local v19    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v45, v0

    .line 6306
    const/16 v46, 0x0

    .line 6305
    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v19

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    move-result v44

    if-nez v44, :cond_4c

    .line 6307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Not authorized to forget network  cnid="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6309
    const-string/jumbo v46, " uid="

    .line 6307
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    .line 6309
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v46, v0

    .line 6307
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25005

    .line 6311
    const/16 v46, 0x9

    .line 6310
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6300
    .end local v19    # "netId":I
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v45

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_a

    .line 6315
    .restart local v19    # "netId":I
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->forgetNetwork(I)Z

    move-result v44

    if-eqz v44, :cond_4d

    .line 6316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25006

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap31(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 6317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    .line 6318
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/net/wifi/WifiConfiguration;

    .line 6317
    const/16 v46, 0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap14(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 6320
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Failed to forget network"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x25005

    .line 6322
    const/16 v46, 0x0

    .line 6321
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6326
    .end local v19    # "netId":I
    .end local v37    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/net/wifi/WpsInfo;

    .line 6328
    .local v42, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_0

    .line 6339
    new-instance v43, Landroid/net/wifi/WpsResult;

    sget-object v44, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v43 .. v44}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 6340
    .local v43, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Invalid setup for WPS"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6343
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    .line 6344
    const/16 v45, -0x1

    .line 6343
    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->setAndEnableLastSelectedConfiguration(I)V

    .line 6345
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v44, v0

    sget-object v45, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_4e

    .line 6346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500b

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move-object/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 6347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6330
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    .line 6333
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    .line 6336
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v43

    .restart local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_b

    .line 6349
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v46, "Failed to start WPS with config "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x2500c

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6356
    .end local v42    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v43    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 6357
    .local v32, "someBssid":Ljava/lang/String;
    if-eqz v32, :cond_4f

    .line 6360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .line 6362
    .local v33, "someConf":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v31

    .line 6364
    .local v31, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v31, :cond_4f

    .line 6365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v44

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiMetrics;->setConnectionScanDetail(Lcom/android/server/wifi/ScanDetail;)V

    .line 6369
    .end local v31    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v33    # "someConf":Landroid/net/wifi/WifiConfiguration;
    :cond_4f
    const/16 v44, 0x0

    return v44

    .line 6371
    .end local v32    # "someBssid":Ljava/lang/String;
    :sswitch_22
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Network connection established"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6372
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 6376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 6377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    move-result-object v44

    .line 6378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    .line 6377
    invoke-virtual/range {v44 .. v46}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    .line 6379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get31(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get42(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6392
    :sswitch_23
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6393
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 6397
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->addPasspointManagementObject(Ljava/lang/String;)I

    move-result v28

    .line 6398
    .restart local v28    # "res":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6401
    .end local v28    # "res":I
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_52

    .line 6402
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 6404
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v44, "MOS"

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 6405
    .local v18, "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v44

    const-string/jumbo v45, "FQDN"

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->modifyPasspointMo(Ljava/lang/String;Ljava/util/List;)I

    move-result v28

    .line 6409
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v18    # "mos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .restart local v28    # "res":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6407
    .end local v28    # "res":I
    :cond_52
    const/16 v28, 0x0

    .restart local v28    # "res":I
    goto :goto_c

    .line 6413
    .end local v28    # "res":I
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    .line 6414
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/os/Bundle;

    const-string/jumbo v46, "BSSID"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v46

    .line 6415
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/os/Bundle;

    const-string/jumbo v48, "FILENAME"

    move-object/from16 v0, v44

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 6413
    move-object/from16 v0, v45

    move-wide/from16 v1, v46

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigManager;->queryPasspointIcon(JLjava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_53

    .line 6416
    const/16 v28, 0x1

    .line 6420
    .restart local v28    # "res":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6418
    .end local v28    # "res":I
    :cond_53
    const/16 v28, 0x0

    .restart local v28    # "res":I
    goto :goto_d

    .line 6423
    .end local v28    # "res":I
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v45

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v28

    .line 6424
    .restart local v28    # "res":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap32(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6430
    .end local v28    # "res":I
    :sswitch_28
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "SUBNET_STATUS_UPDATE_EVENT event"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6431
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v44

    sget-object v45, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_3

    .line 6432
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 6434
    .local v36, "subnetStatus":I
    const/16 v44, 0x2

    move/from16 v0, v36

    move/from16 v1, v44

    if-ne v0, v1, :cond_3

    .line 6435
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const-string/jumbo v45, "Change in IP subnet, announce loss of IP reachability"

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6436
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    const v45, 0x20095

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6441
    .end local v36    # "subnetStatus":I
    :sswitch_29
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v44

    if-eqz v44, :cond_56

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    if-eqz v44, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6442
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->-wrap23(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 5517
    nop

    :sswitch_data_0
    .sparse-switch
        0x13d -> :sswitch_28
        0x20034 -> :sswitch_6
        0x20035 -> :sswitch_7
        0x20036 -> :sswitch_8
        0x20037 -> :sswitch_9
        0x20038 -> :sswitch_c
        0x20039 -> :sswitch_d
        0x2003a -> :sswitch_e
        0x2003b -> :sswitch_f
        0x2003e -> :sswitch_13
        0x20040 -> :sswitch_10
        0x2004a -> :sswitch_15
        0x2004b -> :sswitch_16
        0x20061 -> :sswitch_1a
        0x20062 -> :sswitch_b
        0x20063 -> :sswitch_14
        0x20066 -> :sswitch_24
        0x20067 -> :sswitch_25
        0x20068 -> :sswitch_26
        0x20069 -> :sswitch_27
        0x2008e -> :sswitch_17
        0x2008f -> :sswitch_19
        0x20091 -> :sswitch_18
        0x20092 -> :sswitch_1e
        0x20093 -> :sswitch_21
        0x20095 -> :sswitch_29
        0x20098 -> :sswitch_1b
        0x2300c -> :sswitch_5
        0x24003 -> :sswitch_22
        0x24004 -> :sswitch_23
        0x24006 -> :sswitch_4
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_3
        0x2400f -> :sswitch_11
        0x24010 -> :sswitch_12
        0x2402b -> :sswitch_0
        0x25001 -> :sswitch_1c
        0x25004 -> :sswitch_1f
        0x25007 -> :sswitch_1d
        0x2500a -> :sswitch_20
        0x25011 -> :sswitch_a
    .end sparse-switch

    .line 6328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
