.class Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpstreamNetworkMonitor"
.end annotation


# static fields
.field static final EVENT_ON_AVAILABLE:I = 0x1

.field static final EVENT_ON_CAPABILITIES:I = 0x2

.field static final EVENT_ON_LINKPROPERTIES:I = 0x3

.field static final EVENT_ON_LOST:I = 0x4


# instance fields
.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 1360
    return-void
.end method


# virtual methods
.method lookup(Landroid/net/Network;)Landroid/net/NetworkState;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 1401
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    :cond_0
    return-object v0
.end method

.method processCallback(ILjava/lang/Object;)Landroid/net/NetworkState;
    .locals 15
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1405
    packed-switch p1, :pswitch_data_0

    .line 1484
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    move-object/from16 v4, p2

    .line 1407
    check-cast v4, Landroid/net/Network;

    .line 1411
    .local v4, "network":Landroid/net/Network;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 1413
    new-instance v0, Landroid/net/NetworkState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v12

    .line 1418
    .local v12, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->requestNetworkCapabilities(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1420
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->requestLinkProperties(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .end local v4    # "network":Landroid/net/Network;
    .end local v12    # "cm":Landroid/net/ConnectivityManager;
    :pswitch_1
    move-object/from16 v13, p2

    .line 1439
    check-cast v13, Landroid/net/NetworkState;

    .line 1440
    .local v13, "ns":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1444
    const/4 v0, 0x0

    return-object v0

    .line 1451
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkState;

    .line 1452
    .local v14, "prev":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1453
    new-instance v5, Landroid/net/NetworkState;

    iget-object v7, v14, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v8, v13, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1454
    iget-object v9, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1453
    const/4 v6, 0x0

    .line 1454
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1453
    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .end local v13    # "ns":Landroid/net/NetworkState;
    .end local v14    # "prev":Landroid/net/NetworkState;
    :pswitch_2
    move-object/from16 v13, p2

    .line 1458
    check-cast v13, Landroid/net/NetworkState;

    .line 1459
    .restart local v13    # "ns":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1463
    const/4 v0, 0x0

    return-object v0

    .line 1470
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkState;

    .line 1471
    .restart local v14    # "prev":Landroid/net/NetworkState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1472
    new-instance v5, Landroid/net/NetworkState;

    iget-object v7, v13, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v8, v14, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1473
    iget-object v9, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 1472
    const/4 v6, 0x0

    .line 1473
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1472
    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    iget-object v1, v13, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .end local v13    # "ns":Landroid/net/NetworkState;
    .end local v14    # "prev":Landroid/net/NetworkState;
    :pswitch_3
    move-object/from16 v4, p2

    .line 1477
    check-cast v4, Landroid/net/Network;

    .line 1481
    .restart local v4    # "network":Landroid/net/Network;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    return-object v0

    .line 1405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method start()V
    .locals 3

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->stop()V

    .line 1373
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1374
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1376
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1377
    const/4 v2, 0x0

    .line 1376
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1378
    const/16 v2, 0xd

    .line 1376
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1379
    const/4 v2, 0x2

    .line 1376
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1381
    .local v0, "dunTetheringRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1382
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 1383
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1382
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1370
    return-void
.end method

.method stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1387
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1389
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1394
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mDunTetheringCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1386
    return-void
.end method
