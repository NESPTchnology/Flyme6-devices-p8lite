.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1240
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 1239
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1245
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1247
    :sswitch_0
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1263
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    if-eqz v21, :cond_3

    .line 1265
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v23

    .line 1265
    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap16(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1273
    :cond_2
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1276
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 1251
    :cond_4
    :try_start_3
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Binding to service to get name and address"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x64

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 1254
    .local v19, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const-wide/16 v22, 0xbb8

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1255
    new-instance v10, Landroid/content/Intent;

    const-class v21, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v10, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    .line 1258
    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1257
    const/16 v24, 0x41

    .line 1256
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x64

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1275
    .end local v10    # "i":Landroid/content/Intent;
    .end local v19    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v21

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1275
    throw v21

    .line 1261
    .restart local v10    # "i":Landroid/content/Intent;
    .restart local v19    # "timeoutMsg":Landroid/os/Message;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    goto/16 :goto_3

    .line 1267
    .end local v10    # "i":Landroid/content/Intent;
    .end local v19    # "timeoutMsg":Landroid/os/Message;
    :catch_0
    move-exception v15

    .line 1268
    .local v15, "re":Landroid/os/RemoteException;
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Unable to grab names"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1271
    .end local v15    # "re":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1282
    :sswitch_1
    const-string/jumbo v21, "BluetoothManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MESSAGE_ENABLE("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "): mBluetooth = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x2a

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1289
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v18

    .line 1292
    .local v18, "state":I
    const/16 v21, 0xf

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 1293
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "BT Enable in BLE_ON State, going to ON"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_0

    .end local v18    # "state":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1305
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set8(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-nez v21, :cond_9

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1299
    :catch_1
    move-exception v7

    .line 1300
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_4

    .line 1301
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v21

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1301
    throw v21

    .line 1305
    :cond_8
    const/16 v21, 0x0

    goto :goto_5

    .line 1328
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v18

    .line 1333
    .restart local v18    # "state":I
    const/16 v21, 0xd

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    const/16 v21, 0x10

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1334
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1335
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    .line 1336
    const/16 v22, 0x2a

    .line 1335
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1337
    .local v16, "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    .line 1338
    const-wide/16 v22, 0x190

    .line 1337
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1329
    .end local v16    # "restartMsg":Landroid/os/Message;
    .end local v18    # "state":I
    :catch_2
    move-exception v7

    .line 1330
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "getState()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1343
    .end local v7    # "e":Landroid/os/RemoteException;
    :sswitch_2
    const-string/jumbo v21, "BluetoothManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MESSAGE_DISABLE: mBluetooth = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x2a

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    .line 1351
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 1358
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1359
    .local v4, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 1364
    .end local v4    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1365
    .restart local v4    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get4(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 1370
    .end local v4    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1371
    .local v5, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get18(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 1376
    .end local v5    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1377
    .restart local v5    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get18(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 1382
    .end local v5    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get13(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v21

    .line 1383
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    .line 1382
    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1384
    .local v14, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-eqz v14, :cond_0

    .line 1388
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1389
    .local v13, "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    invoke-static {v14, v13}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap1(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    goto/16 :goto_0

    .line 1394
    .end local v13    # "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .end local v14    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1395
    .restart local v14    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x191

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1396
    if-eqz v14, :cond_0

    .line 1399
    invoke-static {v14}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->-wrap0(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    goto/16 :goto_0

    .line 1404
    .end local v14    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_9
    const-string/jumbo v21, "BluetoothManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/IBinder;

    .line 1408
    .local v17, "service":Landroid/os/IBinder;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1409
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap9(Lcom/android/server/BluetoothManagerService;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 1415
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set7(Lcom/android/server/BluetoothManagerService;I)I

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x64

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->-set2(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0xc8

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1426
    .local v9, "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1427
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    move/from16 v21, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v21, :cond_e

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1427
    return-void

    .line 1431
    .end local v9    # "getMsg":Landroid/os/Message;
    :cond_e
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get6(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v21

    .line 1432
    const-string/jumbo v22, "bluetooth_hci_log"

    const/16 v23, 0x0

    .line 1431
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1432
    const/16 v22, 0x1

    .line 1431
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    const/4 v8, 0x1

    .line 1433
    .local v8, "enableHciSnoopLog":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v21

    if-nez v21, :cond_f

    .line 1434
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "IBluetooth.configHciSnoopLog return false"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1442
    .end local v8    # "enableHciSnoopLog":Z
    :cond_f
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1447
    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1451
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v21

    if-nez v21, :cond_10

    .line 1453
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "IBluetooth.enable() returned false"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1464
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    .line 1431
    :cond_11
    const/4 v8, 0x0

    .restart local v8    # "enableHciSnoopLog":Z
    goto/16 :goto_6

    .line 1436
    .end local v8    # "enableHciSnoopLog":Z
    :catch_3
    move-exception v7

    .line 1437
    .restart local v7    # "e":Landroid/os/RemoteException;
    :try_start_e
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Unable to call configHciSnoopLog"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_7

    .line 1463
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v21

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1463
    throw v21

    .line 1443
    :catch_4
    move-exception v15

    .line 1444
    .restart local v15    # "re":Landroid/os/RemoteException;
    :try_start_f
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Unable to register BluetoothCallback"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_8

    .line 1456
    .end local v15    # "re":Landroid/os/RemoteException;
    :cond_12
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v21

    if-nez v21, :cond_10

    .line 1457
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_9

    .line 1460
    :catch_5
    move-exception v7

    .line 1461
    .restart local v7    # "e":Landroid/os/RemoteException;
    :try_start_11
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Unable to call enable()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_9

    .line 1476
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v17    # "service":Landroid/os/IBinder;
    :sswitch_a
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1477
    .local v12, "prevState":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 1479
    .local v11, "newState":I
    const-string/jumbo v21, "BluetoothManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MESSAGE_BLUETOOTH_STATE_CHANGE: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v12}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " > "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1480
    invoke-static {v11}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v23

    .line 1479
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v12, v11}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1486
    const/16 v21, 0xe

    move/from16 v0, v21

    if-ne v12, v0, :cond_13

    .line 1487
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v11, v0, :cond_13

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    .line 1486
    if-eqz v21, :cond_13

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1491
    :cond_13
    const/16 v21, 0xb

    move/from16 v0, v21

    if-ne v12, v0, :cond_14

    .line 1492
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v11, v0, :cond_14

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    .line 1491
    if-eqz v21, :cond_14

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap10(Lcom/android/server/BluetoothManagerService;I)V

    .line 1496
    :cond_14
    const/16 v21, 0xb

    move/from16 v0, v21

    if-ne v12, v0, :cond_15

    .line 1497
    const/16 v21, 0xf

    move/from16 v0, v21

    if-ne v11, v0, :cond_15

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    .line 1496
    if-eqz v21, :cond_15

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap11(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1504
    :cond_15
    const/16 v21, 0x10

    move/from16 v0, v21

    if-ne v12, v0, :cond_16

    .line 1505
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v11, v0, :cond_16

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 1507
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Entering STATE_OFF but mEnabled is true; restarting."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    .line 1510
    const/16 v22, 0x2a

    .line 1509
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1511
    .restart local v16    # "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const-wide/16 v22, 0x190

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1514
    .end local v16    # "restartMsg":Landroid/os/Message;
    :cond_16
    const/16 v21, 0xc

    move/from16 v0, v21

    if-eq v11, v0, :cond_17

    .line 1515
    const/16 v21, 0xf

    move/from16 v0, v21

    if-ne v11, v0, :cond_0

    .line 1517
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get10(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    if-eqz v21, :cond_0

    .line 1518
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "bluetooth is recovered from error"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set6(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 1526
    .end local v11    # "newState":I
    .end local v12    # "prevState":I
    :sswitch_b
    const-string/jumbo v21, "BluetoothManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1529
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result-object v21

    if-nez v21, :cond_18

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 1532
    :cond_18
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    if-nez v21, :cond_19

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    .line 1548
    const/16 v22, 0x2a

    .line 1547
    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1549
    .restart local v16    # "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    .line 1550
    const-wide/16 v22, 0xc8

    .line 1549
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1553
    .end local v16    # "restartMsg":Landroid/os/Message;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 1559
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    .line 1560
    const/16 v23, 0xd

    .line 1559
    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    .line 1563
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    .line 1565
    const/16 v23, 0xa

    .line 1564
    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1568
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x3c

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 1533
    :cond_1d
    :try_start_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 1537
    :cond_1e
    :try_start_15
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Unknown argument for service disconnect!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 1540
    :catchall_3
    move-exception v21

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1540
    throw v21

    .line 1574
    :sswitch_c
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "MESSAGE_RESTART_BLUETOOTH_SERVICE"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set4(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1583
    :sswitch_d
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set0(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 1591
    :sswitch_e
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set10(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 1599
    :sswitch_f
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "MESSAGE_USER_SWITCHED"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x12c

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-eqz v21, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_27

    .line 1605
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_1f

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 1612
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1615
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xa

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    .line 1620
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xb

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xb

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    .line 1625
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v21

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_22

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get17(Lcom/android/server/BluetoothManagerService;)I

    move-result v22

    const/16 v23, 0xc

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1631
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap17(Lcom/android/server/BluetoothManagerService;)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap5(Lcom/android/server/BluetoothManagerService;)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap7(Lcom/android/server/BluetoothManagerService;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    .line 1637
    const/16 v23, 0xd

    .line 1636
    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap3(Lcom/android/server/BluetoothManagerService;ZZ)Z

    move-result v21

    if-eqz v21, :cond_25

    const/4 v6, 0x0

    .line 1641
    .local v6, "didDisableTimeout":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    .line 1642
    const/16 v23, 0xa

    .line 1641
    invoke-static/range {v21 .. v23}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;II)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-wrap12(Lcom/android/server/BluetoothManagerService;)V

    .line 1645
    if-nez v6, :cond_24

    .line 1647
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_23

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set1(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get7(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get5(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1653
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set3(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1664
    :cond_24
    if-eqz v6, :cond_26

    .line 1665
    const-wide/16 v22, 0xbb8

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x29

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1671
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x3c

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-set9(Lcom/android/server/BluetoothManagerService;I)I

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1609
    .end local v6    # "didDisableTimeout":Z
    :catch_6
    move-exception v15

    .line 1610
    .restart local v15    # "re":Landroid/os/RemoteException;
    :try_start_18
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Unable to unregister"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_a

    .line 1611
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_4
    move-exception v21

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1611
    throw v21

    .line 1639
    :cond_25
    const/4 v6, 0x1

    .restart local v6    # "didDisableTimeout":Z
    goto/16 :goto_b

    .line 1654
    :catchall_5
    move-exception v21

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get3(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1654
    throw v21

    .line 1668
    :cond_26
    const-wide/16 v22, 0x64

    invoke-static/range {v22 .. v23}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_c

    .line 1675
    .end local v6    # "didDisableTimeout":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-nez v21, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 1676
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x12c

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 1677
    .local v20, "userMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const-wide/16 v22, 0xc8

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1681
    const-string/jumbo v21, "BluetoothManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Retry MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1687
    .end local v20    # "userMsg":Landroid/os/Message;
    :sswitch_10
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "MESSAGE_USER_UNLOCKED"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v21

    const/16 v22, 0x12c

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get8(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/BluetoothManagerService;->-get1(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v21

    if-nez v21, :cond_0

    .line 1694
    const-string/jumbo v21, "BluetoothManagerService"

    const-string/jumbo v22, "Enabled but not bound; retrying after unlock"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/BluetoothManagerService;->-wrap8(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 1245
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x28 -> :sswitch_9
        0x29 -> :sswitch_b
        0x2a -> :sswitch_c
        0x3c -> :sswitch_a
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_f
        0x12d -> :sswitch_10
        0x190 -> :sswitch_7
        0x191 -> :sswitch_8
    .end sparse-switch
.end method
