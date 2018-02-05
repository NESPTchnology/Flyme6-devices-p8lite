.class public Lcom/android/server/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x3

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mGrantSyncAdaptersAccountAccess:Z

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static synthetic -get0()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .locals 1

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SERVER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "LOCAL"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "POLL"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "USER"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "PERIODIC"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "SERVICE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 120
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 149
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string/jumbo v1, "contacts"

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string/jumbo v1, "calendar"

    const-string/jumbo v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 465
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 401
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 400
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 404
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 403
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 407
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 406
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 410
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 409
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 416
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 415
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 420
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 419
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    .line 422
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 425
    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 456
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 457
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 466
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 467
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 469
    const-string/jumbo v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 471
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 472
    const v3, 0x112007d

    .line 471
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 474
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 475
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 476
    .local v0, "syncDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 478
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 480
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "accounts.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 481
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "status.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 482
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "stats.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 484
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 485
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 486
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 487
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 488
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 489
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 490
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 465
    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 4
    .param p0, "syncTimeSeconds"    # J

    .prologue
    .line 567
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 571
    const-wide/16 v0, 0x0

    return-wide v0

    .line 572
    :cond_0
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 573
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 576
    :cond_1
    const-wide/16 v0, 0xd80

    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1406
    if-gez p2, :cond_0

    .line 1407
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1408
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1409
    const/4 p3, 0x1

    .line 1411
    .end local p3    # "doWrite":Z
    :cond_0
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1412
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "created a new AuthorityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1415
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1416
    if-eqz p3, :cond_2

    .line 1417
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1419
    :cond_2
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .locals 3
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1335
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1336
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 1359
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v3, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1360
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1361
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_1

    .line 1362
    if-eqz p2, :cond_0

    .line 1363
    const-string/jumbo v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": unknown account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_0
    return-object v6

    .line 1369
    :cond_1
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1370
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_3

    .line 1371
    if-eqz p2, :cond_2

    .line 1372
    const-string/jumbo v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1373
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": unknown provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_2
    return-object v6

    .line 1378
    :cond_3
    return-object v2
.end method

.method private getCurrentDayLocked()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1340
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1341
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1342
    .local v0, "dayOfYear":I
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1344
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1345
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1346
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1348
    :cond_0
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1211
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1210
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1240
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_0

    .line 1241
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    .restart local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1244
    :cond_0
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1903
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1907
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1389
    const/4 v2, 0x0

    .line 1390
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v3, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1391
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1392
    .local v0, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_0

    .line 1393
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .end local v0    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1394
    .restart local v0    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    :cond_0
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1397
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_1

    .line 1398
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1399
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    :cond_1
    return-object v2
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p1, "authorityId"    # I

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1452
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    .line 1453
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0    # "status":Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1454
    .restart local v0    # "status":Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1456
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 498
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v1, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 502
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 497
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .locals 2
    .param p1, "syncDir"    # Ljava/io/File;

    .prologue
    .line 1609
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1610
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1611
    return-void

    .line 1613
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1608
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1622
    const/4 v9, 0x0

    .line 1624
    .local v9, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1626
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1627
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1629
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1630
    .local v7, "newAuthorityName":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1626
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1636
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    iget-boolean v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v10, :cond_0

    .line 1646
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1648
    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1646
    invoke-direct {v8, v10, v7, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1649
    .local v8, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v10, "cleanup"

    invoke-direct {p0, v8, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1654
    const/4 v10, -0x1

    invoke-direct {p0, v8, v10, v13}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1655
    .local v6, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1656
    const/4 v9, 0x1

    goto :goto_1

    .line 1659
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "newAuthorityName":Ljava/lang/String;
    .end local v8    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "authorityInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1661
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1662
    iget-object v11, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1663
    iget-object v12, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1660
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1665
    const/4 v9, 0x1

    goto :goto_2

    .line 1668
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    return v9
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "version"    # I
    .param p3, "validator"    # Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    .prologue
    .line 1688
    const/4 v5, 0x0

    .line 1689
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v11, -0x1

    .line 1691
    .local v11, "id":I
    :try_start_0
    const-string/jumbo v17, "id"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1697
    :goto_0
    if-ltz v11, :cond_4

    .line 1698
    const-string/jumbo v17, "authority"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1699
    .local v6, "authorityName":Ljava/lang/String;
    const-string/jumbo v17, "enabled"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1700
    .local v10, "enabled":Ljava/lang/String;
    const-string/jumbo v17, "syncable"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1701
    .local v14, "syncable":Ljava/lang/String;
    const-string/jumbo v17, "account"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1702
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v17, "type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1703
    .local v4, "accountType":Ljava/lang/String;
    const-string/jumbo v17, "user"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1704
    .local v15, "user":Ljava/lang/String;
    const-string/jumbo v17, "package"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1705
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v17, "class"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1706
    .local v7, "className":Ljava/lang/String;
    if-nez v15, :cond_5

    const/16 v16, 0x0

    .line 1707
    .local v16, "userId":I
    :goto_1
    if-nez v4, :cond_0

    if-nez v13, :cond_0

    .line 1708
    const-string/jumbo v4, "com.google"

    .line 1709
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 1711
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1712
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string/jumbo v17, "SyncManagerFile"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1713
    const-string/jumbo v17, "SyncManagerFile"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Adding authority: account="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1715
    const-string/jumbo v19, " accountType="

    .line 1713
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1716
    const-string/jumbo v19, " auth="

    .line 1713
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1717
    const-string/jumbo v19, " package="

    .line 1713
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1718
    const-string/jumbo v19, " class="

    .line 1713
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1719
    const-string/jumbo v19, " user="

    .line 1713
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1720
    const-string/jumbo v19, " enabled="

    .line 1713
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1721
    const-string/jumbo v19, " syncable="

    .line 1713
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_1
    if-nez v5, :cond_3

    .line 1724
    const-string/jumbo v17, "SyncManagerFile"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1725
    const-string/jumbo v17, "SyncManagerFile"

    const-string/jumbo v18, "Creating authority entry"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 1728
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1729
    new-instance v17, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v12, v0, v6, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1731
    .local v12, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1732
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v17

    .line 1731
    if-eqz v17, :cond_6

    .line 1733
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v11, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v5

    .line 1740
    if-lez p2, :cond_3

    .line 1741
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1750
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_3
    :goto_2
    if-eqz v5, :cond_b

    .line 1751
    if-eqz v10, :cond_7

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_3
    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1753
    if-nez v14, :cond_8

    .line 1754
    const/16 v17, -0x1

    .line 1753
    :goto_4
    :try_start_1
    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1773
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "authorityName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v10    # "enabled":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "syncable":Ljava/lang/String;
    .end local v15    # "user":Ljava/lang/String;
    .end local v16    # "userId":I
    :cond_4
    :goto_5
    return-object v5

    .line 1694
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catch_0
    move-exception v8

    .line 1695
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v17, "SyncManager"

    const-string/jumbo v18, "the id of the authority is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1692
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 1693
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "SyncManager"

    const-string/jumbo v18, "error parsing the id of the authority"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1706
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v6    # "authorityName":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v10    # "enabled":Ljava/lang/String;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "syncable":Ljava/lang/String;
    .restart local v15    # "user":Ljava/lang/String;
    :cond_5
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .restart local v16    # "userId":I
    goto/16 :goto_1

    .line 1744
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v18, "35028827"

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    .line 1745
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "account:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " provider:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " user:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v17, v19

    .line 1744
    const v18, 0x534e4554

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1751
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 1754
    :cond_8
    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    goto/16 :goto_4

    .line 1755
    :catch_2
    move-exception v9

    .line 1758
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "unknown"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1759
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto/16 :goto_5

    .line 1761
    :cond_9
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1762
    const/16 v17, 0x1

    .line 1761
    :goto_6
    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto/16 :goto_5

    .line 1762
    :cond_a
    const/16 v17, 0x0

    goto :goto_6

    .line 1767
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string/jumbo v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failure adding authority: account="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1768
    const-string/jumbo v19, " auth="

    .line 1767
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1769
    const-string/jumbo v19, " enabled="

    .line 1767
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1770
    const-string/jumbo v19, " syncable="

    .line 1767
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1817
    const-string/jumbo v6, "name"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1818
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1819
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v6, "value1"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1820
    .local v4, "value1":Ljava/lang/String;
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1823
    .local v5, "value2":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "long"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1824
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1825
    :cond_1
    const-string/jumbo v6, "integer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1826
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1838
    :catch_0
    move-exception v1

    .line 1839
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "error parsing bundle value"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1827
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "double"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1828
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1840
    :catch_1
    move-exception v0

    .line 1841
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "error parsing bundle value"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1829
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "float"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1830
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1831
    :cond_4
    const-string/jumbo v6, "boolean"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1832
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1833
    :cond_5
    const-string/jumbo v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1834
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1835
    :cond_6
    const-string/jumbo v6, "account"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1836
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x0

    .line 1672
    const-string/jumbo v6, "user"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1673
    .local v4, "user":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1675
    .local v5, "userId":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1681
    :goto_0
    const-string/jumbo v6, "enabled"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1682
    .local v2, "enabled":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1683
    :goto_1
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1671
    return-void

    .line 1678
    .end local v2    # "enabled":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "the user in listen-for-tickles is null"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1676
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1677
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "error parsing the user for listen-for-tickles"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1682
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "enabled":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    .local v3, "listen":Z
    goto :goto_1
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .prologue
    .line 1780
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1781
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "period"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1782
    .local v14, "periodValue":Ljava/lang/String;
    const-string/jumbo v3, "flex"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1786
    .local v13, "flexValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1795
    .local v6, "period":J
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v8

    .line 1808
    .local v8, "flextime":J
    :goto_0
    new-instance v2, Landroid/content/PeriodicSync;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1809
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1808
    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1812
    .local v2, "periodicSync":Landroid/content/PeriodicSync;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    return-object v2

    .line 1790
    .end local v2    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v6    # "period":J
    .end local v8    # "flextime":J
    :catch_0
    move-exception v10

    .line 1791
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SyncManager"

    const-string/jumbo v4, "the period of a periodic sync is null"

    invoke-static {v3, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1792
    const/4 v3, 0x0

    return-object v3

    .line 1787
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    .line 1788
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SyncManager"

    const-string/jumbo v4, "error parsing the period of a periodic sync"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1789
    const/4 v3, 0x0

    return-object v3

    .line 1801
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "period":J
    :catch_2
    move-exception v12

    .line 1802
    .local v12, "expected":Ljava/lang/NullPointerException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v8

    .line 1803
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1804
    const-string/jumbo v15, " flex: "

    .line 1803
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1796
    .end local v8    # "flextime":J
    .end local v12    # "expected":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v11

    .line 1797
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v8

    .line 1798
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1799
    const-string/jumbo v15, ", using default: "

    .line 1798
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readAccountInfoLocked()V
    .locals 26

    .prologue
    .line 1496
    const/4 v11, -0x1

    .line 1497
    .local v11, "highestAuthorityId":I
    const/4 v10, 0x0

    .line 1499
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    .line 1500
    .local v10, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v23, "SyncManagerFile"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1501
    const-string/jumbo v23, "SyncManagerFile"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Reading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 1504
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v23, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v23 .. v23}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1505
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 1506
    .local v9, "eventType":I
    :goto_0
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v9, v0, :cond_1

    .line 1507
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v9, v0, :cond_1

    .line 1508
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 1510
    :cond_1
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_3

    .line 1511
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "No initial accounts"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1592
    if-eqz v10, :cond_2

    .line 1594
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1512
    :cond_2
    :goto_1
    return-void

    .line 1595
    :catch_0
    move-exception v8

    .local v8, "e1":Ljava/io/IOException;
    goto :goto_1

    .line 1515
    .end local v8    # "e1":Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1516
    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v23, "accounts"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1517
    const-string/jumbo v23, "listen-for-tickles"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1518
    .local v13, "listen":Ljava/lang/String;
    const-string/jumbo v23, "version"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1521
    .local v22, "versionString":Ljava/lang/String;
    if-nez v22, :cond_a

    const/16 v21, 0x0

    .line 1526
    .local v21, "version":I
    :goto_2
    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 1527
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    .line 1530
    :cond_4
    const-string/jumbo v23, "nextAuthorityId"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 1532
    .local v14, "nextIdString":Ljava/lang/String;
    if-nez v14, :cond_b

    const/4 v12, 0x0

    .line 1533
    .local v12, "id":I
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1537
    .end local v12    # "id":I
    :goto_4
    :try_start_4
    const-string/jumbo v23, "offsetInSeconds"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v15

    .line 1539
    .local v15, "offsetString":Ljava/lang/String;
    if-nez v15, :cond_c

    const/16 v23, 0x0

    :goto_5
    :try_start_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1543
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 1544
    new-instance v18, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 1545
    .local v18, "random":Ljava/util/Random;
    const v23, 0x15180

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1547
    .end local v18    # "random":Ljava/util/Random;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    if-eqz v13, :cond_e

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    :goto_7
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1548
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1549
    const/4 v4, 0x0

    .line 1550
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    .line 1551
    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    new-instance v20, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V

    .line 1553
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    .local v20, "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :cond_6
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_7

    .line 1554
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1555
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 1556
    const-string/jumbo v23, "authority"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 1557
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1558
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    .line 1559
    .restart local v17    # "periodicSync":Landroid/content/PeriodicSync;
    if-eqz v4, :cond_f

    .line 1560
    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v11, :cond_7

    .line 1561
    iget v11, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1580
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_7
    :goto_8
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v9

    .line 1581
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_6

    .line 1591
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :cond_8
    add-int/lit8 v23, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1592
    if-eqz v10, :cond_9

    .line 1594
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1600
    :cond_9
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1495
    return-void

    .line 1521
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_a
    :try_start_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v21

    .restart local v21    # "version":I
    goto/16 :goto_2

    .line 1522
    .end local v21    # "version":I
    :catch_1
    move-exception v6

    .line 1523
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/16 v21, 0x0

    .restart local v21    # "version":I
    goto/16 :goto_2

    .line 1532
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    :cond_b
    :try_start_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v12

    .restart local v12    # "id":I
    goto/16 :goto_3

    .line 1539
    .end local v12    # "id":I
    .restart local v15    # "offsetString":Ljava/lang/String;
    :cond_c
    :try_start_a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v23

    goto/16 :goto_5

    .line 1540
    :catch_2
    move-exception v6

    .line 1541
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const/16 v23, 0x0

    :try_start_b
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 1583
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 1584
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "Error reading accounts"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1591
    add-int/lit8 v23, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1592
    if-eqz v10, :cond_d

    .line 1594
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1585
    :cond_d
    :goto_a
    return-void

    .line 1547
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_e
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 1564
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v17    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :cond_f
    const/16 v23, 0x3

    :try_start_e
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "26513719"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 1565
    const-string/jumbo v24, "Malformed authority"

    const/16 v25, 0x2

    aput-object v24, v23, v25

    .line 1564
    const v24, 0x534e4554

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_8

    .line 1586
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 1587
    .local v5, "e":Ljava/io/IOException;
    if-nez v10, :cond_15

    :try_start_f
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "No initial accounts"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1591
    :goto_b
    add-int/lit8 v23, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1592
    if-eqz v10, :cond_10

    .line 1594
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 1589
    :cond_10
    :goto_c
    return-void

    .line 1567
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_11
    :try_start_11
    const-string/jumbo v23, "listenForTickles"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1568
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_8

    .line 1590
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catchall_0
    move-exception v23

    .line 1591
    add-int/lit8 v24, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1592
    if-eqz v10, :cond_12

    .line 1594
    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 1590
    :cond_12
    :goto_d
    throw v23

    .line 1570
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_13
    :try_start_13
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 1571
    const-string/jumbo v23, "periodicSync"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    if-eqz v4, :cond_7

    .line 1572
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v17

    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    goto/16 :goto_8

    .line 1574
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_14
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    if-eqz v17, :cond_7

    .line 1575
    const-string/jumbo v23, "extra"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1576
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_8

    .line 1595
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catch_5
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_9

    .line 1588
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_15
    :try_start_14
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "Error reading accounts"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_b

    .line 1595
    :catch_6
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_c

    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_a

    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_8
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto :goto_d

    .line 1534
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .locals 26

    .prologue
    .line 1917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "syncmanager.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 1918
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1919
    return-void

    .line 1921
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 1922
    .local v22, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1924
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 1925
    const/4 v5, 0x1

    .line 1924
    :try_start_0
    move-object/from16 v0, v22

    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1929
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v3, :cond_12

    .line 1930
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_8

    const/16 v18, 0x1

    .line 1933
    .local v18, "hasType":Z
    :goto_1
    const-string/jumbo v4, "SyncManagerFile"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1934
    const-string/jumbo v4, "SyncManagerFile"

    const-string/jumbo v5, "Reading legacy sync accounts db"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :cond_1
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1937
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "stats, status"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1938
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1939
    .local v20, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "_id"

    const-string/jumbo v5, "status._id as _id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    const-string/jumbo v4, "account"

    const-string/jumbo v5, "stats.account as account"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    if-eqz v18, :cond_2

    .line 1942
    const-string/jumbo v4, "account_type"

    const-string/jumbo v5, "stats.account_type as account_type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    :cond_2
    const-string/jumbo v4, "authority"

    const-string/jumbo v5, "stats.authority as authority"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const-string/jumbo v4, "totalElapsedTime"

    const-string/jumbo v5, "totalElapsedTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    const-string/jumbo v4, "numSyncs"

    const-string/jumbo v5, "numSyncs"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    const-string/jumbo v4, "numSourceLocal"

    const-string/jumbo v5, "numSourceLocal"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    const-string/jumbo v4, "numSourcePoll"

    const-string/jumbo v5, "numSourcePoll"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    const-string/jumbo v4, "numSourceServer"

    const-string/jumbo v5, "numSourceServer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    const-string/jumbo v4, "numSourceUser"

    const-string/jumbo v5, "numSourceUser"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    const-string/jumbo v4, "lastSuccessSource"

    const-string/jumbo v5, "lastSuccessSource"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    const-string/jumbo v4, "lastSuccessTime"

    const-string/jumbo v5, "lastSuccessTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    const-string/jumbo v4, "lastFailureSource"

    const-string/jumbo v5, "lastFailureSource"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    const-string/jumbo v4, "lastFailureTime"

    const-string/jumbo v5, "lastFailureTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    const-string/jumbo v4, "lastFailureMesg"

    const-string/jumbo v5, "lastFailureMesg"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    const-string/jumbo v4, "pending"

    const-string/jumbo v5, "pending"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1958
    const-string/jumbo v4, "stats._id = status.stats_id"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1959
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1960
    .local v14, "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1961
    const-string/jumbo v4, "account"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1962
    .local v10, "accountName":Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 1963
    const-string/jumbo v4, "account_type"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1964
    .local v11, "accountType":Ljava/lang/String;
    :goto_3
    if-nez v11, :cond_4

    .line 1965
    const-string/jumbo v11, "com.google"

    .line 1967
    :cond_4
    const-string/jumbo v4, "authority"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1970
    .local v13, "authorityName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    const/4 v6, 0x0

    .line 1970
    invoke-direct {v4, v5, v13, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1973
    const/4 v5, -0x1

    .line 1974
    const/4 v6, 0x0

    .line 1969
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    .line 1975
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v12, :cond_3

    .line 1976
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 1977
    .local v19, "i":I
    const/16 v17, 0x0

    .line 1978
    .local v17, "found":Z
    const/16 v24, 0x0

    .line 1979
    :cond_5
    if-lez v19, :cond_6

    .line 1980
    add-int/lit8 v19, v19, -0x1

    .line 1981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/SyncStatusInfo;

    .line 1982
    .local v24, "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v4, v5, :cond_5

    .line 1983
    const/16 v17, 0x1

    .line 1987
    .end local v24    # "st":Landroid/content/SyncStatusInfo;
    :cond_6
    if-nez v17, :cond_7

    .line 1988
    new-instance v24, Landroid/content/SyncStatusInfo;

    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1989
    .restart local v24    # "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1991
    .end local v24    # "st":Landroid/content/SyncStatusInfo;
    :cond_7
    const-string/jumbo v4, "totalElapsedTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1992
    const-string/jumbo v4, "numSyncs"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1993
    const-string/jumbo v4, "numSourceLocal"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 1994
    const-string/jumbo v4, "numSourcePoll"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 1995
    const-string/jumbo v4, "numSourceServer"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 1996
    const-string/jumbo v4, "numSourceUser"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 1997
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 1998
    const-string/jumbo v4, "lastSuccessSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1999
    const-string/jumbo v4, "lastSuccessTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 2000
    const-string/jumbo v4, "lastFailureSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 2001
    const-string/jumbo v4, "lastFailureTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 2002
    const-string/jumbo v4, "lastFailureMesg"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 2003
    const-string/jumbo v4, "pending"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 1926
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v17    # "found":Z
    .end local v18    # "hasType":Z
    .end local v19    # "i":I
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/database/sqlite/SQLiteException;
    goto/16 :goto_0

    .line 1930
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "hasType":Z
    goto/16 :goto_1

    .line 1963
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2003
    .restart local v11    # "accountType":Ljava/lang/String;
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "authorityName":Ljava/lang/String;
    .restart local v17    # "found":Z
    .restart local v19    # "i":I
    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 2007
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v17    # "found":Z
    .end local v19    # "i":I
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2010
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2011
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "settings"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2012
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2013
    :cond_c
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2014
    const-string/jumbo v4, "name"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2015
    .local v21, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2016
    .local v25, "value":Ljava/lang/String;
    if-eqz v21, :cond_c

    .line 2017
    const-string/jumbo v4, "listen_for_tickles"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2018
    if-eqz v25, :cond_d

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    goto :goto_6

    .line 2019
    :cond_e
    const-string/jumbo v4, "sync_provider_"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2020
    const-string/jumbo v4, "sync_provider_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2021
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    .line 2020
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 2022
    .local v23, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 2023
    .restart local v19    # "i":I
    :cond_f
    :goto_7
    if-lez v19, :cond_c

    .line 2024
    add-int/lit8 v19, v19, -0x1

    .line 2025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2026
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2027
    if-eqz v25, :cond_10

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_8
    iput-boolean v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 2028
    const/4 v4, 0x1

    iput v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_7

    .line 2027
    :cond_10
    const/4 v4, 0x1

    goto :goto_8

    .line 2034
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "provider":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_11
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2036
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2038
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1915
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v18    # "hasType":Z
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    return-void
.end method

.method private readStatisticsLocked()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    .line 2154
    :try_start_0
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2155
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2156
    .local v4, "in":Landroid/os/Parcel;
    array-length v7, v0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2157
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2159
    const/4 v5, 0x0

    .line 2160
    .local v5, "index":I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "token":I
    if-eqz v6, :cond_4

    .line 2161
    const/16 v7, 0x65

    if-eq v6, v7, :cond_1

    .line 2162
    if-ne v6, v10, :cond_3

    .line 2163
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2164
    .local v1, "day":I
    if-ne v6, v10, :cond_2

    .line 2165
    add-int/lit16 v7, v1, -0x7d9

    add-int/lit16 v1, v7, 0x37a5

    .line 2167
    :cond_2
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2168
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2169
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2170
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2171
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2172
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 2173
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 2174
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2178
    .end local v1    # "day":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    const-string/jumbo v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2152
    .end local v0    # "data":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "index":I
    .end local v6    # "token":I
    :cond_4
    :goto_1
    return-void

    .line 2182
    :catch_0
    move-exception v3

    .line 2183
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "SyncManager"

    const-string/jumbo v8, "No initial statistics"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readStatusLocked()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 2049
    const-string/jumbo v5, "SyncManagerFile"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2050
    const-string/jumbo v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2054
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2055
    .local v2, "in":Landroid/os/Parcel;
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2056
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2058
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "token":I
    if-eqz v4, :cond_3

    .line 2059
    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    .line 2060
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2061
    .local v3, "status":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 2062
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2063
    const-string/jumbo v5, "SyncManagerFile"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2064
    const-string/jumbo v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding status for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_2
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2074
    .end local v0    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    .end local v4    # "token":I
    :catch_0
    move-exception v1

    .line 2075
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SyncManager"

    const-string/jumbo v6, "No initial status"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void

    .line 2070
    .restart local v0    # "data":[B
    .restart local v2    # "in":Landroid/os/Parcel;
    .restart local v4    # "token":I
    :cond_4
    :try_start_1
    const-string/jumbo v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .prologue
    .line 1435
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1436
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_1

    .line 1437
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1438
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_1

    .line 1439
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v2, :cond_0

    .line 1440
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1442
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1443
    if-eqz p4, :cond_1

    .line 1444
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1434
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    return-void
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2134
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 2137
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2136
    invoke-interface {v0, v1, p3, p5}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2129
    :goto_0
    return-void

    .line 2141
    :cond_0
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2115
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 2116
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v1, :cond_0

    .line 2117
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v1, v2, p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2114
    :goto_0
    return-void

    .line 2120
    :cond_0
    new-instance v1, Landroid/content/SyncRequest$Builder;

    invoke-direct {v1}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2123
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2124
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    goto :goto_0
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    .prologue
    .line 791
    const/4 v4, 0x0

    .line 792
    .local v4, "changed":Z
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accountInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 793
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_1

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 797
    :cond_1
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 798
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_3

    .line 799
    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 802
    :cond_3
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v6, p4

    if-nez v5, :cond_4

    .line 803
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v6, p6

    if-eqz v5, :cond_2

    .line 804
    :cond_4
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 805
    iput-wide p6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 806
    const/4 v4, 0x1

    goto :goto_1

    .line 794
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v5, :cond_1

    goto :goto_0

    .line 810
    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_6
    return v4
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .locals 6
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 710
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 711
    const/4 v1, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 712
    .local v0, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-ge p2, v4, :cond_0

    .line 713
    const/4 p2, -0x1

    .line 715
    :cond_0
    const-string/jumbo v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    const-string/jumbo v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_1
    iget v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v1, p2, :cond_3

    .line 719
    const-string/jumbo v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 720
    const-string/jumbo v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 722
    return-void

    .line 724
    :cond_3
    :try_start_1
    iput p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 725
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 727
    if-ne p2, v5, :cond_4

    .line 728
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x5

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V

    .line 730
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 708
    return-void

    .line 710
    .end local v0    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private writeAccountInfoLocked()V
    .locals 14

    .prologue
    .line 1849
    const-string/jumbo v11, "SyncManagerFile"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1850
    const-string/jumbo v11, "SyncManagerFile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Writing new "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_0
    const/4 v4, 0x0

    .line 1855
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1856
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1857
    .local v9, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1858
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1859
    const-string/jumbo v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1861
    const-string/jumbo v11, "accounts"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1862
    const-string/jumbo v11, "version"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1863
    const-string/jumbo v11, "nextAuthorityId"

    iget v12, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1864
    const-string/jumbo v11, "offsetInSeconds"

    iget v12, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1867
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1868
    .local v0, "M":I
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_0
    if-ge v8, v0, :cond_1

    .line 1869
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 1870
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 1871
    .local v7, "listen":Ljava/lang/Boolean;
    const-string/jumbo v11, "listenForTickles"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1872
    const-string/jumbo v11, "user"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1873
    const-string/jumbo v11, "enabled"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1874
    const-string/jumbo v11, "listenForTickles"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1868
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1877
    .end local v7    # "listen":Ljava/lang/Boolean;
    .end local v10    # "userId":I
    :cond_1
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1878
    .local v1, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 1879
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1880
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1881
    .local v6, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v11, "authority"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1882
    const-string/jumbo v11, "id"

    iget v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1883
    const-string/jumbo v11, "user"

    iget v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1884
    const-string/jumbo v11, "enabled"

    iget-boolean v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1885
    const-string/jumbo v11, "account"

    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1886
    const-string/jumbo v11, "type"

    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1887
    const-string/jumbo v11, "authority"

    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1888
    const-string/jumbo v11, "syncable"

    iget v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1889
    const-string/jumbo v11, "authority"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1878
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1891
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    const-string/jumbo v11, "accounts"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1892
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1893
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .end local v8    # "m":I
    .end local v9    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    :goto_2
    return-void

    .line 1894
    :catch_0
    move-exception v3

    .line 1895
    .local v3, "e1":Ljava/io/IOException;
    const-string/jumbo v11, "SyncManager"

    const-string/jumbo v12, "Error writing accounts"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1896
    if-eqz v4, :cond_3

    .line 1897
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2
.end method

.method private writeStatisticsLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 2191
    const-string/jumbo v6, "SyncManagerFile"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2192
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    .line 2199
    const/4 v3, 0x0

    .line 2201
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2202
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2203
    .local v5, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 2204
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 2205
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 2206
    .local v1, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_3

    .line 2216
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2217
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2218
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2220
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2190
    .end local v0    # "N":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    .line 2209
    .restart local v0    # "N":I
    .restart local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "out":Landroid/os/Parcel;
    :cond_3
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2213
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2221
    .end local v0    # "N":I
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 2222
    .local v2, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2223
    if-eqz v3, :cond_2

    .line 2224
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method private writeStatusLocked()V
    .locals 9

    .prologue
    .line 2083
    const-string/jumbo v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2084
    const-string/jumbo v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    .line 2091
    const/4 v2, 0x0

    .line 2093
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2094
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2095
    .local v4, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2096
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2097
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2098
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2099
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2096
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2101
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2103
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2105
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    .line 2106
    :catch_0
    move-exception v1

    .line 2107
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2108
    if-eqz v2, :cond_2

    .line 2109
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .locals 9
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 1015
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1016
    :try_start_0
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1018
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1019
    const-string/jumbo v3, " src="

    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1019
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1020
    const-string/jumbo v3, " extras="

    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1020
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 1017
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1025
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v1, -0x1

    .line 1026
    const/4 v2, 0x1

    .line 1023
    invoke-direct {p0, v7, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1027
    .local v6, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Landroid/content/SyncInfo;

    .line 1028
    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1029
    iget-object v2, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1030
    iget-object v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1031
    iget-wide v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 1027
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1032
    .local v0, "syncInfo":Landroid/content/SyncInfo;
    iget-object v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    .line 1035
    return-object v0

    .line 1015
    .end local v0    # "syncInfo":Landroid/content/SyncInfo;
    .end local v6    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 546
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearAllBackoffsLocked()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 814
    const/4 v4, 0x0

    .line 815
    .local v4, "changed":Z
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 817
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accountInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 818
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 819
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    .line 820
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    .line 821
    :cond_2
    const-string/jumbo v5, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 822
    const-string/jumbo v5, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 823
    iget-object v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 824
    const-string/jumbo v8, " account:"

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 824
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 825
    const-string/jumbo v8, " user:"

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 825
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    const-string/jumbo v8, " backoffTime was: "

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 826
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 822
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 827
    const-string/jumbo v8, " backoffDelay was: "

    .line 822
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 827
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 822
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_3
    const-wide/16 v8, -0x1

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 830
    const-wide/16 v8, -0x1

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v6

    .line 837
    if-eqz v4, :cond_5

    .line 838
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 813
    :cond_5
    return-void

    .line 815
    .end local v1    # "accountInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public clearAndReadState()V
    .locals 2

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1477
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1478
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1479
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1480
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1482
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1483
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1484
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1485
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 1486
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1487
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1488
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1474
    return-void

    .line 1475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .locals 12
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    .line 955
    iget-object v9, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 956
    :try_start_0
    const-string/jumbo v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 957
    const-string/jumbo v8, "SyncManager"

    const-string/jumbo v10, "Updating for new accounts..."

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 960
    .local v7, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 961
    .local v1, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 962
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 963
    .local v0, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 964
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v8, p2, :cond_1

    .line 966
    const-string/jumbo v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 967
    const-string/jumbo v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Account removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_2
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "auth$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 970
    .local v2, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 955
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "auth$iterator":Ljava/util/Iterator;
    .end local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 972
    .restart local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .restart local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v3    # "auth$iterator":Ljava/util/Iterator;
    .restart local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 977
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v3    # "auth$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 978
    .local v4, "i":I
    if-lez v4, :cond_b

    .line 979
    :cond_5
    if-lez v4, :cond_a

    .line 980
    add-int/lit8 v4, v4, -0x1

    .line 981
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 982
    .local v5, "ident":I
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 983
    .restart local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v8, :cond_6

    .line 984
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v8, v10}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 986
    :cond_6
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 987
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 988
    .local v6, "j":I
    :cond_7
    :goto_2
    if-lez v6, :cond_8

    .line 989
    add-int/lit8 v6, v6, -0x1

    .line 990
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_7

    .line 991
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 994
    :cond_8
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 995
    :cond_9
    :goto_3
    if-lez v6, :cond_5

    .line 996
    add-int/lit8 v6, v6, -0x1

    .line 997
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_9

    .line 998
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1002
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v5    # "ident":I
    .end local v6    # "j":I
    :cond_a
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1003
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1004
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    monitor-exit v9

    .line 954
    return-void
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 2
    .param p1, "authorityId"    # I

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 734
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 735
    :try_start_0
    const-string/jumbo v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 736
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    .line 737
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 739
    return-object v3

    .line 734
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1253
    const/4 v1, -0x1

    .line 1254
    const/4 v3, 0x1

    .line 1252
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1255
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1251
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "canAccessAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1221
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1222
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1223
    .local v3, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v4, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sync$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 1226
    .local v1, "sync":Landroid/content/SyncInfo;
    if-nez p2, :cond_0

    .line 1228
    iget v5, v1, Landroid/content/SyncInfo;->authorityId:I

    iget-object v7, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v8, v1, Landroid/content/SyncInfo;->startTime:J

    .line 1227
    invoke-static {v5, v7, v8, v9}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v0

    .line 1232
    .local v0, "copy":Landroid/content/SyncInfo;
    :goto_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1221
    .end local v0    # "copy":Landroid/content/SyncInfo;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    .end local v2    # "sync$iterator":Ljava/util/Iterator;
    .end local v3    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v4    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1230
    .restart local v1    # "sync":Landroid/content/SyncInfo;
    .restart local v2    # "sync$iterator":Ljava/util/Iterator;
    .restart local v3    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v4    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/SyncInfo;

    invoke-direct {v0, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "copy":Landroid/content/SyncInfo;
    goto :goto_1

    .end local v0    # "copy":Landroid/content/SyncInfo;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    :cond_1
    monitor-exit v6

    .line 1234
    return-object v4
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 6

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1328
    .local v0, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1329
    return-object v0

    .line 1326
    .end local v0    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 843
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 844
    :try_start_0
    const-string/jumbo v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 845
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    .line 846
    const-wide/16 v4, 0x0

    monitor-exit v2

    return-wide v4

    .line 848
    :cond_0
    :try_start_1
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-wide v4

    .line 843
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 674
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 675
    if-eqz p1, :cond_1

    .line 677
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 678
    const-string/jumbo v5, "get authority syncable"

    .line 676
    invoke-direct {p0, v3, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 679
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    monitor-exit v4

    .line 680
    return v6

    .line 682
    :cond_0
    :try_start_1
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    .line 685
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 686
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    .line 687
    add-int/lit8 v2, v2, -0x1

    .line 688
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 689
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v3, :cond_2

    .line 690
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 689
    if-eqz v3, :cond_2

    .line 691
    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v3

    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v4

    .line 694
    return v6

    .line 674
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getMasterSyncAutomatically(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 908
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 910
    .local v0, "auto":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 908
    .end local v0    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v7, 0x0

    .line 1266
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1267
    :cond_0
    return-object v7

    .line 1269
    :cond_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1270
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1271
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1272
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1273
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1274
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2

    .line 1275
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1274
    if-eqz v4, :cond_2

    monitor-exit v5

    .line 1276
    return-object v2

    .line 1271
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_3
    monitor-exit v5

    .line 1279
    return-object v7

    .line 1269
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 616
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 617
    if-eqz p1, :cond_1

    .line 619
    :try_start_0
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 620
    const-string/jumbo v6, "getSyncAutomatically"

    .line 618
    invoke-direct {p0, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 621
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return v3

    .line 624
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 625
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    .line 626
    add-int/lit8 v2, v2, -0x1

    .line 627
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 628
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 629
    iget-boolean v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    if-eqz v5, :cond_2

    .line 630
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v4

    .line 633
    return v3

    .line 616
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1311
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1312
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1313
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1314
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 1316
    return-object v2

    .line 1310
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSyncRandomOffset()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 531
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 533
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    .line 530
    :cond_0
    return-void

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 535
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 537
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 536
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .prologue
    .line 1066
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1067
    :try_start_0
    const-string/jumbo v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1068
    const-string/jumbo v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertStartSyncEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v6, "insertStartSyncEvent"

    invoke-direct {p0, v4, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1071
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_1

    .line 1072
    const-wide/16 v6, -0x1

    monitor-exit v5

    return-wide v6

    .line 1074
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v1}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1075
    .local v1, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1076
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1077
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1078
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    if-gez v4, :cond_2

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1079
    :cond_2
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1080
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1081
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1082
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1083
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1084
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1085
    :goto_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_3

    .line 1086
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1066
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1088
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_2
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v2, v4

    .line 1089
    .local v2, "id":J
    const-string/jumbo v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v5

    .line 1092
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1093
    return-wide v2
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 925
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 926
    :try_start_0
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "syncInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 927
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v1, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 928
    .local v0, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .end local v0    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    monitor-exit v4

    .line 933
    const/4 v3, 0x0

    return v3

    .line 925
    .end local v2    # "syncInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1285
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1286
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1287
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1288
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1289
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1290
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    .line 1287
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1293
    :cond_1
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1296
    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1297
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 1300
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_2
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 1285
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pendingValue"    # Z

    .prologue
    .line 937
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 939
    const/4 v2, -0x1

    .line 940
    const/4 v4, 0x1

    .line 938
    :try_start_0
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 941
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 942
    return-void

    .line 944
    :cond_0
    :try_start_1
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v1

    .line 945
    .local v1, "status":Landroid/content/SyncStatusInfo;
    iput-boolean p2, v1, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 947
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 936
    return-void

    .line 937
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queueBackup()V
    .locals 1

    .prologue
    .line 2234
    const-string/jumbo v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2233
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 4
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1043
    :try_start_0
    const-string/jumbo v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    const-string/jumbo v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1045
    const-string/jumbo v3, " user="

    .line 1044
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1046
    const-string/jumbo v3, " auth="

    .line 1044
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1046
    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 1044
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    .line 1041
    return-void

    .line 1042
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1423
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1424
    :try_start_0
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1422
    return-void

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 552
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reportActiveChange()V
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1057
    return-void
.end method

.method reportChange(I)V
    .locals 8
    .param p1, "which"    # I

    .prologue
    .line 581
    const/4 v3, 0x0

    .line 582
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 583
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "i":I
    move-object v4, v3

    .line 584
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 585
    add-int/lit8 v1, v1, -0x1

    .line 586
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 587
    .local v2, "mask":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    .line 590
    if-nez v4, :cond_4

    .line 591
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 593
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_0

    .line 595
    .end local v2    # "mask":Ljava/lang/Integer;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    .line 598
    const-string/jumbo v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 599
    const-string/jumbo v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reportChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_2
    if-eqz v4, :cond_3

    .line 603
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 604
    :goto_2
    if-lez v1, :cond_3

    .line 605
    add-int/lit8 v1, v1, -0x1

    .line 607
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ISyncStatusObserver;

    invoke-interface {v5, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 608
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 582
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6

    throw v5

    .line 580
    .restart local v1    # "i":I
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_3
    return-void

    .line 582
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "mask":Ljava/lang/Integer;
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_4
    move-object v3, v4

    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_1
.end method

.method restoreAllPeriodicSyncs()Z
    .locals 12

    .prologue
    .line 872
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v1, :cond_0

    .line 873
    const/4 v1, 0x0

    return v1

    .line 875
    :cond_0
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v11

    .line 876
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 878
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "periodicSync$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/PeriodicSync;

    .line 879
    .local v9, "periodicSync":Landroid/content/PeriodicSync;
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 880
    iget-object v3, v9, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v4, v9, Landroid/content/PeriodicSync;->period:J

    iget-wide v6, v9, Landroid/content/PeriodicSync;->flexTime:J

    .line 879
    invoke-interface/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 875
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 882
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 876
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 884
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 886
    const/4 v1, 0x1

    return v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    .prologue
    .line 748
    const-string/jumbo v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const-string/jumbo v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackoff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 750
    const-string/jumbo v4, " -> nextSyncTime "

    .line 749
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 750
    const-string/jumbo v4, ", nextDelay "

    .line 749
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 754
    :try_start_0
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 758
    :cond_1
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 759
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 760
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v2, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 757
    invoke-direct/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    :goto_0
    monitor-exit v12

    .line 775
    if-eqz v11, :cond_2

    .line 776
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 747
    :cond_2
    return-void

    .line 764
    :cond_3
    const/4 v2, -0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 765
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_4

    .line 766
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_4

    .line 767
    const/4 v11, 0x0

    .line 766
    .local v11, "changed":Z
    goto :goto_0

    .line 769
    .end local v11    # "changed":Z
    :cond_4
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 770
    move-wide/from16 v0, p4

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    const/4 v11, 0x1

    .restart local v11    # "changed":Z
    goto :goto_0

    .line 753
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "changed":Z
    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .prologue
    const/4 v6, 0x1

    .line 853
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDelayUntil: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 855
    const-string/jumbo v3, " -> delayUntil "

    .line 854
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 858
    const/4 v1, -0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 859
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v4, p2

    if-nez v1, :cond_1

    monitor-exit v2

    .line 860
    return-void

    .line 862
    :cond_1
    :try_start_1
    iput-wide p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 864
    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 852
    return-void

    .line 857
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I

    .prologue
    .line 699
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 698
    return-void
.end method

.method public setMasterSyncAutomatically(ZI)V
    .locals 7
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 890
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 892
    .local v6, "auto":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    .line 893
    return-void

    .line 895
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 896
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 898
    if-eqz p1, :cond_1

    .line 900
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 899
    const/4 v3, -0x7

    move-object v0, p0

    move v2, p2

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 902
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 903
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 904
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 889
    return-void

    .line 890
    .end local v6    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_0

    .line 520
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 518
    :cond_0
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_0

    .line 514
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 512
    :cond_0
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .prologue
    .line 525
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_0

    .line 526
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 524
    :cond_0
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z

    .prologue
    const/4 v4, 0x2

    .line 639
    const-string/jumbo v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    const-string/jumbo v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncAutomatically:  provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    const-string/jumbo v2, ", user "

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    const-string/jumbo v2, " -> "

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 646
    :try_start_0
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 647
    const/4 v2, -0x1

    .line 648
    const/4 v3, 0x0

    .line 645
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 649
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v0, p4, :cond_2

    .line 650
    const-string/jumbo v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const-string/jumbo v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 653
    return-void

    .line 658
    :cond_2
    if-eqz p4, :cond_3

    :try_start_1
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, v4, :cond_3

    .line 659
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 661
    :cond_3
    iput-boolean p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 662
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 665
    if-eqz p4, :cond_4

    .line 667
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 666
    const/4 v3, -0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 669
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 670
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 638
    return-void

    .line 643
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .locals 1

    .prologue
    .line 1468
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .locals 19
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 1099
    :try_start_0
    const-string/jumbo v11, "SyncManager"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1100
    const-string/jumbo v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: historyId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    const/4 v5, 0x0

    .line 1103
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1104
    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    .line 1105
    add-int/lit8 v4, v4, -0x1

    .line 1106
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1107
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v14, v11

    cmp-long v11, v14, p1

    if-nez v11, :cond_2

    .line 1113
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_1
    if-nez v5, :cond_3

    .line 1114
    const-string/jumbo v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: no history for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 1115
    return-void

    .line 1110
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_2
    const/4 v5, 0x0

    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    goto :goto_0

    .line 1118
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_1
    move-wide/from16 v0, p3

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1119
    const/4 v11, 0x1

    iput v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1120
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1121
    move-wide/from16 v0, p6

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1122
    move-wide/from16 v0, p8

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1124
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    .line 1126
    .local v8, "status":Landroid/content/SyncStatusInfo;
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1127
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v14, v14, p3

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1128
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v11, :pswitch_data_0

    .line 1146
    :goto_1
    const/4 v9, 0x0

    .line 1147
    .local v9, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v2

    .line 1148
    .local v2, "day":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_a

    .line 1149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v14, 0x0

    aput-object v13, v11, v14

    .line 1156
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v3, v11, v13

    .line 1158
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v6, v14, p3

    .line 1159
    .local v6, "lastSyncTime":J
    const/4 v10, 0x0

    .line 1160
    .local v10, "writeStatusNow":Z
    const-string/jumbo v11, "success"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1162
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_5

    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_6

    .line 1163
    :cond_5
    const/4 v10, 0x1

    .line 1165
    :cond_6
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1166
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1167
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1168
    const/4 v11, -0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1169
    const/4 v11, 0x0

    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1170
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1171
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1172
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1187
    :cond_7
    :goto_3
    if-eqz v10, :cond_f

    .line 1188
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1193
    :cond_8
    :goto_4
    if-eqz v9, :cond_10

    .line 1194
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_5
    monitor-exit v12

    .line 1201
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1097
    return-void

    .line 1130
    .end local v2    # "day":I
    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v6    # "lastSyncTime":J
    .end local v9    # "writeStatisticsNow":Z
    .end local v10    # "writeStatusNow":Z
    :pswitch_0
    :try_start_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1098
    .end local v4    # "i":I
    .end local v8    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 1133
    .restart local v4    # "i":I
    .restart local v8    # "status":Landroid/content/SyncStatusInfo;
    :pswitch_1
    :try_start_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_1

    .line 1136
    :pswitch_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_1

    .line 1139
    :pswitch_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_1

    .line 1142
    :pswitch_4
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_1

    .line 1150
    .restart local v2    # "day":I
    .restart local v9    # "writeStatisticsNow":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v2, v11, :cond_b

    .line 1151
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v15, v13, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v14, 0x0

    aput-object v13, v11, v14

    .line 1153
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1154
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_4

    goto/16 :goto_2

    .line 1173
    .restart local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v6    # "lastSyncTime":J
    .restart local v10    # "writeStatusNow":Z
    :cond_c
    const-string/jumbo v11, "canceled"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1174
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_d

    .line 1175
    const/4 v10, 0x1

    .line 1177
    :cond_d
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1178
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1179
    move-object/from16 v0, p5

    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1180
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_e

    .line 1181
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1183
    :cond_e
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1184
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_3

    .line 1189
    :cond_f
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1190
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1191
    const-wide/32 v14, 0x927c0

    .line 1190
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 1195
    :cond_10
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1196
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1197
    const-wide/32 v14, 0x1b7740

    .line 1196
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 1128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public writeAllState()V
    .locals 2

    .prologue
    .line 1460
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1462
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1463
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1459
    return-void

    .line 1460
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
