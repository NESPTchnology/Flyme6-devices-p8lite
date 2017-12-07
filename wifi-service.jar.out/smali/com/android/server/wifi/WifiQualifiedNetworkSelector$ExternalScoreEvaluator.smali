.class Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalScoreEvaluator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator$BestCandidateType;
    }
.end annotation


# instance fields
.field private mBestCandidateType:I

.field private final mDbg:Z

.field private mHighScore:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mSavedConfig:Landroid/net/wifi/WifiConfiguration;

.field private mScanResultCandidate:Landroid/net/wifi/ScanResult;


# direct methods
.method constructor <init>(Landroid/util/LocalLog;Z)V
    .locals 1
    .param p1, "localLog"    # Landroid/util/LocalLog;
    .param p2, "dbg"    # Z

    .prologue
    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    .line 984
    const/16 v0, -0x80

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    .line 991
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    .line 992
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mDbg:Z

    .line 990
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1039
    :cond_0
    return-void
.end method


# virtual methods
.method evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "score"    # Ljava/lang/Integer;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1010
    if-eqz p1, :cond_1

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    if-gt v0, v1, :cond_0

    .line 1012
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    if-ne v0, v1, :cond_1

    .line 1014
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    .line 1015
    iput-object p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1016
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 1017
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " become the new externally scored saved network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1019
    const-string/jumbo v1, "candidate"

    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->localLog(Ljava/lang/String;)V

    .line 1007
    :cond_1
    return-void
.end method

.method evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "score"    # Ljava/lang/Integer;
    .param p2, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 997
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    if-le v0, v1, :cond_0

    .line 998
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    .line 999
    iput-object p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 1000
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " become the new untrusted candidate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->localLog(Ljava/lang/String;)V

    .line 996
    :cond_0
    return-void
.end method

.method getBestCandidateType()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mBestCandidateType:I

    return v0
.end method

.method getHighScore()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mHighScore:I

    return v0
.end method

.method getSavedConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mSavedConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getScanResultCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method
