.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$1;,
        Landroid/telecom/Connection$2;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$VideoProvider;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_UNUSED_2:I = 0x4000

.field public static final CAPABILITY_UNUSED_3:I = 0x8000

.field public static final CAPABILITY_UNUSED_4:I = 0x10000

.field public static final CAPABILITY_UNUSED_5:I = 0x20000

.field public static final CAPABILITY_VOICE_PRIVACY:I = 0x2000000

.field public static final EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"

.field public static final EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field private static final PII_DEBUG:Z

.field public static final PROPERTY_ADDITIONAL_CALL_FORWARDED:I = 0x400

.field public static final PROPERTY_DIALING_IS_WAITING:I = 0x200

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final PROPERTY_HELD_REMOTELY:I = 0x100

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40

.field public static final PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final PROPERTY_REMOTE_INCOMING_CALLS_BARRED:I = 0x800

.field public static final PROPERTY_WAS_FORWARDED:I = 0x80

.field public static final PROPERTY_WIFI:I = 0x8

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_PULLING_CALL:I = 0x7

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionProperties:I

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mSupportedAudioRoutes:I

.field private mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Connection;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1552
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 1490
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 1499
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 1514
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 1513
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 1515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 1517
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1516
    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 1521
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 1530
    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 1533
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 1540
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    .line 1552
    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 574
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    .prologue
    .line 615
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    .prologue
    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    if-eqz p1, :cond_0

    .line 634
    const-string/jumbo v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    if-eqz p1, :cond_15

    const-string/jumbo v1, " CAPABILITY_HOLD"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    if-eqz p1, :cond_16

    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 644
    if-eqz p1, :cond_17

    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_3
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 647
    if-eqz p1, :cond_18

    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_4
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 650
    if-eqz p1, :cond_19

    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_5
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 653
    if-eqz p1, :cond_1a

    const-string/jumbo v1, " CAPABILITY_MUTE"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_6
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 656
    if-eqz p1, :cond_1b

    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_7
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 659
    if-eqz p1, :cond_1c

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_8
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 662
    if-eqz p1, :cond_1d

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_9
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 665
    if-eqz p1, :cond_1e

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :cond_a
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 668
    if-eqz p1, :cond_1f

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    :cond_b
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 671
    if-eqz p1, :cond_20

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_c
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 674
    if-eqz p1, :cond_21

    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_d
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 677
    if-eqz p1, :cond_22

    const-string/jumbo v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_e
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 680
    if-eqz p1, :cond_23

    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_f
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 683
    if-eqz p1, :cond_24

    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_10
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 686
    if-eqz p1, :cond_25

    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_11
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 689
    if-eqz p1, :cond_26

    const-string/jumbo v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_12
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 692
    if-eqz p1, :cond_27

    const-string/jumbo v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_13
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 695
    if-eqz p1, :cond_28

    const-string/jumbo v1, " CAPABILITY_CAN_PULL_CALL"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_14
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 638
    :cond_15
    const-string/jumbo v1, " hld"

    goto/16 :goto_0

    .line 641
    :cond_16
    const-string/jumbo v1, " sup_hld"

    goto/16 :goto_1

    .line 644
    :cond_17
    const-string/jumbo v1, " mrg_cnf"

    goto/16 :goto_2

    .line 647
    :cond_18
    const-string/jumbo v1, " swp_cnf"

    goto/16 :goto_3

    .line 650
    :cond_19
    const-string/jumbo v1, " txt"

    goto/16 :goto_4

    .line 653
    :cond_1a
    const-string/jumbo v1, " mut"

    goto/16 :goto_5

    .line 656
    :cond_1b
    const-string/jumbo v1, " mng_cnf"

    goto/16 :goto_6

    .line 659
    :cond_1c
    const-string/jumbo v1, " VTlrx"

    goto/16 :goto_7

    .line 662
    :cond_1d
    const-string/jumbo v1, " VTltx"

    goto/16 :goto_8

    .line 665
    :cond_1e
    const-string/jumbo v1, " VTlbi"

    goto/16 :goto_9

    .line 668
    :cond_1f
    const-string/jumbo v1, " VTrrx"

    goto/16 :goto_a

    .line 671
    :cond_20
    const-string/jumbo v1, " VTrtx"

    goto/16 :goto_b

    .line 674
    :cond_21
    const-string/jumbo v1, " VTrbi"

    goto/16 :goto_c

    .line 677
    :cond_22
    const-string/jumbo v1, " !v2a"

    goto/16 :goto_d

    .line 680
    :cond_23
    const-string/jumbo v1, " spd_aud"

    goto/16 :goto_e

    .line 683
    :cond_24
    const-string/jumbo v1, " a2v"

    goto/16 :goto_f

    .line 686
    :cond_25
    const-string/jumbo v1, " paus_VT"

    goto/16 :goto_10

    .line 689
    :cond_26
    const-string/jumbo v1, " 1p_cnf"

    goto/16 :goto_11

    .line 692
    :cond_27
    const-string/jumbo v1, " rsp_by_con"

    goto :goto_12

    .line 695
    :cond_28
    const-string/jumbo v1, " pull"

    goto :goto_13
.end method

.method public static capabilitiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final clearConferenceableList()V
    .locals 5

    .prologue
    .line 2630
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 2631
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 2632
    check-cast v3, Landroid/telecom/Connection;

    .line 2633
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    .line 2634
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 2635
    check-cast v2, Landroid/telecom/Conference;

    .line 2636
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_0

    .line 2639
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2629
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    .prologue
    .line 2614
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 2590
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final fireConferenceChanged()V
    .locals 3

    .prologue
    .line 2624
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2625
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_0

    .line 2623
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    .prologue
    .line 2618
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2619
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 2617
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    .prologue
    .line 709
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static propertiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    .prologue
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    if-eqz p1, :cond_0

    .line 727
    const-string/jumbo v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    if-eqz p1, :cond_c

    const-string/jumbo v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    if-eqz p1, :cond_d

    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    if-eqz p1, :cond_e

    const-string/jumbo v1, " PROPERTY_WIFI"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_3
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 743
    if-eqz p1, :cond_f

    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_4
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 747
    if-eqz p1, :cond_10

    const-string/jumbo v1, " PROPERTY_IS_EXTERNAL_CALL"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    :cond_5
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 751
    if-eqz p1, :cond_11

    const-string/jumbo v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_6
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 755
    const-string/jumbo v1, " PROPERTY_WAS_FORWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_7
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 759
    const-string/jumbo v1, " PROPERTY_HELD_REMOTELY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_8
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 763
    const-string/jumbo v1, " PROPERTY_DIALING_IS_WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_9
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 767
    const-string/jumbo v1, " PROPERTY_ADDITIONAL_CALL_FORWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_a
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 771
    const-string/jumbo v1, " PROPERTY_REMOTE_INCOMING_CALLS_BARRED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_b
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 731
    :cond_c
    const-string/jumbo v1, " ecbm"

    goto/16 :goto_0

    .line 735
    :cond_d
    const-string/jumbo v1, " HD"

    goto/16 :goto_1

    .line 739
    :cond_e
    const-string/jumbo v1, " wifi"

    goto/16 :goto_2

    .line 743
    :cond_f
    const-string/jumbo v1, " gen_conf"

    goto/16 :goto_3

    .line 747
    :cond_10
    const-string/jumbo v1, " xtrnl"

    goto :goto_4

    .line 751
    :cond_11
    const-string/jumbo v1, " priv"

    goto :goto_5
.end method

.method public static propertiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    .prologue
    .line 720
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 2549
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2550
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_0

    .line 2551
    const-string/jumbo v2, "Connection already DISCONNECTED; cannot transition out of this state."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2552
    return-void

    .line 2554
    :cond_0
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_1

    .line 2555
    const-string/jumbo v2, "setState: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2556
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 2557
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 2558
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2559
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2548
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    .prologue
    .line 1773
    packed-switch p0, :pswitch_data_0

    .line 1791
    const-class v0, Landroid/telecom/Connection;

    const-string/jumbo v1, "Unknown state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1792
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1775
    :pswitch_0
    const-string/jumbo v0, "INITIALIZING"

    return-object v0

    .line 1777
    :pswitch_1
    const-string/jumbo v0, "NEW"

    return-object v0

    .line 1779
    :pswitch_2
    const-string/jumbo v0, "RINGING"

    return-object v0

    .line 1781
    :pswitch_3
    const-string/jumbo v0, "DIALING"

    return-object v0

    .line 1783
    :pswitch_4
    const-string/jumbo v0, "PULLING_CALL"

    return-object v0

    .line 1785
    :pswitch_5
    const-string/jumbo v0, "ACTIVE"

    return-object v0

    .line 1787
    :pswitch_6
    const-string/jumbo v0, "HOLDING"

    return-object v0

    .line 1789
    :pswitch_7
    const-string/jumbo v0, "DISCONNECTED"

    return-object v0

    .line 1773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2525
    if-nez p0, :cond_0

    .line 2526
    const-string/jumbo v3, ""

    return-object v3

    .line 2529
    :cond_0
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v3, :cond_1

    .line 2531
    return-object p0

    .line 2536
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2537
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2538
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2539
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x40

    if-ne v1, v3, :cond_3

    .line 2540
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2537
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2539
    :cond_3
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_2

    .line 2542
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2545
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 605
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 604
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1717
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1718
    return-object p0
.end method

.method public addProperty(I)V
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 806
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    .line 805
    return-void
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 585
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public checkImmutable()V
    .locals 0

    .prologue
    .line 2600
    return-void
.end method

.method public final destroy()V
    .locals 3

    .prologue
    .line 2066
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2067
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 2065
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    .prologue
    .line 1577
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    .prologue
    .line 1661
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1626
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_0

    .line 1627
    return-object v1

    .line 1629
    :cond_0
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 1592
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2157
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 1674
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 1800
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    .prologue
    .line 1807
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    .prologue
    .line 2189
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1699
    const/4 v0, 0x0

    .line 1700
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1701
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1702
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1705
    return-object v0

    .line 1700
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 1599
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getSupportedAudioRoutes()I
    .locals 1

    .prologue
    .line 1816
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    .prologue
    .line 1613
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2649
    const/4 v0, 0x0

    .line 2650
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2651
    :try_start_0
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 2652
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2653
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2656
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 2648
    return-void

    .line 2650
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 786
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public final isRingbackRequested()Z
    .locals 1

    .prologue
    .line 1654
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method protected final notifyConferenceMergeFailed()V
    .locals 3

    .prologue
    .line 2665
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2666
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 2664
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    .prologue
    .line 2688
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2689
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    goto :goto_0

    .line 2687
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceSupportedChanged(Z)V
    .locals 3
    .param p1, "isConferenceSupported"    # Z

    .prologue
    .line 2701
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2702
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceSupportedChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 2700
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    .prologue
    .line 2428
    return-void
.end method

.method public onAnswer()V
    .locals 1

    .prologue
    .line 2453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 2452
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 2446
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2377
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 2384
    return-void
.end method

.method public onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2509
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 2409
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 2418
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2521
    return-void
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 2433
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 2399
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .prologue
    .line 2478
    return-void
.end method

.method public onPullExternalCall()V
    .locals 0

    .prologue
    .line 2491
    return-void
.end method

.method public onReject()V
    .locals 0

    .prologue
    .line 2460
    return-void
.end method

.method public onReject(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyMessage"    # Ljava/lang/String;

    .prologue
    .line 2466
    return-void
.end method

.method public onSeparate()V
    .locals 0

    .prologue
    .line 2423
    return-void
.end method

.method public onSilence()V
    .locals 0

    .prologue
    .line 2473
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2392
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    .prologue
    .line 2404
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 2438
    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2323
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2324
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2321
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2336
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2334
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 2309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2310
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2311
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2308
    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2280
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2281
    if-nez p1, :cond_0

    .line 2282
    return-void

    .line 2287
    :cond_0
    iget-object v4, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2288
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 2289
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 2291
    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2292
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "listenerExtras":Landroid/os/Bundle;
    monitor-exit v4

    .line 2294
    iget-object v3, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2297
    .local v0, "l":Landroid/telecom/Connection$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2287
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "listenerExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2279
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    .restart local v2    # "listenerExtras":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 595
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 594
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1730
    if-eqz p1, :cond_0

    .line 1731
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1733
    :cond_0
    return-object p0
.end method

.method public final removeExtras(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2346
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2347
    :try_start_0
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 2348
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2349
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2346
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    monitor-exit v6

    .line 2353
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2354
    .local v4, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 2355
    .local v2, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v2, p0, v4}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_1

    .line 2345
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    :cond_1
    return-void
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 2365
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 2364
    return-void
.end method

.method public removeProperty(I)V
    .locals 2
    .param p1, "property"    # I

    .prologue
    .line 796
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    .line 795
    return-void
.end method

.method public final resetConference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2218
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    .line 2219
    const-string/jumbo v0, "Conference reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2220
    iput-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 2221
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 2217
    :cond_0
    return-void
.end method

.method public sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2744
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2745
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2743
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    .prologue
    .line 1876
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1877
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 1878
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1875
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1827
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1828
    const-string/jumbo v2, "setAddress %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1829
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 1830
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 1831
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1832
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_0

    .line 1826
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    .prologue
    .line 2077
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2078
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 2079
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2080
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 2076
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 1761
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1762
    const-string/jumbo v0, "setAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 1764
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 1765
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 1760
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1844
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1845
    const-string/jumbo v2, "setCallerDisplayName %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1846
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 1847
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 1848
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1849
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_0

    .line 1843
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 2201
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2203
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    .line 2204
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 2205
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2206
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 2208
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2210
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2115
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2116
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 2120
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2121
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2122
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2125
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2114
    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2135
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 2139
    .local v0, "c":Landroid/telecom/Conferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2140
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 2141
    check-cast v3, Landroid/telecom/Connection;

    .line 2142
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v3, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2147
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2143
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 2144
    check-cast v2, Landroid/telecom/Conference;

    .line 2145
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_1

    .line 2150
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2134
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J

    .prologue
    .line 2093
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2092
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 2016
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2017
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v2, p1, :cond_0

    .line 2018
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 2019
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2020
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2015
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionProperties(I)V
    .locals 3
    .param p1, "connectionProperties"    # I

    .prologue
    .line 2031
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2032
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v2, p1, :cond_0

    .line 2033
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    .line 2034
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2035
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2030
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 2164
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2165
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    .line 2166
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2163
    :goto_0
    return-void

    .line 2169
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    .prologue
    .line 1909
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1910
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1908
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1954
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1955
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1956
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    .line 1957
    const-string/jumbo v2, "Disconnected with cause %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1958
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1959
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 1953
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2240
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2243
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 2247
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 2248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2249
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "oldKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2250
    .local v0, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2251
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2254
    .end local v0    # "oldKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2255
    invoke-virtual {p0, v2}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 2261
    .end local v1    # "oldKey$iterator":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v3, :cond_4

    .line 2262
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    .line 2264
    :cond_4
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2265
    if-eqz p1, :cond_5

    .line 2266
    iget-object v3, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2239
    :cond_5
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    .prologue
    .line 1901
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1902
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1900
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    .prologue
    .line 1893
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1894
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1892
    return-void
.end method

.method public final setNextPostDialChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    .line 1988
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1989
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1990
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_0

    .line 1987
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    .prologue
    .line 1927
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1928
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1926
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 1974
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1975
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1976
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1973
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setPulling()V
    .locals 1

    .prologue
    .line 1919
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1920
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1918
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    .prologue
    .line 2001
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2002
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_0

    .line 2003
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2004
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2005
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 2000
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    .prologue
    .line 1885
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1886
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1884
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 2102
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2103
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 2104
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2105
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 2101
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setSupportedAudioRoutes(I)V
    .locals 4
    .param p1, "supportedAudioRoutes"    # I

    .prologue
    .line 2048
    and-int/lit8 v2, p1, 0x9

    if-nez v2, :cond_0

    .line 2050
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 2051
    const-string/jumbo v3, "supported audio routes must include either speaker or earpiece"

    .line 2050
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2054
    :cond_0
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v2, p1, :cond_1

    .line 2055
    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2056
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2057
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 2047
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1751
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    .line 1750
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 1936
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1937
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1938
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1939
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 1935
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    .prologue
    .line 1863
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1864
    const-string/jumbo v2, "setVideoState %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1865
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 1866
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 1867
    .local v0, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1862
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 2177
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    .line 2178
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2176
    :goto_0
    return-void

    .line 2181
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2678
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2679
    .local v0, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 2677
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method
