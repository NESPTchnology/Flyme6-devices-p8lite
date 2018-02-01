.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mBackupServer:Ljava/lang/String;

.field private static mNtpRetries:I

.field private static mNtpRetriesMax:I

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mBackupmode:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string/jumbo v0, ""

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 55
    sput v1, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 56
    sput v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    .line 60
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 61
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 58
    return-void
.end method

.method private countInBackupmode()V
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 209
    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-ne v0, v1, :cond_0

    .line 210
    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    .line 206
    :cond_0
    return-void
.end method

.method private getBackupmode()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v11, Landroid/util/NtpTrustedTime;

    monitor-enter v11

    .line 65
    :try_start_0
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v10, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 67
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 70
    .local v5, "resolver":Landroid/content/ContentResolver;
    const v10, 0x1040054

    .line 69
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "defaultServer":Ljava/lang/String;
    const v10, 0x10e008d

    .line 71
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-long v2, v10

    .line 75
    .local v2, "defaultTimeout":J
    const-string/jumbo v10, "ntp_server"

    .line 74
    invoke-static {v5, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "secureServer":Ljava/lang/String;
    const-string/jumbo v10, "ntp_timeout"

    .line 76
    invoke-static {v5, v10, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 79
    .local v8, "timeout":J
    if-eqz v6, :cond_1

    move-object v7, v6

    .line 80
    .local v7, "server":Ljava/lang/String;
    :goto_0
    new-instance v10, Landroid/util/NtpTrustedTime;

    invoke-direct {v10, v7, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 81
    sput-object p0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    .line 83
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-eqz v10, :cond_0

    .line 84
    const-string/jumbo v10, "persist.backup.ntpServer"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "backupServer":Ljava/lang/String;
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 87
    const v10, 0x10e008b

    .line 86
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    sput v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 89
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sget v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v10, :cond_2

    .line 90
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "\""

    const-string/jumbo v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 100
    .end local v0    # "backupServer":Ljava/lang/String;
    .end local v1    # "defaultServer":Ljava/lang/String;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :cond_0
    :goto_1
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-object v10

    .line 79
    .restart local v1    # "defaultServer":Ljava/lang/String;
    .restart local v2    # "defaultTimeout":J
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "secureServer":Ljava/lang/String;
    .restart local v8    # "timeout":J
    :cond_1
    move-object v7, v1

    .restart local v7    # "server":Ljava/lang/String;
    goto :goto_0

    .line 94
    .restart local v0    # "backupServer":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const/4 v10, 0x0

    sput v10, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    .line 95
    sget-object v10, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    const-string/jumbo v10, ""

    sput-object v10, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "backupServer":Ljava/lang/String;
    .end local v1    # "defaultServer":Ljava/lang/String;
    .end local v2    # "defaultTimeout":J
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "secureServer":Ljava/lang/String;
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "timeout":J
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private isBackupSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    sget v1, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v1, :cond_0

    .line 202
    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 201
    :cond_0
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 105
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    return v6

    .line 111
    :cond_0
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 113
    sget-object v3, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 117
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_3

    .line 118
    .local v2, "ni":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 127
    .local v0, "client":Landroid/net/SntpClient;
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 128
    .local v1, "mTargetServer":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getBackupmode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    invoke-virtual {p0, v6}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    .line 130
    sget-object v1, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    .line 133
    :cond_2
    iget-wide v4, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    iput-boolean v8, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 135
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 136
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 137
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 138
    return v8

    .line 111
    .end local v0    # "client":Landroid/net/SntpClient;
    .end local v1    # "mTargetServer":Ljava/lang/String;
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 117
    :cond_3
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_0

    .line 120
    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_4
    return v6

    .line 140
    .restart local v0    # "client":Landroid/net/SntpClient;
    .restart local v1    # "mTargetServer":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->countInBackupmode()V

    .line 141
    return v6
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 155
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 162
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    return-wide v0

    .line 164
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method

.method public setBackupmode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    .line 189
    :cond_0
    return-void
.end method
