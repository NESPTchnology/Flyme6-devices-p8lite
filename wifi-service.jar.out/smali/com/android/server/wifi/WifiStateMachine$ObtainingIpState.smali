.class Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6929
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 6932
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6933
    const-string/jumbo v1, ""

    .line 6934
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6935
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    .line 6937
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enter ObtainingIpState netId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6938
    const-string/jumbo v5, " "

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6938
    const-string/jumbo v5, " "

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6939
    const-string/jumbo v5, " roam="

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6939
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6940
    const-string/jumbo v5, " static="

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6940
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->isUsingStaticIp(I)Z

    move-result v5

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6941
    const-string/jumbo v5, " watchdog= "

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6941
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v5, v5, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 6937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6946
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiStateMachine;->-set4(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6949
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 6954
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v4, "ObtainingIpAddress"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 6966
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6968
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigManager;->getProxyProperties(I)Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 6969
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6970
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 6973
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->isUsingStaticIp(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6975
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v3

    .line 6977
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getApfCapabilities()Landroid/net/apf/ApfCapabilities;

    move-result-object v4

    .line 6975
    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v2

    .line 6979
    .local v2, "prov":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    .line 6980
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v4, v3, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 6981
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start Dhcp Watchdog "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v5, v5, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6983
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 6984
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 6985
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v5, v5, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 6984
    const v6, 0x2005d

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 6985
    const-wide/32 v6, 0x9c40

    .line 6984
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 6931
    .end local v2    # "prov":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    :goto_0
    return-void

    .line 6987
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v3

    .line 6988
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    .line 6987
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 6989
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    iget-object v3, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v3, :cond_4

    .line 6990
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v4, "Static IP lacks address"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 6991
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x200c9

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 6994
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v3

    .line 6996
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->getApfCapabilities()Landroid/net/apf/ApfCapabilities;

    move-result-object v4

    .line 6994
    invoke-virtual {v3, v4}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    move-result-object v2

    .line 6998
    .restart local v2    # "prov":Landroid/net/ip/IpManager$ProvisioningConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get29(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ip/IpManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7005
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap29(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 7007
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 7044
    return v2

    .line 7010
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7046
    :goto_0
    return v3

    .line 7014
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7015
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 7020
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 7021
    const/4 v1, 0x6

    .line 7020
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 7023
    return v2

    .line 7025
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7026
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 7030
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7031
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 7034
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    if-ne v0, v1, :cond_0

    .line 7035
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObtainingIpAddress: Watchdog Triggered, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7036
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 7035
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 7037
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7038
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 7041
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto :goto_0

    .line 7007
    nop

    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_4
        0x2004d -> :sswitch_3
        0x2005d -> :sswitch_5
        0x2008f -> :sswitch_0
        0x20091 -> :sswitch_0
        0x20092 -> :sswitch_1
        0x24004 -> :sswitch_2
        0x25007 -> :sswitch_1
    .end sparse-switch
.end method
