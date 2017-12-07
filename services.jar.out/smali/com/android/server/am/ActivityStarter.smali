.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStarter$FlymeInjector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field private static final TAG_FOCUS:Ljava/lang/String;

.field private static final TAG_RESULTS:Ljava/lang/String;

.field private static final TAG_USER_LEAVING:Ljava/lang/String;

.field private static final USE_DEFAULT_EPHEMERAL_LAUNCHER:Z


# instance fields
.field mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

.field mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

.field mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

.field mIsIntercepted:Z

.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchFlags:I

.field private mLaunchSingleInstance:Z

.field private mLaunchSingleTask:Z

.field private mLaunchSingleTop:Z

.field private mLaunchTaskBehind:Z

.field private mMovedOtherTask:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerHintSent:Z

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private mReusedActivity:Lcom/android/server/am/ActivityRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    .line 129
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 225
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 226
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 227
    new-instance v0, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 224
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .prologue
    const/high16 v1, 0x80000

    .line 1859
    and-int v0, p4, v1

    if-eqz v0, :cond_1

    .line 1860
    if-nez p2, :cond_0

    .line 1859
    if-eqz p3, :cond_1

    .line 1862
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const v0, -0x8080001

    .line 1864
    and-int/2addr p4, v0

    .line 1881
    :goto_0
    :pswitch_0
    return p4

    .line 1867
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1871
    :pswitch_1
    or-int/2addr p4, v1

    .line 1872
    goto :goto_0

    .line 1874
    :pswitch_2
    or-int/2addr p4, v1

    .line 1875
    goto :goto_0

    .line 1877
    :pswitch_3
    const v0, -0x8000001

    and-int/2addr p4, v0

    .line 1878
    goto :goto_0

    .line 1867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 20
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "ephemeralPackage"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 529
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 530
    .local v18, "nonEphemeralIntent":Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 536
    const/4 v3, 0x1

    new-array v10, v3, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v18, v10, v3

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v11, v3

    .line 534
    const/4 v3, 0x2

    .line 535
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 537
    const/high16 v12, 0x54000000

    .line 538
    const/4 v13, 0x0

    move-object/from16 v4, p4

    move/from16 v6, p6

    .line 533
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v15

    .line 547
    .local v15, "failureIntentTarget":Landroid/content/IIntentSender;
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 553
    .local v14, "ephemeralIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 556
    const/4 v3, 0x1

    new-array v10, v3, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v14, v10, v3

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v11, v3

    .line 554
    const/4 v3, 0x2

    .line 555
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 557
    const/high16 v12, 0x54000000

    .line 558
    const/4 v13, 0x0

    move-object/from16 v4, p4

    move/from16 v6, p6

    .line 553
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v19

    .line 561
    .local v19, "successIntentTarget":Landroid/content/IIntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v16

    .line 562
    .local v16, "flags":I
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 564
    .local v17, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    .line 563
    or-int v2, v2, v16

    .line 565
    const v3, 0x8000

    .line 563
    or-int/2addr v2, v3

    .line 566
    const/high16 v3, 0x40000000    # 2.0f

    .line 563
    or-int/2addr v2, v3

    .line 567
    const/high16 v3, 0x800000

    .line 563
    or-int/2addr v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 568
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_FAILURE"

    new-instance v3, Landroid/content/IntentSender;

    invoke-direct {v3, v15}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 570
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_SUCCESS"

    new-instance v3, Landroid/content/IntentSender;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 573
    return-object v17
.end method

.method private computeLaunchingTaskFlags()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/4 v4, 0x0

    .line 1367
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_8

    .line 1368
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1369
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1370
    .local v2, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 1371
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1372
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Launching into task without base intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1373
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1372
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1378
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_3

    .line 1379
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1380
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1381
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to launch singleInstance/Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1382
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1382
    const-string/jumbo v5, " into different task "

    .line 1381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1382
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1384
    :cond_2
    if-eqz v2, :cond_3

    .line 1385
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1386
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Caller with mInTask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1387
    const-string/jumbo v5, " has root "

    .line 1386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1387
    const-string/jumbo v5, " but target is singleInstance/Task"

    .line 1386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1393
    :cond_3
    if-nez v2, :cond_6

    .line 1394
    const v1, 0x18082000

    .line 1396
    .local v1, "flagsOfInterest":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, -0x18082001

    and-int/2addr v3, v4

    .line 1397
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v5, 0x18082000

    and-int/2addr v4, v5

    .line 1396
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1398
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1399
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1400
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1412
    .end local v1    # "flagsOfInterest":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1426
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_5

    .line 1427
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_a

    .line 1430
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_5

    .line 1431
    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1432
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1431
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1364
    :cond_5
    :goto_2
    return-void

    .line 1405
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_7

    .line 1406
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_0

    .line 1409
    :cond_7
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_0

    .line 1414
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_8
    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1420
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_4

    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    .line 1421
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v3

    .line 1420
    if-eqz v3, :cond_4

    .line 1422
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    .line 1435
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 1439
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    .line 1440
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_5

    .line 1443
    :cond_c
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_2
.end method

.method private computeSourceStack()V
    .locals 5

    .prologue
    const/high16 v4, 0x10000000

    const/4 v3, 0x0

    .line 1449
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    .line 1450
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1451
    return-void

    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 1454
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1455
    return-void

    .line 1462
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    .line 1463
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity called from finishing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1464
    const-string/jumbo v2, "; forcing "

    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1464
    const-string/jumbo v2, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1464
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1466
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1467
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1469
    :cond_2
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1470
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1448
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "launchFlags"    # I
    .param p5, "aOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1903
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1904
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v10

    :goto_0
    if-nez v10, :cond_2

    .line 1905
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v10

    .line 1904
    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1908
    :cond_2
    move/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, p1, v0, v9, v1}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1909
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_3

    .line 1910
    return-object v6

    .line 1913
    :cond_3
    if-eqz v9, :cond_5

    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_5

    .line 1914
    iget-object v6, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1915
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1916
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v10, v6, :cond_4

    .line 1926
    :cond_4
    return-object v6

    .line 1929
    :cond_5
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1930
    .local v3, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v3, :cond_6

    .line 1932
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1933
    iget-object v10, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v10

    .line 1940
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v4, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1941
    .local v4, "focusedStackId":I
    const/4 v10, 0x1

    if-eq v4, v10, :cond_9

    .line 1942
    const/4 v10, 0x3

    if-ne v4, v10, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canGoInDockedStack()Z

    move-result v10

    .line 1941
    if-nez v10, :cond_9

    .line 1943
    :cond_7
    const/4 v10, 0x2

    if-ne v4, v10, :cond_a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeableOrForced()Z

    move-result v2

    .line 1944
    .local v2, "canUseFocusedStack":Z
    :goto_1
    if-eqz v2, :cond_b

    if-eqz p2, :cond_8

    .line 1945
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v10

    .line 1944
    if-eqz v10, :cond_b

    .line 1948
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v10

    .line 1941
    .end local v2    # "canUseFocusedStack":Z
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 1943
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 1952
    .restart local v2    # "canUseFocusedStack":Z
    :cond_b
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v10, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1953
    .local v5, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "stackNdx":I
    :goto_2
    if-ltz v8, :cond_d

    .line 1954
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    check-cast v6, Lcom/android/server/am/ActivityStack;

    .line 1955
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    iget v10, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1958
    return-object v6

    .line 1953
    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 1963
    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v7

    .line 1966
    .local v7, "stackId":I
    :goto_3
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v10, v7, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1969
    return-object v6

    .line 1964
    .end local v7    # "stackId":I
    :cond_e
    if-eqz p3, :cond_f

    const/4 v7, 0x2

    .restart local v7    # "stackId":I
    goto :goto_3

    .line 1965
    .end local v7    # "stackId":I
    :cond_f
    const/4 v7, 0x1

    .restart local v7    # "stackId":I
    goto :goto_3
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1976
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_0

    .line 1977
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 1981
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v1

    .line 1983
    .local v1, "launchStackId":I
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityStarter;->isValidLaunchStackId(ILcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1984
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 1981
    .end local v1    # "launchStackId":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 1985
    .restart local v1    # "launchStackId":I
    :cond_2
    if-ne v1, v6, :cond_3

    .line 1988
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 1991
    :cond_3
    and-int/lit16 v3, p2, 0x1000

    if-nez v3, :cond_4

    .line 1992
    return-object v4

    .line 1998
    :cond_4
    if-eqz p3, :cond_5

    iget-object v2, p3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2002
    .local v2, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v3, :cond_7

    .line 2004
    return-object v2

    .line 1999
    .end local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .restart local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_1

    .line 2000
    .end local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .restart local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_1

    .line 2006
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne p3, v3, :cond_8

    .line 2009
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 2012
    :cond_8
    if-eqz v2, :cond_9

    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v6, :cond_9

    .line 2015
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    return-object v3

    .line 2021
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2022
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_a

    .line 2023
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    if-nez v3, :cond_a

    .line 2025
    return-object v4

    .line 2027
    :cond_a
    return-object v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1483
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v3, v6

    if-eqz v3, :cond_2

    .line 1484
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x8000000

    and-int/2addr v3, v6

    if-nez v3, :cond_2

    .line 1483
    :cond_0
    const/4 v1, 0x1

    .line 1489
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    and-int/2addr v1, v3

    .line 1490
    .local v1, "putIntoExistingTask":Z
    const/4 v0, 0x0

    .line 1491
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_5

    .line 1492
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 1493
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1509
    .end local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :goto_2
    return-object v0

    .line 1485
    .end local v1    # "putIntoExistingTask":Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1483
    if-nez v3, :cond_0

    .line 1485
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .restart local v1    # "putIntoExistingTask":Z
    goto :goto_0

    .end local v1    # "putIntoExistingTask":Z
    :cond_3
    move v3, v5

    .line 1489
    goto :goto_1

    .line 1493
    .restart local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "putIntoExistingTask":Z
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1494
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    if-eqz v1, :cond_1

    .line 1495
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-eqz v3, :cond_6

    .line 1498
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    .line 1499
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_8

    .line 1502
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1503
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v8, :cond_7

    .line 1502
    :goto_3
    invoke-virtual {v3, v6, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_7
    move v5, v4

    .line 1503
    goto :goto_3

    .line 1506
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_2
.end method

.method private isValidLaunchStackId(ILcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2034
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    .line 2036
    :cond_0
    return v2

    .line 2035
    :cond_1
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2039
    if-eq p1, v3, :cond_2

    .line 2040
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isResizeableOrForced()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2044
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->canGoInDockedStack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2045
    return v3

    .line 2041
    :cond_3
    return v2

    .line 2048
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_7

    .line 2052
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_9

    .line 2053
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    .line 2054
    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_a

    .line 2057
    :cond_6
    return v3

    .line 2049
    :cond_7
    return v2

    .line 2053
    :cond_8
    const/4 v0, 0x1

    .local v0, "supportsPip":Z
    goto :goto_0

    .line 2052
    .end local v0    # "supportsPip":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "supportsPip":Z
    goto :goto_0

    .line 2055
    .end local v0    # "supportsPip":Z
    :cond_a
    return v2
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 188
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 190
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 192
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 196
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 198
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    .line 200
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 201
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 202
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 203
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 205
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 206
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 207
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 209
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 210
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 211
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 213
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 214
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 216
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 220
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 221
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 186
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1686
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1694
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1683
    return-void

    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_0
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1351
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    .line 1357
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1359
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 1358
    const/4 v1, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1360
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1350
    :cond_0
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->reset()V

    .line 1257
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1258
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1259
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1260
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1261
    iput-object p6, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1262
    iput-object p7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1263
    iput-object p8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1265
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1267
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 1268
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1269
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1271
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 1270
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1272
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_0

    .line 1273
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    if-eqz v3, :cond_b

    .line 1272
    :cond_0
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1276
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1278
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1

    .line 1279
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1284
    :cond_1
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 1285
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v3, :cond_2

    .line 1286
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1287
    :cond_2
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1293
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v3, v5

    if-nez v3, :cond_d

    const/4 v3, 0x1

    :goto_4
    iput-boolean v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1300
    iput-boolean p4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1301
    if-eqz p4, :cond_e

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1306
    :goto_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1307
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 1308
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1309
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1310
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    :goto_6
    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_10

    .line 1319
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_7
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move-object v3, p1

    :goto_8
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1321
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1326
    if-eqz p3, :cond_5

    iget-boolean v3, p3, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v3, :cond_12

    .line 1331
    :cond_5
    :goto_9
    iput p5, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1335
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_7

    .line 1336
    move-object v0, p6

    .line 1337
    .local v0, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez p6, :cond_6

    .line 1338
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1339
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1338
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1341
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1343
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1347
    .end local v0    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    :goto_a
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1254
    return-void

    .line 1267
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1268
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1269
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1273
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    if-nez v3, :cond_0

    .line 1274
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1293
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1302
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1303
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    goto/16 :goto_5

    .line 1309
    .restart local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 1314
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_10
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1315
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    goto :goto_7

    .line 1319
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_11
    const/4 v3, 0x0

    goto :goto_8

    .line 1327
    :cond_12
    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    goto :goto_9

    .line 1347
    :cond_13
    const/4 v3, 0x0

    goto :goto_a
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 13
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const v2, 0x10008000

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1513
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1514
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v12, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1519
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 1520
    .local v8, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_3

    move-object v7, v12

    .line 1523
    .local v7, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v7, :cond_1

    .line 1524
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v1, :cond_0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1525
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-eqz v0, :cond_4

    .line 1579
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_2

    .line 1582
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "intentActivityFound"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1585
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1586
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1585
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    .line 1589
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 1590
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 1521
    .end local v7    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    goto :goto_0

    .line 1526
    .restart local v7    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1527
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1528
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v1, :cond_1

    .line 1530
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_6

    .line 1531
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1533
    :cond_6
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 1542
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    move v10, v11

    .line 1544
    .local v10, "willClearTask":Z
    :cond_7
    if-nez v10, :cond_a

    .line 1546
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1545
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 1547
    .local v9, "launchStack":Lcom/android/server/am/ActivityStack;
    if-eqz v9, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v9, v0, :cond_b

    .line 1551
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1552
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1553
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "bringingFoundTaskToFront"

    .line 1551
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1554
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 1574
    :cond_9
    :goto_2
    iput-object v12, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1576
    .end local v9    # "launchStack":Lcom/android/server/am/ActivityStack;
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-direct {p0, v0, v1, v8}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    goto/16 :goto_1

    .line 1555
    .restart local v9    # "launchStack":Lcom/android/server/am/ActivityStack;
    :cond_b
    iget v0, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 1556
    iget v0, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v0, v11, :cond_9

    .line 1557
    :cond_c
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    .line 1560
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1561
    iget v2, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-string/jumbo v5, "launchToSide"

    move v3, v11

    move v4, v11

    move v6, v11

    .line 1560
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    .line 1572
    :goto_3
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_2

    .line 1568
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1569
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1570
    const-string/jumbo v5, "bringToFrontInsteadOfAdjacentLaunch"

    .line 1568
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_3

    .line 1592
    .end local v9    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "willClearTask":Z
    :cond_e
    return-object p1
.end method

.method private setTaskFromInTask()I
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1794
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1795
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1796
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v2

    .line 1797
    .local v2, "stackId":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v2, v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1799
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v5, "inTaskToFront"

    .line 1798
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackUncheckedLocked(Lcom/android/server/am/TaskRecord;IZZLjava/lang/String;)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 1800
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    iget v2, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1802
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1803
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v11, -0x1

    move v6, v2

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 1806
    .end local v2    # "stackId":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1807
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1808
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "inTaskToFront"

    .line 1807
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 1813
    .local v13, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_4

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v0, v1, :cond_4

    .line 1814
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1815
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 1814
    if-nez v0, :cond_2

    .line 1815
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1814
    if-eqz v0, :cond_4

    .line 1816
    :cond_2
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v1, 0x7533

    invoke-static {v1, v13, v0}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1817
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1820
    return v3

    .line 1822
    :cond_3
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v13, v0, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1823
    const/4 v0, 0x3

    return v0

    .line 1827
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_5

    .line 1830
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1831
    const/4 v0, 0x2

    return v0

    .line 1834
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1838
    return v4
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const v1, 0x10008000

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1613
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1617
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1618
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 1619
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1623
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1625
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1624
    if-nez v0, :cond_2

    .line 1625
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1624
    if-eqz v0, :cond_4

    .line 1626
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1627
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1626
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1628
    .local v7, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_0

    .line 1632
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1635
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1636
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1637
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1641
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v0, p0

    .line 1640
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1642
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1643
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_3

    :goto_1
    const-string/jumbo v1, "startActivityUnchecked"

    .line 1642
    invoke-virtual {v0, v6, v2, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v8

    .line 1643
    goto :goto_1

    .line 1646
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1651
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    if-eqz v0, :cond_7

    .line 1652
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1651
    if-eqz v0, :cond_7

    .line 1653
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1654
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1653
    const/16 v2, 0x7533

    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1655
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_6

    .line 1656
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1658
    :cond_6
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1659
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1658
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1660
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1664
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    .line 1666
    :cond_8
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_9

    .line 1671
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1672
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    .line 1673
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_0

    .line 1679
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;)V
    .locals 12
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    .line 1698
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1699
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v0, p0

    .line 1698
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1701
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_5

    .line 1702
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1703
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v4

    .line 1704
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1705
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1706
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_3

    move v9, v11

    .line 1702
    :goto_2
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 1707
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v10, p1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1708
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1710
    .local v4, "stackId":I
    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1711
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1712
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    const/4 v9, -0x1

    move v6, v2

    move v7, v11

    move v8, v2

    .line 1711
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 1697
    .end local v4    # "stackId":I
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_3
    return-void

    .line 1704
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 1705
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v9, v2

    .line 1706
    goto :goto_2

    .line 1714
    .restart local v4    # "stackId":I
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    goto :goto_3

    .line 1721
    .end local v4    # "stackId":I
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto :goto_3
.end method

.method private setTaskFromSourceRecord()I
    .locals 12

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1730
    .local v8, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v0, v8, :cond_5

    const/4 v7, 0x1

    .line 1731
    .local v7, "moveStackAllowed":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1733
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1732
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_6

    .line 1737
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1742
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_2

    .line 1743
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "sourceStackToFront"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1745
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 1746
    .local v11, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v11, v8, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-eqz v0, :cond_7

    .line 1750
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 1753
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 1754
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 1755
    if-eqz v10, :cond_a

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v2, 0x7533

    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1757
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1759
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1760
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_4

    .line 1761
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1763
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1764
    const/4 v0, 0x3

    return v0

    .line 1730
    .end local v7    # "moveStackAllowed":Z
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1738
    .restart local v7    # "moveStackAllowed":Z
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_1

    .line 1739
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1740
    const-string/jumbo v5, "launchToSide"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1739
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    goto :goto_1

    .line 1747
    .restart local v11    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1748
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v5, "sourceTaskToFront"

    move-object v1, v8

    .line 1747
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_2

    .line 1766
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 1770
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 1771
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_a

    .line 1772
    iget-object v9, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1773
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9, v10}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1774
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1775
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/16 v1, 0x7533

    invoke-static {v1, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1776
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1778
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_9

    .line 1779
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1781
    :cond_9
    const/4 v0, 0x3

    return v0

    .line 1787
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1790
    const/4 v0, 0x0

    return v0
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 1842
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1843
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1842
    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1844
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1848
    .local v11, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_1

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1851
    .local v12, "task":Lcom/android/server/am/TaskRecord;
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v12, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1852
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 1841
    return-void

    .line 1848
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1849
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    .line 1850
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v10, 0x1

    move-object v8, v3

    move-object v9, v3

    .line 1848
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v12

    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_0
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p6

    move/from16 v7, p5

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 1028
    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1037
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v13

    .line 1042
    .local v13, "preferredLaunchStackId":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_9

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1047
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v5, 0x10008000

    and-int/2addr v2, v5

    .line 1048
    const v5, 0x10008000

    .line 1047
    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    .line 1046
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 1050
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v2, 0x5

    return v2

    .line 1040
    .end local v13    # "preferredLaunchStackId":I
    :cond_0
    const/4 v13, -0x1

    .restart local v13    # "preferredLaunchStackId":I
    goto :goto_0

    .line 1047
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1054
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_3

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1057
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v2, :cond_4

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1066
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-nez v2, :cond_5

    .line 1067
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    .line 1066
    if-nez v2, :cond_5

    .line 1067
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    .line 1066
    if-eqz v2, :cond_7

    .line 1071
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1071
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 1073
    .local v16, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_7

    .line 1074
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_6

    .line 1077
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1079
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v4, 0x7533

    invoke-static {v4, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1080
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1080
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1085
    .end local v16    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(Z)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1089
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1094
    const/4 v2, 0x1

    return v2

    .line 1096
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1098
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_9

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1102
    const/4 v2, 0x2

    return v2

    .line 1106
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_a

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v3, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 1109
    const/4 v3, -0x1

    .line 1110
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1108
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1112
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1113
    const/4 v2, -0x2

    return v2

    .line 1118
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 1119
    .local v17, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 1120
    .restart local v16    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_e

    .line 1121
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1120
    if-eqz v2, :cond_e

    .line 1122
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v2, v3, :cond_e

    .line 1123
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_e

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_e

    .line 1124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-nez v2, :cond_d

    .line 1125
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    .line 1124
    if-nez v2, :cond_d

    .line 1125
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    :goto_2
    move v11, v2

    .line 1126
    .local v11, "dontStart":Z
    :goto_3
    if-eqz v11, :cond_10

    .line 1127
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v3, 0x7533

    move-object/from16 v0, v16

    invoke-static {v3, v0, v2}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1129
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1130
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_c

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1133
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    .line 1137
    const/4 v2, 0x1

    return v2

    .line 1124
    .end local v11    # "dontStart":Z
    :cond_d
    const/4 v2, 0x1

    goto :goto_2

    .line 1120
    :cond_e
    const/4 v11, 0x0

    goto :goto_3

    .line 1140
    .restart local v11    # "dontStart":Z
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1139
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1145
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1144
    invoke-virtual {v2, v3, v13, v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    .line 1147
    const/4 v2, 0x3

    return v2

    .line 1150
    :cond_10
    const/4 v12, 0x0

    .line 1151
    .local v12, "newTask":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_12

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1155
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-eqz v2, :cond_13

    .line 1171
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1c

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1173
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v2, 0x5

    return v2

    .line 1152
    :cond_12
    const/4 v15, 0x0

    .local v15, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    goto :goto_4

    .line 1156
    .end local v15    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 1157
    const/4 v12, 0x1

    .line 1158
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1161
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v2, 0x5

    return v2

    .line 1164
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    if-nez v2, :cond_16

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1169
    const/4 v4, -0x1

    if-eq v13, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    .line 1168
    .end local v17    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1199
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v7, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1199
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1205
    :cond_17
    if-eqz v12, :cond_18

    .line 1206
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0x7534

    .line 1206
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1210
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/16 v4, 0x7535

    .line 1209
    invoke-static {v4, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(Z)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3, v12, v4, v5}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1216
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_20

    .line 1217
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v2, :cond_19

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v4, "startedActivity"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 1223
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 1224
    .local v18, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1225
    if-eqz v18, :cond_1f

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1f

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v18

    if-eq v2, v0, :cond_1f

    .line 1233
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1244
    .end local v18    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1246
    invoke-virtual {v2, v3, v13, v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    .line 1249
    const/4 v2, 0x0

    return v2

    .line 1177
    .restart local v17    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v14

    .line 1178
    .local v14, "result":I
    if-eqz v14, :cond_16

    .line 1179
    return v14

    .line 1181
    .end local v14    # "result":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1e

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1185
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v2, 0x5

    return v2

    .line 1189
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v14

    .line 1190
    .restart local v14    # "result":I
    if-eqz v14, :cond_16

    .line 1191
    return v14

    .line 1196
    .end local v14    # "result":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto/16 :goto_5

    .line 1238
    .end local v17    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v18    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1238
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_6

    .line 1242
    .end local v18    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_6
.end method

.method private updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "launchFlags"    # I
    .param p3, "focusedStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const v3, 0x10004000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1597
    and-int v0, p2, v3

    if-ne v0, v3, :cond_0

    .line 1600
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1601
    return-void

    .line 1602
    :cond_0
    if-eqz p3, :cond_1

    iget v0, p3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v0, :cond_2

    .line 1604
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1605
    return-void

    .line 1609
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1596
    return-void
.end method


# virtual methods
.method final doPendingActivityLaunchesLocked(Z)V
    .locals 11
    .param p1, "doResume"    # Z

    .prologue
    .line 1885
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1886
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 1887
    .local v10, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    .line 1890
    :goto_1
    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v5, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 1889
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    .line 1892
    .local v2, "result":I
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1893
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v0, p0

    .line 1891
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1894
    .end local v2    # "result":I
    :catch_0
    move-exception v9

    .line 1895
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception during pending activity launch pal="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1896
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    goto :goto_0

    .line 1887
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    .local v6, "resume":Z
    goto :goto_1

    .line 1884
    .end local v6    # "resume":Z
    .end local v10    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2061
    const/4 v0, 0x0

    .line 2062
    .local v0, "newBounds":Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2063
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2064
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v2

    .line 2063
    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2065
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2068
    .end local v0    # "newBounds":Landroid/graphics/Rect;
    :cond_1
    return-object v0
.end method

.method postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "prevFocusedStackId"    # I
    .param p4, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 580
    if-gez p2, :cond_0

    .line 584
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 585
    return-void

    .line 591
    :cond_0
    if-ne p2, v7, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 595
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 596
    .local v2, "startedActivityStackId":I
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_7

    .line 597
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 610
    :cond_2
    :goto_1
    if-eqz p4, :cond_9

    .line 611
    iget-boolean v4, p4, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 610
    if-eqz v4, :cond_9

    .line 612
    iget-object v4, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-ne v4, v8, :cond_8

    const/4 v1, 0x1

    .line 613
    .local v1, "noDisplayActivityOverHome":Z
    :goto_2
    if-ne v2, v9, :cond_a

    .line 614
    if-eqz p3, :cond_3

    .line 613
    if-eqz v1, :cond_a

    .line 615
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 616
    .local v0, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4

    .line 617
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 618
    .local v3, "topActivityHomeStack":Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v3, :cond_5

    .line 619
    iget v4, v3, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-eq v4, v7, :cond_a

    .line 624
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    .line 625
    return-void

    .line 592
    .end local v0    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "noDisplayActivityOverHome":Z
    .end local v2    # "startedActivityStackId":I
    .end local v3    # "topActivityHomeStack":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->reportTaskToFrontNoLaunch(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 598
    .restart local v2    # "startedActivityStackId":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_2

    .line 599
    iget v2, p5, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1

    .line 612
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "noDisplayActivityOverHome":Z
    goto :goto_2

    .line 610
    .end local v1    # "noDisplayActivityOverHome":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "noDisplayActivityOverHome":Z
    goto :goto_2

    .line 629
    :cond_a
    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    .line 630
    if-eq p2, v7, :cond_b

    if-ne p2, v9, :cond_c

    .line 634
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->notifyPinnedActivityRestartAttemptLocked()V

    .line 635
    return-void

    .line 578
    :cond_c
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 2076
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2077
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 2078
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_0

    .line 2079
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2076
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2075
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1018
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1020
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    .line 1016
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(Z)V
    .locals 5
    .param p1, "forceSend"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1004
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1005
    .local v1, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_2

    .line 1006
    const/4 v0, 0x0

    .line 1007
    :goto_0
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1008
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 1009
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v3, :cond_1

    .line 1010
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_1

    .line 1011
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1012
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    .line 1002
    :cond_1
    return-void

    .line 1006
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "curTop":Lcom/android/server/am/ActivityRecord;
    goto :goto_0
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 2072
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2071
    return-void
.end method

.method showConfirmDeviceCredential(I)V
    .locals 21
    .param p1, "userId"    # I

    .prologue
    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 662
    .local v17, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v16

    .line 663
    .local v16, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v17, :cond_0

    .line 664
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    move-object/from16 v20, v17

    .line 674
    .local v20, "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-nez v20, :cond_2

    .line 675
    return-void

    .line 667
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    if-eqz v16, :cond_1

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    move-object/from16 v20, v16

    .line 668
    .restart local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 672
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v20

    .restart local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 677
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 678
    const-string/jumbo v3, "keyguard"

    .line 677
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/KeyguardManager;

    .line 680
    .local v18, "km":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v15

    .line 682
    .local v15, "credential":Landroid/content/Intent;
    if-nez v15, :cond_3

    .line 683
    return-void

    .line 685
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 686
    .local v14, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_4

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 689
    iget-object v4, v14, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 690
    iget v5, v14, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 691
    iget v6, v14, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 693
    const/4 v3, 0x1

    new-array v10, v3, [Landroid/content/Intent;

    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v3, v10, v7

    .line 694
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v11, v7

    .line 688
    const/4 v3, 0x2

    .line 692
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 695
    const/high16 v12, 0x54000000

    .line 698
    const/4 v13, 0x0

    .line 687
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v19

    .line 699
    .local v19, "target":Landroid/content/IIntentSender;
    const-string/jumbo v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/IntentSender;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 701
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStarter;->startConfirmCredentialIntent(Landroid/content/Intent;)V

    .line 656
    .end local v19    # "target":Landroid/content/IIntentSender;
    :cond_4
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 926
    if-nez p4, :cond_0

    .line 927
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :cond_0
    if-nez p5, :cond_1

    .line 930
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 932
    :cond_1
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 933
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 937
    .local v19, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 940
    .local v20, "realCallingUid":I
    if-ltz p2, :cond_3

    .line 941
    const/16 v16, -0x1

    .line 948
    .local v16, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 950
    .local v30, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 951
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v25, v0

    .line 952
    .local v25, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v28, 0x0

    .end local p6    # "resultTo":Landroid/os/IBinder;
    .local v28, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_c

    .line 953
    aget-object v29, p4, v28

    .line 954
    .local v29, "intent":Landroid/content/Intent;
    if-nez v29, :cond_5

    move-object/from16 v3, v29

    .line 952
    .end local v29    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 942
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v16    # "callingPid":I
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v30    # "origId":J
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :cond_3
    if-nez p1, :cond_4

    .line 943
    move/from16 v16, v19

    .line 944
    .restart local v16    # "callingPid":I
    move/from16 p2, v20

    goto :goto_0

    .line 946
    .end local v16    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    const/16 v16, -0x1

    .restart local v16    # "callingPid":I
    goto :goto_0

    .line 959
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "origId":J
    :cond_5
    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 960
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v29    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 995
    :catchall_1
    move-exception v2

    .line 996
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 995
    throw v2

    .line 963
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v24, 0x1

    .line 966
    .local v24, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 969
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v4, p5, v28

    const/4 v5, 0x0

    .line 970
    const/4 v6, 0x0

    move/from16 v7, p8

    .line 969
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 972
    .local v9, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 974
    if-eqz v9, :cond_8

    .line 975
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 977
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 978
    const-string/jumbo v4, "FLAG_CANT_SAVE_STATE not supported here"

    .line 977
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 963
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "componentSpecified":Z
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v24, 0x0

    .restart local v24    # "componentSpecified":Z
    goto :goto_3

    .line 982
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_9

    move-object/from16 v2, p7

    .line 981
    :goto_4
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v22

    .line 984
    .local v22, "options":Landroid/app/ActivityOptions;
    aget-object v8, p5, v28

    .line 983
    const/4 v7, 0x0

    .line 984
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    .line 986
    const/16 v21, 0x0

    .line 987
    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v13, p6

    move/from16 v17, p2

    move-object/from16 v18, p3

    .line 983
    invoke-virtual/range {v4 .. v27}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v32

    .line 988
    .local v32, "res":I
    if-gez v32, :cond_a

    :try_start_4
    monitor-exit v33

    .line 950
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 996
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    return v32

    .line 982
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v32    # "res":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 992
    .restart local v22    # "options":Landroid/app/ActivityOptions;
    .restart local v32    # "res":I
    :cond_a
    const/4 v2, 0x0

    :try_start_5
    aget-object v2, v25, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    aget-object v2, v25, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local p6    # "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_b
    const/16 p6, 0x0

    .local p6, "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v24    # "componentSpecified":Z
    .end local v32    # "res":I
    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_c
    :try_start_6
    monitor-exit v33

    .line 950
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 996
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 999
    const/4 v2, 0x0

    return v2
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 51
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Landroid/app/ActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p23, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 238
    const/4 v9, 0x0

    .line 240
    .local v9, "err":I
    const/16 v16, 0x0

    .line 241
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 243
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v16, :cond_3

    .line 244
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p12, v0

    .line 245
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p13, v0

    .line 254
    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_0
    :goto_0
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 256
    .local v21, "userId":I
    :goto_1
    if-nez v9, :cond_1

    .line 257
    sget-object v7, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "START u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 258
    const-string/jumbo v8, "} from uid "

    .line 257
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p13

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 259
    const-string/jumbo v8, " on display "

    .line 257
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 259
    if-nez p22, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v5, :cond_5

    .line 260
    const/4 v5, 0x0

    .line 257
    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    const/16 v39, 0x0

    .line 266
    .local v39, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 267
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p9, :cond_2

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v39

    .line 271
    .local v39, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v39, :cond_2

    .line 272
    if-ltz p11, :cond_2

    move-object/from16 v0, v39

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_8

    .line 278
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v47

    .line 280
    .local v47, "launchFlags":I
    const/high16 v5, 0x2000000

    and-int v5, v5, v47

    if-eqz v5, :cond_c

    if-eqz v39, :cond_c

    .line 283
    if-ltz p11, :cond_9

    .line 284
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 285
    const/4 v5, -0x3

    return v5

    .line 247
    .end local v21    # "userId":I
    .end local v47    # "launchFlags":I
    .restart local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 248
    const-string/jumbo v8, " (pid="

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 248
    const-string/jumbo v8, ") when starting: "

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v9, -0x4

    goto/16 :goto_0

    .line 254
    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const/16 v21, 0x0

    .restart local v21    # "userId":I
    goto/16 :goto_1

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_2

    .line 261
    :cond_6
    move-object/from16 v0, p22

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 262
    :cond_7
    move-object/from16 v0, p22

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto/16 :goto_2

    .line 273
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v6, v39

    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    .line 287
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "launchFlags":I
    :cond_9
    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 288
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 291
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_a
    :goto_4
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p10, v0

    .line 292
    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p11, v0

    .line 293
    const/4 v5, 0x0

    move-object/from16 v0, v39

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 294
    if-eqz v6, :cond_b

    .line 295
    move-object/from16 v0, v39

    move-object/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 297
    :cond_b
    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p13

    if-ne v5, v0, :cond_c

    .line 308
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p14, v0

    .line 312
    :cond_c
    if-nez v9, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_d

    .line 315
    const/4 v9, -0x1

    .line 318
    :cond_d
    if-nez v9, :cond_e

    if-nez p5, :cond_e

    .line 321
    const/4 v9, -0x2

    .line 324
    :cond_e
    if-nez v9, :cond_f

    if-eqz v39, :cond_f

    .line 325
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_f

    .line 330
    const/high16 v5, 0x10000000

    and-int v5, v5, v47

    if-nez v5, :cond_f

    .line 331
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v7, :cond_f

    .line 333
    :try_start_0
    const-string/jumbo v5, "android.intent.category.VOICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 334
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 336
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 336
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    const/4 v9, -0x7

    .line 348
    :cond_f
    :goto_5
    if-nez v9, :cond_13

    if-eqz p7, :cond_13

    .line 352
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 354
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity being started in new voice task does not support: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 354
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    const/4 v9, -0x7

    :cond_10
    move/from16 v45, v9

    .line 365
    .end local v9    # "err":I
    .local v45, "err":I
    :goto_6
    if-nez v6, :cond_14

    const/4 v4, 0x0

    .line 367
    :goto_7
    if-eqz v45, :cond_15

    .line 368
    if-eqz v6, :cond_11

    .line 370
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p10

    move/from16 v8, p11

    .line 369
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 372
    :cond_11
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 373
    return v45

    .line 289
    .end local v45    # "err":I
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "err":I
    :cond_12
    const/4 v6, 0x0

    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_4

    .line 341
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v44

    .line 342
    .local v44, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure checking voice capabilities"

    move-object/from16 v0, v44

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v9, -0x7

    goto :goto_5

    .end local v44    # "e":Landroid/os/RemoteException;
    :cond_13
    move/from16 v45, v9

    .line 348
    .end local v9    # "err":I
    .restart local v45    # "err":I
    goto :goto_6

    .line 359
    .end local v45    # "err":I
    .restart local v9    # "err":I
    :catch_1
    move-exception v44

    .line 360
    .restart local v44    # "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failure checking voice capabilities"

    move-object/from16 v0, v44

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v9, -0x7

    move/from16 v45, v9

    .end local v9    # "err":I
    .restart local v45    # "err":I
    goto :goto_6

    .line 365
    .end local v44    # "e":Landroid/os/RemoteException;
    :cond_14
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    goto :goto_7

    .line 376
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_15
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p19

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, p18

    invoke-virtual/range {v7 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v43, 0x0

    .line 379
    .local v43, "abort":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 380
    move-object/from16 v0, p5

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, p2

    move/from16 v9, p13

    move/from16 v10, p12

    move-object/from16 v11, p4

    .line 379
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x0

    :goto_9
    or-int v43, v43, v5

    .line 382
    .local v43, "abort":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_16

    .line 386
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v50

    .line 387
    .local v50, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 388
    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 387
    move-object/from16 v0, v50

    invoke-interface {v5, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    :goto_a
    or-int v43, v43, v5

    .line 394
    .end local v50    # "watchIntent":Landroid/content/Intent;
    :cond_16
    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v8, v21

    move/from16 v9, p15

    move/from16 v10, p16

    move/from16 v11, p17

    move-object/from16 v12, p14

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p23

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p18

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move-object/from16 p2, v0

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 p6, v0

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 p5, v0

    .line 400
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    move-object/from16 p4, v0

    .line 401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 p23, v0

    .line 402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    move/from16 p12, v0

    .line 403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    move/from16 p13, v0

    .line 404
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 p18, v0

    .line 405
    if-eqz v43, :cond_1b

    .line 406
    if-eqz v6, :cond_17

    .line 407
    const/4 v5, -0x1

    .line 408
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p10

    move/from16 v8, p11

    .line 407
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 412
    :cond_17
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 413
    const/4 v5, 0x0

    return v5

    .line 376
    .end local v43    # "abort":Z
    :cond_18
    const/16 v43, 0x1

    .local v43, "abort":Z
    goto/16 :goto_8

    .line 379
    :cond_19
    const/4 v5, 0x1

    goto/16 :goto_9

    .line 387
    .local v43, "abort":Z
    .restart local v50    # "watchIntent":Landroid/content/Intent;
    :cond_1a
    const/4 v5, 0x1

    goto/16 :goto_a

    .line 389
    .end local v50    # "watchIntent":Landroid/content/Intent;
    :catch_2
    move-exception v44

    .line 390
    .restart local v44    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto/16 :goto_b

    .line 419
    .end local v44    # "e":Landroid/os/RemoteException;
    :cond_1b
    sget-boolean v5, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    if-eqz v5, :cond_1d

    if-eqz p5, :cond_1d

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    .line 421
    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 420
    move/from16 v0, v21

    invoke-virtual {v5, v7, v0}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    .line 424
    const/4 v5, 0x1

    new-array v0, v5, [Landroid/content/Intent;

    move-object/from16 v25, v0

    const/4 v5, 0x0

    aput-object p2, v25, v5

    .line 425
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v5, 0x0

    aput-object p4, v26, v5

    .line 423
    const/16 v18, 0x2

    .line 424
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 425
    const/high16 v27, 0x50000000

    .line 426
    const/16 v28, 0x0

    move-object/from16 v19, p14

    move/from16 v20, p13

    .line 422
    invoke-virtual/range {v17 .. v28}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v49

    .line 428
    .local v49, "target":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v46

    .line 429
    .local v46, "flags":I
    new-instance v48, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.REVIEW_PERMISSIONS"

    move-object/from16 v0, v48

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v48, "newIntent":Landroid/content/Intent;
    const/high16 v5, 0x800000

    .line 430
    or-int v5, v5, v46

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p5

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string/jumbo v5, "android.intent.extra.INTENT"

    new-instance v7, Landroid/content/IntentSender;

    move-object/from16 v0, v49

    invoke-direct {v7, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 434
    if-eqz v6, :cond_1c

    .line 435
    const-string/jumbo v5, "android.intent.extra.RESULT_NEEDED"

    const/4 v7, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    :cond_1c
    move-object/from16 p2, v48

    .line 439
    const/16 p4, 0x0

    .line 440
    .local p4, "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    .line 441
    move/from16 p12, p15

    .line 443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v48

    move-object/from16 v1, p4

    move/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p6

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 445
    const/4 v7, 0x0

    .line 444
    move-object/from16 v0, v48

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    .line 462
    .end local v46    # "flags":I
    .end local v48    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_1d
    if-eqz p6, :cond_1e

    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->ephemeralResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    if-eqz v5, :cond_1e

    .line 464
    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->ephemeralResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p14

    move-object/from16 v12, p4

    move/from16 v13, v21

    .line 463
    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ActivityStarter;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 466
    const/16 p4, 0x0

    .line 467
    .restart local p4    # "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    .line 468
    move/from16 p12, p15

    .line 470
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move/from16 v2, p17

    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p5

    .line 473
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_1e
    new-instance v22, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    .line 474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v30, v0

    .line 475
    if-eqz p7, :cond_22

    const/16 v35, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v36, v0

    move-object/from16 v24, v16

    move/from16 v25, p13

    move-object/from16 v26, p14

    move-object/from16 v27, p2

    move-object/from16 v28, p4

    move-object/from16 v29, p5

    move-object/from16 v31, v6

    move-object/from16 v32, p10

    move/from16 v33, p11

    move/from16 v34, p20

    move-object/from16 v37, p22

    move-object/from16 v38, p18

    .line 473
    invoke-direct/range {v22 .. v39}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 477
    .local v22, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_1f

    .line 478
    const/4 v5, 0x0

    aput-object v22, p21, v5

    .line 481
    :cond_1f
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v5, :cond_20

    if-eqz v39, :cond_20

    .line 484
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v0, v22

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 487
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v41, v0

    .line 488
    .local v41, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_23

    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_21

    .line 489
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p13

    if-eq v5, v0, :cond_23

    .line 490
    :cond_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 491
    const-string/jumbo v12, "Activity start"

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p15

    move/from16 v11, p16

    .line 490
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 492
    new-instance v37, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v38, v22

    move/from16 v40, p17

    move-object/from16 v42, v16

    invoke-direct/range {v37 .. v42}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    .line 494
    .local v37, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 496
    const/4 v5, 0x4

    return v5

    .line 475
    .end local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v37    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v41    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_22
    const/16 v35, 0x0

    goto/16 :goto_c

    .line 500
    .restart local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_24

    .line 506
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v10, 0x0

    iput-wide v10, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 511
    :goto_d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V

    .line 514
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 516
    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v22

    move-object/from16 v9, v39

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p17

    move-object/from16 v14, p18

    move-object/from16 v15, p23

    .line 515
    invoke-direct/range {v7 .. v15}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    .line 518
    .end local v45    # "err":I
    .restart local v9    # "err":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 520
    move-object/from16 v0, v41

    iget v10, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v7, p0

    move-object/from16 v8, v22

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStarter;->postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V

    .line 521
    return v9

    .line 508
    .end local v9    # "err":I
    .restart local v45    # "err":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_d

    .line 517
    :catchall_0
    move-exception v5

    .line 518
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 517
    throw v5
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 55
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "bOptions"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "iContainer"    # Landroid/app/IActivityContainer;
    .param p19, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 723
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 724
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "File descriptors passed in Intent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 726
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 727
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v28, 0x1

    .line 730
    .local v28, "componentSpecified":Z
    :goto_0
    new-instance v35, Landroid/content/Intent;

    move-object/from16 v0, v35

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 732
    .local v35, "ephemeralIntent":Landroid/content/Intent;
    new-instance v38, Landroid/content/Intent;

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 734
    .end local p4    # "intent":Landroid/content/Intent;
    .local v38, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v38

    move-object/from16 v1, p5

    move/from16 v2, p17

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 735
    .local v14, "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_1c

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p17

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v52

    .line 737
    .local v52, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v52, :cond_2

    invoke-virtual/range {v52 .. v52}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v53

    .line 742
    .local v53, "userManager":Landroid/os/UserManager;
    const/16 v44, 0x0

    .line 743
    .local v44, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v50

    .line 745
    .local v50, "token":J
    :try_start_0
    move-object/from16 v0, v53

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v41

    .line 746
    .local v41, "parent":Landroid/content/pm/UserInfo;
    if-eqz v41, :cond_4

    .line 747
    move-object/from16 v0, v41

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    .line 746
    if-eqz v4, :cond_4

    .line 748
    move-object/from16 v0, v53

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    const/16 v44, 0x0

    .line 750
    :goto_1
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    if-eqz v44, :cond_1c

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 754
    const/high16 v5, 0xc0000

    .line 753
    move-object/from16 v0, v38

    move-object/from16 v1, p5

    move/from16 v2, p17

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    move-object/from16 v46, v14

    .line 760
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v41    # "parent":Landroid/content/pm/UserInfo;
    .end local v44    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v50    # "token":J
    .end local v52    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v53    # "userManager":Landroid/os/UserManager;
    .local v46, "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, p11

    move-object/from16 v3, p12

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v32

    .line 762
    .local v32, "aInfo":Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter$FlymeInjector;->changeMayInterceptPackage(Lcom/android/server/am/ActivityStarter;ILjava/lang/String;Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_flyme_0

    const/4 v4, 0x0

    return v4

    :cond_flyme_0

    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v26

    .local v26, "options":Landroid/app/ActivityOptions;
    move-object/from16 v30, p18

    .line 764
    check-cast v30, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 765
    .local v30, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v54, v0

    monitor-enter v54

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 766
    if-eqz v30, :cond_5

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_5

    .line 767
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v4, v5, :cond_5

    .line 769
    const/4 v4, -0x6

    monitor-exit v54

    .line 765
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 769
    return v4

    .line 727
    .end local v26    # "options":Landroid/app/ActivityOptions;
    .end local v28    # "componentSpecified":Z
    .end local v30    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_1
    const/16 v28, 0x0

    .restart local v28    # "componentSpecified":Z
    goto/16 :goto_0

    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v35    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v52    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v46, v14

    .line 737
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_2

    .line 748
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v41    # "parent":Landroid/content/pm/UserInfo;
    .restart local v44    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v50    # "token":J
    .restart local v53    # "userManager":Landroid/os/UserManager;
    :cond_3
    const/16 v44, 0x1

    goto :goto_1

    .line 746
    :cond_4
    const/16 v44, 0x0

    goto :goto_1

    .line 749
    .end local v41    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    .line 750
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    throw v4

    .line 771
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v44    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v50    # "token":J
    .end local v52    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v53    # "userManager":Landroid/os/UserManager;
    .restart local v26    # "options":Landroid/app/ActivityOptions;
    .restart local v30    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 772
    .local v23, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    .line 774
    .local v24, "realCallingUid":I
    if-ltz p2, :cond_d

    .line 775
    const/16 v20, -0x1

    .line 784
    .local v20, "callingPid":I
    :goto_3
    if-eqz v30, :cond_6

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 785
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v48, v0

    .line 789
    .local v48, "stack":Lcom/android/server/am/ActivityStack;
    :goto_4
    if-eqz p14, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, v48

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v42

    .line 795
    .local v42, "origId":J
    if-eqz v32, :cond_11

    .line 796
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_11

    .line 800
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v36, v0

    .line 802
    .local v36, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v36, :cond_7

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_12

    .line 803
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_12

    :cond_7
    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    .line 858
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_6
    const/4 v4, 0x1

    :try_start_3
    new-array v0, v4, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v29, v0

    .local v29, "outRecord":[Lcom/android/server/am/ActivityRecord;
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, v35

    move-object/from16 v12, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move/from16 v19, p10

    move/from16 v21, p2

    move-object/from16 v22, p3

    move/from16 v25, p11

    move/from16 v27, p16

    move-object/from16 v31, p19

    .line 859
    invoke-virtual/range {v8 .. v31}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v47

    .line 866
    .local v47, "res":I
    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    move-object/from16 v0, v48

    iget-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v4, :cond_9

    .line 873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.CHANGE_CONFIGURATION"

    .line 874
    const-string/jumbo v6, "updateConfiguration()"

    .line 873
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 v4, 0x0

    move-object/from16 v0, v48

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    .line 881
    :cond_9
    if-eqz p13, :cond_c

    .line 882
    move/from16 v0, v47

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 883
    if-nez v47, :cond_b

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 887
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 890
    :goto_8
    :try_start_5
    move-object/from16 v0, p13

    iget v4, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a

    .line 891
    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz v4, :cond_18

    .line 892
    :cond_a
    move-object/from16 v0, p13

    iget v4, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 893
    const/16 v47, 0x2

    .line 896
    :cond_b
    const/4 v4, 0x2

    move/from16 v0, v47

    if-ne v0, v4, :cond_c

    .line 897
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v45

    .line 898
    .local v45, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v45

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_19

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_19

    .line 899
    const/4 v4, 0x0

    move-object/from16 v0, p13

    iput-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 900
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 901
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 902
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 916
    .end local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1a

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v39, v0

    .line 918
    .local v39, "launchedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    move/from16 v0, v47

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    monitor-exit v54

    .line 765
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 919
    return v47

    .line 776
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "callingPid":I
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v39    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v42    # "origId":J
    .end local v47    # "res":I
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :cond_d
    if-nez p1, :cond_e

    .line 777
    move/from16 v20, v23

    .line 778
    .restart local v20    # "callingPid":I
    move/from16 p2, v24

    goto/16 :goto_3

    .line 780
    .end local v20    # "callingPid":I
    :cond_e
    const/16 p2, -0x1

    const/16 v20, -0x1

    .restart local v20    # "callingPid":I
    goto/16 :goto_3

    .line 787
    :cond_f
    :try_start_6
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v48, v0

    .restart local v48    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_4

    .line 789
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_5

    .restart local v42    # "origId":J
    :cond_11
    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    .line 797
    .end local v38    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 804
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_12
    move/from16 v7, p2

    .line 805
    .local v7, "appCallingUid":I
    if-eqz p1, :cond_13

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v33

    .line 807
    .local v33, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v33, :cond_16

    .line 808
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 818
    .end local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 819
    const-string/jumbo v6, "android"

    .line 820
    const/4 v5, 0x1

    new-array v12, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v38, v12, v5

    .line 821
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p5, v13, v5

    .line 819
    const/4 v5, 0x2

    .line 820
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 821
    const/high16 v14, 0x50000000

    .line 822
    const/4 v15, 0x0

    move/from16 v8, p17

    .line 818
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v49

    .line 824
    .local v49, "target":Landroid/content/IIntentSender;
    new-instance v40, Landroid/content/Intent;

    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    .line 825
    .local v40, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_14

    .line 827
    const-string/jumbo v4, "has_result"

    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 829
    :cond_14
    const-string/jumbo v4, "intent"

    .line 830
    new-instance v5, Landroid/content/IntentSender;

    move-object/from16 v0, v49

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 829
    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 831
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 832
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .line 833
    .local v37, "hist":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v4, "cur_app"

    .line 834
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 833
    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string/jumbo v4, "cur_task"

    .line 836
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 835
    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    .end local v37    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_15
    const-string/jumbo v4, "new_app"

    .line 839
    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 838
    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getFlags()I

    move-result v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 841
    const-string/jumbo v4, "android"

    .line 842
    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 841
    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 843
    move-object/from16 p4, v40

    .line 844
    .end local v38    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 845
    .local p5, "resolvedType":Ljava/lang/String;
    const/16 p1, 0x0

    .line 846
    .local p1, "caller":Landroid/app/IApplicationThread;
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 847
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 848
    const/16 v28, 0x1

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    move/from16 v1, p17

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v14

    .line 850
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_17

    :try_start_8
    iget-object v13, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 851
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_a
    if-eqz v13, :cond_8

    .line 852
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p17

    invoke-virtual {v4, v13, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v13

    goto/16 :goto_6

    .line 810
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_16
    :try_start_a
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 811
    const-string/jumbo v6, " (pid="

    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 811
    const-string/jumbo v6, ") when starting: "

    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 812
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static/range {v26 .. v26}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 814
    const/4 v4, -0x4

    monitor-exit v54

    .line 765
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 814
    return v4

    .line 850
    .end local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "newIntent":Landroid/content/Intent;
    .restart local v49    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .restart local p4    # "intent":Landroid/content/Intent;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_17
    const/4 v13, 0x0

    goto :goto_a

    .line 891
    .end local v7    # "appCallingUid":I
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "res":I
    :cond_18
    :try_start_b
    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_a

    goto/16 :goto_7

    .line 904
    .restart local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 908
    :goto_b
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 911
    :goto_c
    :try_start_d
    move-object/from16 v0, p13

    iget-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p13

    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_c

    goto :goto_b

    .line 917
    .end local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/4 v4, 0x0

    aget-object v39, v29, v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .restart local v39    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_9

    .line 765
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "callingPid":I
    .end local v23    # "realCallingPid":I
    .end local v24    # "realCallingUid":I
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v39    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v42    # "origId":J
    .end local v47    # "res":I
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    .end local v38    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_d
    monitor-exit v54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "appCallingUid":I
    .restart local v20    # "callingPid":I
    .restart local v23    # "realCallingPid":I
    .restart local v24    # "realCallingUid":I
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "newIntent":Landroid/content/Intent;
    .restart local v42    # "origId":J
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v49    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_2
    move-exception v4

    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_d

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_3
    move-exception v4

    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_d

    .end local v7    # "appCallingUid":I
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    :catchall_4
    move-exception v4

    goto :goto_d

    .line 909
    .restart local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v45    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "res":I
    :catch_0
    move-exception v34

    .local v34, "e":Ljava/lang/InterruptedException;
    goto :goto_c

    .line 888
    .end local v34    # "e":Ljava/lang/InterruptedException;
    .end local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v34

    .restart local v34    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_8

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v34    # "e":Ljava/lang/InterruptedException;
    .end local v47    # "res":I
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_1b
    move-object/from16 v13, v32

    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    .end local v38    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "callingPid":I
    .end local v23    # "realCallingPid":I
    .end local v24    # "realCallingUid":I
    .end local v26    # "options":Landroid/app/ActivityOptions;
    .end local v30    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v42    # "origId":J
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v38    # "intent":Landroid/content/Intent;
    :cond_1c
    move-object/from16 v46, v14

    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_2
.end method

.method startConfirmCredentialIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 706
    const v1, 0x10804000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 710
    .local v0, "options":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 711
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 712
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 711
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 705
    return-void
.end method

.method startHomeActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 641
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 642
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 643
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 644
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 645
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 646
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 647
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    .line 641
    invoke-virtual/range {v1 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v1, :cond_0

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 639
    :cond_0
    return-void
.end method

.method flymeGetFieldService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method setPackageManager(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mFlymeRealPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method
