.class Lcom/android/server/wifi/WifiController$EcmState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcmState"
.end annotation


# instance fields
.field private mEcmEntryCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private decrementCountAndReturnToAppropriateState()V
    .locals 3

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 794
    .local v0, "exitEcm":Z
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    if-nez v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "mEcmEntryCount is 0; exiting Ecm"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 796
    const/4 v0, 0x1

    .line 801
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 802
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 803
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 804
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    .line 791
    :cond_1
    :goto_1
    return-void

    .line 797
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    if-nez v1, :cond_0

    .line 798
    const/4 v0, 0x1

    goto :goto_0

    .line 806
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;)V

    goto :goto_1

    .line 808
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiSettingsStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 809
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get15(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 811
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 761
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 762
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    .line 759
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 767
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2600e

    if-ne v0, v1, :cond_2

    .line 768
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 770
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    .line 775
    :cond_0
    :goto_0
    return v2

    .line 771
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    goto :goto_0

    .line 776
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x26001

    if-ne v0, v1, :cond_5

    .line 778
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    .line 780
    iget v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$EcmState;->mEcmEntryCount:I

    .line 785
    :cond_3
    :goto_1
    return v2

    .line 781
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 783
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$EcmState;->decrementCountAndReturnToAppropriateState()V

    goto :goto_1

    .line 787
    :cond_5
    return v3
.end method
