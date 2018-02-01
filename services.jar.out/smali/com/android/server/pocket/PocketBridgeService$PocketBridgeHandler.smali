.class Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;
.super Landroid/os/Handler;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketBridgeHandler"
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method public constructor <init>(Lcom/android/server/pocket/PocketBridgeService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pocket/PocketBridgeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    invoke-static {p1}, Lcom/android/server/pocket/PocketBridgeService;->-get1(Lcom/android/server/pocket/PocketBridgeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    const v1, 0x10400aa

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->path:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 122
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    .line 123
    invoke-static {}, Lcom/android/server/pocket/PocketBridgeService;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    .local v1, "mFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    .end local v1    # "mFileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "mFileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {v3}, Lcom/android/server/pocket/PocketBridgeService;->-get3(Lcom/android/server/pocket/PocketBridgeService;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x31

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 129
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 134
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 132
    .end local v2    # "mFileOutputStream":Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {}, Lcom/android/server/pocket/PocketBridgeService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Pocket bridge error occured"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iget-object v3, p0, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/pocket/PocketBridgeService;->-wrap0(Lcom/android/server/pocket/PocketBridgeService;Z)V

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 128
    .restart local v2    # "mFileOutputStream":Ljava/io/FileOutputStream;
    :cond_2
    const/16 v3, 0x30

    goto :goto_0

    .line 134
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_3
    move-object v1, v2

    .end local v2    # "mFileOutputStream":Ljava/io/FileOutputStream;
    .local v1, "mFileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .local v1, "mFileOutputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .end local v1    # "mFileOutputStream":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_5
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    if-eqz v4, :cond_6

    :try_start_6
    throw v4

    .line 131
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_6

    :cond_5
    if-eq v4, v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "mFileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_5

    .end local v1    # "mFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "mFileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "mFileOutputStream":Ljava/io/FileOutputStream;
    .local v1, "mFileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v1    # "mFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "mFileOutputStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "mFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "mFileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4
.end method
