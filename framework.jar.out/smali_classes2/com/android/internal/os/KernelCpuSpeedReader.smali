.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final MAX_READ_TRIES:I

.field private final mDeltaSpeedTimes:[J

.field private mFailureCount:I

.field private final mJiffyMillis:J

.field private final mLastSpeedTimes:[J

.field private final mProcFileOnline:Ljava/lang/String;

.field private final mProcFileStats:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->MAX_READ_TRIES:I

    .line 56
    const-string/jumbo v2, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    new-array v3, v6, [Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 56
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFileStats:Ljava/lang/String;

    .line 58
    const-string/jumbo v2, "/sys/devices/system/cpu/cpu%d/online"

    new-array v3, v6, [Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 58
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFileOnline:Ljava/lang/String;

    .line 60
    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    .line 61
    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    .line 62
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    .line 63
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    .line 55
    return-void
.end method

.method private checkForSysFsBug()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 72
    const/4 v3, 0x0

    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFileOnline:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 76
    .local v0, "cpuonline":I
    if-lez v0, :cond_1

    const/4 v5, 0x1

    .line 80
    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 78
    .end local v0    # "cpuonline":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 79
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    const-string/jumbo v5, "KernelCpuSpeedReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read cpu online status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return v8

    .restart local v0    # "cpuonline":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    move v5, v8

    .line 76
    goto :goto_0

    .line 80
    :catch_1
    move-exception v6

    goto :goto_1

    .line 76
    :cond_2
    return v5

    .line 80
    .end local v0    # "cpuonline":I
    :cond_3
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v6

    goto :goto_4

    :cond_5
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2    # "line":Ljava/lang/String;
    .local v3, "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_5
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_6
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_7
    if-eqz v6, :cond_8

    :try_start_8
    throw v6

    .line 78
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    if-nez v6, :cond_7

    move-object v6, v7

    goto :goto_7

    :cond_7
    if-eq v6, v7, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    throw v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4

    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    goto :goto_6

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_5
.end method


# virtual methods
.method public readDelta()[J
    .locals 15

    .prologue
    .line 91
    iget v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mFailureCount:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    .line 92
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    .line 93
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    .line 96
    :cond_0
    const/4 v9, 0x0

    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFileStats:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v5, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 99
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v4, 0x0

    .line 100
    .local v4, "speedIndex":I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    array-length v8, v8

    if-ge v4, v8, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 101
    invoke-virtual {v5, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 104
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    mul-long v6, v10, v12

    .line 105
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v8, v4

    cmp-long v8, v6, v10

    if-gez v8, :cond_1

    .line 108
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    aput-wide v6, v8, v4

    .line 112
    :goto_1
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v6, v8, v4

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    iget-object v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v10, v4

    sub-long v10, v6, v10

    aput-wide v10, v8, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 122
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v6    # "time":J
    :catch_0
    move-exception v8

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_3
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_4
    if-eqz v9, :cond_8

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    const-string/jumbo v8, "KernelCpuSpeedReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to read cpu-freq: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    .line 118
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuSpeedReader;->checkForSysFsBug()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 120
    iget v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mFailureCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mFailureCount:I

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    .line 122
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "speedIndex":I
    .restart local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_4
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_7
    if-eqz v9, :cond_6

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 115
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    goto :goto_7

    :cond_6
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "speedIndex":I
    .end local v5    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v10

    if-nez v9, :cond_7

    move-object v9, v10

    goto :goto_4

    :cond_7
    if-eq v9, v10, :cond_2

    :try_start_7
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    throw v8
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .local v2, "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    goto :goto_3

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .local v2, "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    goto :goto_2
.end method
