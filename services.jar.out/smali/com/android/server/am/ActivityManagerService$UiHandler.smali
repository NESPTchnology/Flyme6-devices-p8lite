.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1635
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1634
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1640
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1642
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto :goto_0

    .line 1646
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto :goto_0

    .line 1650
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    .line 1651
    .local v6, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1652
    const-string/jumbo v13, "app"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1653
    .local v8, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v8, :cond_1

    .line 1654
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "App not found when showing strict mode dialog."

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 1651
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .line 1657
    :cond_1
    :try_start_1
    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v13, :cond_2

    .line 1658
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "App already has strict mode dialog: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    .line 1651
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1659
    return-void

    .line 1661
    :cond_2
    :try_start_2
    const-string/jumbo v13, "result"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/AppErrorResult;

    .line 1662
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1670
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v14

    .line 1651
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1662
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v13, :cond_3

    .line 1663
    new-instance v5, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1663
    invoke-direct {v5, v13, v15, v9, v8}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1665
    .local v5, "d":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1666
    iput-object v5, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1651
    .end local v5    # "d":Landroid/app/Dialog;
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_0
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1676
    .end local v6    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_3
    new-instance v5, Lcom/android/server/am/FactoryErrorDialog;

    .line 1677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "msg"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1676
    invoke-direct {v5, v13, v14}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1678
    .restart local v5    # "d":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1682
    .end local v5    # "d":Landroid/app/Dialog;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1683
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1684
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_6

    .line 1685
    iget-boolean v13, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v13, :cond_5

    .line 1686
    new-instance v5, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 1687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1688
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1686
    invoke-direct {v5, v13, v15, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1689
    .restart local v5    # "d":Landroid/app/Dialog;
    iput-object v5, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1690
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1691
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v5    # "d":Landroid/app/Dialog;
    :cond_5
    :goto_2
    monitor-exit v14

    .line 1682
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 1694
    :cond_6
    :try_start_5
    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v13, :cond_5

    .line 1695
    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->dismiss()V

    .line 1696
    const/4 v13, 0x0

    iput-object v13, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1682
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1702
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1703
    new-instance v4, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v13}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1704
    .local v4, "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7da

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 1705
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x1040163

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x10405eb

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104000a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1709
    const/16 v14, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1708
    const/4 v15, -0x1

    invoke-virtual {v4, v15, v13, v14}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1710
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1714
    .end local v4    # "d":Landroid/app/AlertDialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1715
    const-string/jumbo v13, "ro.build.fingerprint"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1716
    .local v3, "buildfingerprint":Ljava/lang/String;
    const-string/jumbo v13, "/"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1717
    .local v10, "splitfingerprint":[Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v12, v10, v13

    .line 1718
    .local v12, "vendorid":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v13}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1719
    .restart local v4    # "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7da

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 1720
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x1040163

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const v15, 0x10400a4

    invoke-virtual {v13, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v14, 0x104000a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1724
    const/16 v14, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1723
    const/4 v15, -0x1

    invoke-virtual {v4, v15, v13, v14}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1725
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1729
    .end local v3    # "buildfingerprint":Ljava/lang/String;
    .end local v4    # "d":Landroid/app/AlertDialog;
    .end local v10    # "splitfingerprint":[Ljava/lang/String;
    .end local v12    # "vendorid":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1730
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1731
    .local v2, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v13, :cond_8

    .line 1732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v13, v13, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1733
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1732
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v13

    if-eqz v13, :cond_7

    monitor-exit v14

    .line 1729
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1734
    return-void

    .line 1736
    :cond_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v13}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1737
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1739
    :cond_8
    if-eqz v2, :cond_9

    :cond_9
    monitor-exit v14

    .line 1729
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_2
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1757
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1758
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1759
    .restart local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    if-eqz v13, :cond_a

    .line 1760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v13}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 1761
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 1763
    :cond_a
    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    .line 1764
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1763
    invoke-virtual {v13, v15}, Lcom/android/server/am/CompatModePackages;->getPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v15, Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    .line 1765
    invoke-direct/range {v15 .. v18}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v15, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 1767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v13}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_b
    monitor-exit v14

    .line 1757
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_3
    move-exception v13

    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v13

    .line 1773
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/util/Pair;

    invoke-virtual {v14, v13}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_0

    .line 1777
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/Dialog;

    .line 1778
    .restart local v5    # "d":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 1782
    .end local v5    # "d":Landroid/app/Dialog;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-wrap6(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1786
    :sswitch_c
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1787
    .local v7, "pid":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 1788
    .local v11, "uid":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13, v7, v11}, Lcom/android/server/am/ActivityManagerService;->-wrap5(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1792
    .end local v7    # "pid":I
    .end local v11    # "uid":I
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v13}, Lcom/android/server/am/ActivityManagerService;->-wrap7(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1640
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x6 -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x1a -> :sswitch_2
        0x1e -> :sswitch_7
        0x1f -> :sswitch_b
        0x20 -> :sswitch_c
        0x2e -> :sswitch_9
        0x30 -> :sswitch_a
        0x36 -> :sswitch_d
        0x45 -> :sswitch_8
    .end sparse-switch
.end method
