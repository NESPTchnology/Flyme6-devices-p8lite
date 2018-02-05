.class Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$PnoScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanListener"
.end annotation


# instance fields
.field private mLowRssiNetworkRetryDelay:I

.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    .line 439
    const/16 v0, 0x4e20

    .line 438
    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 441
    return-void
.end method

.method public getLowRssiNetworkRetryDelay()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    return v0
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 463
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PnoScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    const-string/jumbo v2, " description: "

    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get2(Lcom/android/server/wifi/WifiConnectivityManager;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    .line 462
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 472
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "Failed to successfully start PNO scan for 5 times"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 491
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PnoScanListener onPeriodChanged: actual scan period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    const-string/jumbo v2, "ms"

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 8
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const v7, 0x13880

    const/4 v3, 0x0

    .line 496
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PnoScanListener: onPnoNetworkFound: results len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 498
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, p1, v2

    .line 499
    .local v0, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/wifi/util/ScanDetailUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mScanDetails:Ljava/util/List;

    const-string/jumbo v5, "PnoScanListener"

    invoke-static {v2, v4, v5}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    .line 504
    .local v1, "wasConnectAttempted":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->clearScanDetails()V

    .line 505
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 507
    if-nez v1, :cond_2

    .line 509
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    if-le v2, v7, :cond_1

    .line 510
    iput v7, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget v3, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    .line 515
    iget v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    .line 495
    :goto_1
    return-void

    .line 517
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->resetLowRssiNetworkRetryDelay()V

    goto :goto_1
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 487
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v1, "PnoScanListener onSuccess"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public resetLowRssiNetworkRetryDelay()V
    .locals 1

    .prologue
    .line 448
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PnoScanListener;->mLowRssiNetworkRetryDelay:I

    .line 447
    return-void
.end method
