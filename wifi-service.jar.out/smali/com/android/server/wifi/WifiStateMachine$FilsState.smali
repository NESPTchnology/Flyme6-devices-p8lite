.class Lcom/android/server/wifi/WifiStateMachine$FilsState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilsState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8027
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8032
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    .line 8034
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getApfCapabilities()Landroid/net/apf/ApfCapabilities;

    move-result-object v2

    .line 8032
    invoke-virtual {v1, v2}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v0

    .line 8036
    .local v0, "prov":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    iput-boolean v3, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRapidCommit:Z

    .line 8037
    iput-boolean v3, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mDiscoverSent:Z

    .line 8038
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 8030
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 8101
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v5, 0x25001

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 8043
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 8044
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 8095
    return v1

    .line 8046
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->handlePreFilsDhcpSetup()V

    .line 8097
    :goto_0
    return v4

    .line 8049
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpManager;->completedPreDhcpAction()V

    .line 8050
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->buildDiscoverWithRapidCommitPacket()V

    .line 8051
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    .line 8052
    const/4 v3, 0x4

    .line 8051
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->startConnectionEvent(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)V

    .line 8053
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 8054
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 8053
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/wifi/WifiConfigManager;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8054
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v0

    .line 8053
    if-eqz v0, :cond_0

    .line 8055
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8056
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set1(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8057
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get83(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set45(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 8058
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_0

    .line 8060
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to connect fills network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " netId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get27(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8061
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 8062
    const/4 v1, 0x5

    .line 8061
    invoke-static {v0, v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 8067
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set13(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8069
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8070
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->-set18(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 8071
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 8072
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get40(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 8073
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get96(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    move-result-object v0

    .line 8074
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    .line 8073
    invoke-virtual {v0, v1, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z

    .line 8075
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap37(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8076
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 8079
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8080
    return v1

    .line 8082
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 8085
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 8088
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 8091
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8092
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$FilsState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 8044
    :sswitch_data_0
    .sparse-switch
        0x13e -> :sswitch_2
        0x2008a -> :sswitch_7
        0x200c8 -> :sswitch_6
        0x200c9 -> :sswitch_8
        0x24003 -> :sswitch_3
        0x24007 -> :sswitch_4
        0x30003 -> :sswitch_0
        0x30004 -> :sswitch_5
        0x30006 -> :sswitch_1
    .end sparse-switch
.end method
