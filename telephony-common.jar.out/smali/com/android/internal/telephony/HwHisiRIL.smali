.class public Lcom/android/internal/telephony/HwHisiRIL;
.super Lcom/android/internal/telephony/RIL;
.source "HwHisiRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field static final NETWORK_TYPE_TDS:I = 0x11

.field static final NETWORK_TYPE_TDS_HSDPA:I = 0x12

.field static final NETWORK_TYPE_TDS_HSUPA:I = 0x13

.field static final RILJ_LOGD:Z = true

.field static final RILJ_LOGV:Z = true

.field private static final RILJ_LOG_TAG:Ljava/lang/String; = "RILJ-HwHisiRIL"

.field static final RIL_REQUEST_GET_POL_CAPABILITY:I = 0x810

.field static final RIL_REQUEST_GET_POL_LIST:I = 0x811

.field static final RIL_REQUEST_HW_BALONG_BASE:I = 0x7d0

.field static final RIL_REQUEST_HW_CGSMS_MESSAGE:I = 0x7e0

.field static final RIL_REQUEST_HW_DATA_CONNECTION_ATTACH:I = 0x7dc

.field static final RIL_REQUEST_HW_DATA_CONNECTION_DETACH:I = 0x7db

.field static final RIL_REQUEST_HW_DEVICE_BASE:I = 0x1f4

.field static final RIL_REQUEST_HW_GET_DATA_CALL_PROFILE:I = 0x1f7

.field static final RIL_REQUEST_HW_GET_DATA_PROFILE:I = 0x7dd

.field static final RIL_REQUEST_HW_GET_DATA_SUBSCRIPTION:I = 0x1fb

.field static final RIL_REQUEST_HW_GET_EOPLMN_LIST:I = 0x7f7

.field static final RIL_REQUEST_HW_GET_HANDLE_DETECT:I = 0x7ef

.field static final RIL_REQUEST_HW_GET_ICCID:I = 0x81b

.field static final RIL_REQUEST_HW_GET_IMEI_VERIFY_STATUS:I = 0x7e5

.field static final RIL_REQUEST_HW_GET_ISMCOEX:I = 0x813

.field static final RIL_REQUEST_HW_GET_LTE_RELEASE_VERSION:I = 0x83d

.field static final RIL_REQUEST_HW_GET_PSDOMAIN_AUTOATTACH_TYPE:I = 0x7e8

.field static final RIL_REQUEST_HW_GET_QOS_STATUS:I = 0x1ff

.field static final RIL_REQUEST_HW_GET_SIMLOCK_STATUS:I = 0x81a

.field static final RIL_REQUEST_HW_GET_SIM_CAPACITY:I = 0x7de

.field static final RIL_REQUEST_HW_GET_SIM_SLOT_CFG:I = 0x7ed

.field static final RIL_REQUEST_HW_GET_UICC_FILE:I = 0x824

.field static final RIL_REQUEST_HW_GET_UICC_SUBSCRIPTION:I = 0x1fa

.field static final RIL_REQUEST_HW_GET_USER_SERVICE_STATE:I = 0x7ea

.field static final RIL_REQUEST_HW_GET_VOICECALL_BACKGROUND_STATE:I = 0x7e4

.field static final RIL_REQUEST_HW_HANDLE_DETECT:I = 0x7ee

.field static final RIL_REQUEST_HW_IMS_ADD_CONFERENCE_MEMBER:I = 0x81c

.field static final RIL_REQUEST_HW_IMS_ANSWER:I = 0x806

.field static final RIL_REQUEST_HW_IMS_CANCEL_USSD:I = 0x805

.field static final RIL_REQUEST_HW_IMS_CONFERENCE:I = 0x801

.field static final RIL_REQUEST_HW_IMS_DIAL:I = 0x7fb

.field static final RIL_REQUEST_HW_IMS_DTMF:I = 0x807

.field static final RIL_REQUEST_HW_IMS_DTMF_START:I = 0x808

.field static final RIL_REQUEST_HW_IMS_DTMF_STOP:I = 0x809

.field static final RIL_REQUEST_HW_IMS_EXPLICIT_CALL_TRANSFER:I = 0x80a

.field static final RIL_REQUEST_HW_IMS_GET_CURRENT_CALLS:I = 0x7fc

.field static final RIL_REQUEST_HW_IMS_HANGUP:I = 0x7fd

.field static final RIL_REQUEST_HW_IMS_HANGUP_FOREGROUND_RESUME_BACKGROUND:I = 0x7ff

.field static final RIL_REQUEST_HW_IMS_HANGUP_WAITING_OR_BACKGROUND:I = 0x7fe

.field static final RIL_REQUEST_HW_IMS_IMPU:I = 0x815

.field static final RIL_REQUEST_HW_IMS_IMSVOPS_IND:I = 0x80c

.field static final RIL_REQUEST_HW_IMS_LAST_CALL_FAIL_CAUSE:I = 0x803

.field static final RIL_REQUEST_HW_IMS_REGISTRATION_STATE:I = 0x1f5

.field static final RIL_REQUEST_HW_IMS_REG_STATE_CHANGE:I = 0x80b

.field static final RIL_REQUEST_HW_IMS_SEND_SMS:I = 0x1f6

.field static final RIL_REQUEST_HW_IMS_SEND_USSD:I = 0x804

.field static final RIL_REQUEST_HW_IMS_SET_CALL_WAITING:I = 0x81f

.field static final RIL_REQUEST_HW_IMS_SET_MUTE:I = 0x80d

.field static final RIL_REQUEST_HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE:I = 0x800

.field static final RIL_REQUEST_HW_IMS_UDUB:I = 0x802

.field static final RIL_REQUEST_HW_MODEM_POWER:I = 0x7d2

.field static final RIL_REQUEST_HW_MODIFY_CALL_CONFIRM:I = 0x204

.field static final RIL_REQUEST_HW_MODIFY_CALL_INITIATE:I = 0x203

.field static final RIL_REQUEST_HW_MODIFY_DATA_PROFILE:I = 0x7da

.field static final RIL_REQUEST_HW_MODIFY_QOS:I = 0x200

.field static final RIL_REQUEST_HW_MONITOR_SIM_IN_SLOT_IND:I = 0x7eb

.field static final RIL_REQUEST_HW_QUERY_CARDTYPE:I = 0x210

.field static final RIL_REQUEST_HW_QUERY_EMERGENCY_NUMBERS:I = 0x20a

.field static final RIL_REQUEST_HW_QUERY_GSM_NMR_INFO:I = 0x820

.field static final RIL_REQUEST_HW_RELEASE_QOS:I = 0x1fe

.field static final RIL_REQUEST_HW_RESET_ALL_CONNECTIONS:I = 0x7e1

.field static final RIL_REQUEST_HW_RESTRAT_RILD:I = 0x7d5

.field static final RIL_REQUEST_HW_RESUME_QOS:I = 0x202

.field static final RIL_REQUEST_HW_RISE_CDMA_CUTOFF_FREQ:I = 0x20c

.field static final RIL_REQUEST_HW_RRC_CONTROL:I = 0x7e2

.field static final RIL_REQUEST_HW_SENDAPDU:I = 0x207

.field static final RIL_REQUEST_HW_SETUP_QOS:I = 0x1fd

.field static final RIL_REQUEST_HW_SET_ACTIVE_MODEM_MODE:I = 0x828

.field static final RIL_REQUEST_HW_SET_AUDIO_CHANNEL:I = 0x208

.field static final RIL_REQUEST_HW_SET_DATA_SUBSCRIPTION:I = 0x1f9

.field static final RIL_REQUEST_HW_SET_EMERGENCY_NUMBERS:I = 0x7d1

.field static final RIL_REQUEST_HW_SET_EOPLMN_LIST:I = 0x7f8

.field static final RIL_REQUEST_HW_SET_ISMCOEX:I = 0x814

.field static final RIL_REQUEST_HW_SET_LONG_MESSAGE:I = 0x7df

.field static final RIL_REQUEST_HW_SET_LTE_RELEASE_VERSION:I = 0x20f

.field static final RIL_REQUEST_HW_SET_NCELL_MONITOR_STATE:I = 0x7e9

.field static final RIL_REQUEST_HW_SET_NETWORK_RAT_AND_SRVDOMAIN_CFG:I = 0x7e6

.field static final RIL_REQUEST_HW_SET_PCM:I = 0x209

.field static final RIL_REQUEST_HW_SET_POWER_GRADE:I = 0x206

.field static final RIL_REQUEST_HW_SET_PSDOMAIN_AUTOATTACH_TYPE:I = 0x7e7

.field static final RIL_REQUEST_HW_SET_SIM_LESS:I = 0x7d3

.field static final RIL_REQUEST_HW_SET_SIM_SLOT_CFG:I = 0x7ec

.field static final RIL_REQUEST_HW_SET_SUBSCRIPTION_MODE:I = 0x1fc

.field static final RIL_REQUEST_HW_SET_TEE_DATA_READY_FLAG:I = 0x82d

.field static final RIL_REQUEST_HW_SET_TRANSMIT_POWER:I = 0x7d4

.field static final RIL_REQUEST_HW_SET_UE_OPERATION_MODE:I = 0x847

.field static final RIL_REQUEST_HW_SET_UICC_SUBSCRIPTION:I = 0x1f8

.field static final RIL_REQUEST_HW_SET_VOICECALL_BACKGROUND_STATE:I = 0x7e3

.field static final RIL_REQUEST_HW_SIM_CLOSE_CHANNEL:I = 0x7d8

.field static final RIL_REQUEST_HW_SIM_GET_ATR:I = 0x7f0

.field static final RIL_REQUEST_HW_SIM_OPEN_CHANNEL:I = 0x7d7

.field static final RIL_REQUEST_HW_SIM_TRANSMIT_BASIC:I = 0x7d6

.field static final RIL_REQUEST_HW_SIM_TRANSMIT_CHANNEL:I = 0x7d9

.field static final RIL_REQUEST_HW_SUSPEND_QOS:I = 0x201

.field static final RIL_REQUEST_HW_SWITCH_SIM_SLOT_WITHOUT_RESTART_RILD:I = 0x82e

.field static final RIL_REQUEST_HW_UICC_AUTH:I = 0x821

.field static final RIL_REQUEST_HW_UICC_FILE_UPDATE:I = 0x823

.field static final RIL_REQUEST_HW_UICC_GBA_BOOTSTRAP:I = 0x822

.field static final RIL_REQUEST_HW_UICC_KS_NAF:I = 0x825

.field static final RIL_REQUEST_HW_VSIM_GET_SIM_STATE:I = 0x7f6

.field static final RIL_REQUEST_HW_VSIM_SET_SIM_STATE:I = 0x7f5

.field static final RIL_REQUEST_SET_POL_ENTRY:I = 0x812

.field static final RIL_UNSOL_HW_AP_DS_FLOW_INFO_REPORT:I = 0xbdb

.field static final RIL_UNSOL_HW_BALONG_BASE:I = 0xbb8

.field static final RIL_UNSOL_HW_BALONG_MODEM_RESET_EVENT:I = 0xbcf

.field static final RIL_UNSOL_HW_CG_SWITCH_RECOVERY:I = 0x5ea

.field static final RIL_UNSOL_HW_CS_CHANNEL_INFO_IND:I = 0xbbb

.field static final RIL_UNSOL_HW_DEVICE_BASE:I = 0x5dc

.field static final RIL_UNSOL_HW_DIALUP_STATE_CHANGED:I = 0x5e6

.field static final RIL_UNSOL_HW_ECCNUM:I = 0xbbd

.field static final RIL_UNSOL_HW_IMS_CALL_RING:I = 0xbc4

.field static final RIL_UNSOL_HW_IMS_ON_SS:I = 0xbc9

.field static final RIL_UNSOL_HW_IMS_ON_USSD:I = 0xbc8

.field static final RIL_UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED:I = 0xbc3

.field static final RIL_UNSOL_HW_IMS_RESPONSE_HANDOVER:I = 0xbc6

.field static final RIL_UNSOL_HW_IMS_RINGBACK_TONE:I = 0xbc5

.field static final RIL_UNSOL_HW_IMS_SRV_STATUS_UPDATE:I = 0xbc7

.field static final RIL_UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION:I = 0xbca

.field static final RIL_UNSOL_HW_IMS_VOICE_BAND_INFO:I = 0xbcb

.field static final RIL_UNSOL_HW_MODIFY_CALL:I = 0x5e5

.field static final RIL_UNSOL_HW_NCELL_MONITOR:I = 0xbbc

.field static final RIL_UNSOL_HW_NETWORK_REJECT_CASE:I = 0xbbe

.field static final RIL_UNSOL_HW_ON_SS:I = 0x5e1

.field static final RIL_UNSOL_HW_PLMN_SEARCH_INFO_IND:I = 0xbc2

.field static final RIL_UNSOL_HW_QOS_STATE_CHANGED_IND:I = 0x5e4

.field static final RIL_UNSOL_HW_RESIDENT_NETWORK_CHANGED:I = 0xbb9

.field static final RIL_UNSOL_HW_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x5e0

.field static final RIL_UNSOL_HW_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x5de

.field static final RIL_UNSOL_HW_RESPONSE_SIMLOCK_STATUS_CHANGED:I = 0x5e9

.field static final RIL_UNSOL_HW_RESPONSE_SIM_TYPE:I = 0x5dd

.field static final RIL_UNSOL_HW_RESPONSE_TETHERED_MODE_STATE_CHANGED:I = 0x5df

.field static final RIL_UNSOL_HW_SIM_PNP:I = 0xbba

.field static final RIL_UNSOL_HW_STK_CC_ALPHA_NOTIFY:I = 0x5e2

.field static final RIL_UNSOL_HW_TETHERED_MODE_STATE_CHANGED:I = 0x5eb

.field static final RIL_UNSOL_HW_TIMER_TASK_EXPIRED:I = 0xbd3

.field static final RIL_UNSOL_HW_TRIGGER_SETUP_DATA_CALL:I = 0x5ec

.field static final RIL_UNSOL_HW_UICC_SUBSCRIPTION_STATUS_CHANGED:I = 0x5e3

.field static final RIL_UNSOL_HW_UIM_LOCKCARD:I = 0xbcc

.field private static final SHOW_4G_PLUS_ICON:Z


# instance fields
.field private final DBG:Z

.field private audioManager:Landroid/media/AudioManager;

.field private mBalongSimSlot:I

.field private mRilInstanceId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "ro.config.hw_show_4G_Plus_icon"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/HwHisiRIL;->SHOW_4G_PLUS_ICON:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->DBG:Z

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->mBalongSimSlot:I

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/HwHisiRIL;->mRilInstanceId:Ljava/lang/Integer;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->DBG:Z

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->mBalongSimSlot:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->mRilInstanceId:Ljava/lang/Integer;

    .line 46
    iput-object p4, p0, Lcom/android/internal/telephony/HwHisiRIL;->mRilInstanceId:Ljava/lang/Integer;

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->audioManager:Landroid/media/AudioManager;

    .line 44
    return-void
.end method

.method static huaweiResponseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .prologue
    .line 213
    sparse-switch p0, :sswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<unknown response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :sswitch_0
    const-string/jumbo v0, "HW_PLMN_SEARCH_INFO_IND"

    return-object v0

    .line 215
    :sswitch_1
    const-string/jumbo v0, "HW_RESIDENT_NETWORK_CHANGED"

    return-object v0

    .line 216
    :sswitch_2
    const-string/jumbo v0, "HW_ECCNUM"

    return-object v0

    .line 217
    :sswitch_3
    const-string/jumbo v0, "HW_CS_CHANNEL_INFO_IND"

    return-object v0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0xbb9 -> :sswitch_1
        0xbbb -> :sswitch_3
        0xbbd -> :sswitch_2
        0xbc2 -> :sswitch_0
    .end sparse-switch
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 205
    packed-switch p0, :pswitch_data_0

    .line 207
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :pswitch_0
    const-string/jumbo v0, "HW_SET_PCM"

    return-object v0

    .line 205
    :pswitch_data_0
    .packed-switch 0x209
        :pswitch_0
    .end packed-switch
.end method

.method private setAmrWb(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 673
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 674
    const-string/jumbo v0, "RILJ-HwHisiRIL"

    const-string/jumbo v1, "setAmrWb(): setting audio parameter - incall_wb=on"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->audioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "incall_wb=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 672
    :goto_0
    return-void

    .line 677
    :cond_0
    const-string/jumbo v0, "RILJ-HwHisiRIL"

    const-string/jumbo v1, "setAmrWb(): setting audio parameter - incall_wb=off"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/HwHisiRIL;->audioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "incall_wb=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected huaweiUnsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/HwHisiRIL;->huaweiResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/HwHisiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;I)Lcom/android/internal/telephony/RILRequest;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .prologue
    const/4 v9, 0x0

    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 233
    .local v4, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .local v0, "error":I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 239
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 240
    const-string/jumbo v6, "RILJ-HwHisiRIL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 241
    const-string/jumbo v8, " error: "

    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-object v9

    .line 245
    :cond_0
    const/4 v2, 0x0

    .line 247
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 249
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 391
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :catch_0
    move-exception v5

    .line 397
    .local v5, "tr":Ljava/lang/Throwable;
    const-string/jumbo v6, "RILJ-HwHisiRIL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 398
    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/HwHisiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    .line 397
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 399
    const-string/jumbo v8, " exception, possible invalid RIL response"

    .line 397
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 402
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 403
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 405
    :cond_2
    return-object v3

    .line 255
    .end local v5    # "tr":Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 412
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v6, :pswitch_data_0

    .line 425
    :cond_4
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_8

    .line 426
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_1

    .line 442
    :cond_5
    :goto_2
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 453
    :cond_6
    :goto_3
    return-object v3

    .line 256
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 257
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 258
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 259
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 260
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 261
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 262
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 263
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 264
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 265
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 266
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 268
    :sswitch_c
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 269
    iget-object v6, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_7

    .line 270
    const-string/jumbo v6, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 271
    iget-object v6, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v6}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 274
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 276
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 277
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 278
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 279
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HwHisiRIL;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 280
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HwHisiRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 281
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 282
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 283
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 284
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 285
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 286
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 287
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 288
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 289
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 290
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 291
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 292
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 293
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 294
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 295
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 296
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 297
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 298
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 299
    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 300
    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 301
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 302
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 303
    :sswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 304
    :sswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 305
    :sswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 306
    :sswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 307
    :sswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 308
    :sswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 309
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 310
    :sswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 311
    :sswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 312
    :sswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 313
    :sswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 314
    :sswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 315
    :sswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 316
    :sswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 317
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 318
    :sswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 319
    :sswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 320
    :sswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 321
    :sswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 322
    :sswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 323
    :sswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 324
    :sswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 325
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 326
    :sswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 327
    :sswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 328
    :sswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 329
    :sswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 330
    :sswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 331
    :sswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 332
    :sswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 333
    :sswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 334
    :sswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 335
    :sswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 336
    :sswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 337
    :sswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 338
    :sswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 339
    :sswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 340
    :sswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 341
    :sswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 342
    :sswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 343
    :sswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 344
    :sswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 345
    :sswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 346
    :sswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 347
    :sswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 348
    :sswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 349
    :sswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 350
    :sswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 351
    :sswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 352
    :sswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 353
    :sswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 354
    :sswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 355
    :sswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 356
    :sswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 357
    :sswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 358
    :sswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 359
    :sswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 360
    :sswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 361
    :sswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 362
    :sswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 363
    :sswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 364
    :sswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 365
    :sswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 366
    :sswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 367
    :sswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 368
    :sswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 369
    :sswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 370
    :sswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_0

    .line 371
    :sswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 372
    :sswitch_6d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 373
    :sswitch_6e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 374
    :sswitch_6f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 375
    :sswitch_70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 376
    :sswitch_71
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 377
    :sswitch_72
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 378
    :sswitch_73
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 379
    :sswitch_74
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 380
    :sswitch_75
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 381
    :sswitch_76
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 382
    :sswitch_77
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 383
    :sswitch_78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 384
    :sswitch_79
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 385
    :sswitch_7a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 386
    :sswitch_7b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HwHisiRIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 387
    :sswitch_7c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HwHisiRIL;->responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 388
    :sswitch_7d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 390
    :sswitch_7e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 415
    .end local v2    # "ret":Ljava/lang/Object;
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_4

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 418
    iget-object v7, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    .line 417
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 420
    iget-object v6, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 432
    :sswitch_7f
    iget-object v6, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_5

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 435
    iget-object v7, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->size()I

    move-result v7

    .line 434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 437
    iget-object v6, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 445
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/HwHisiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 446
    const-string/jumbo v7, " "

    .line 445
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 446
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7, v2}, Lcom/android/internal/telephony/HwHisiRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 445
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 448
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_6

    .line 449
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 450
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x17 -> :sswitch_15
        0x18 -> :sswitch_16
        0x19 -> :sswitch_17
        0x1a -> :sswitch_18
        0x1b -> :sswitch_19
        0x1c -> :sswitch_1a
        0x1d -> :sswitch_1b
        0x1e -> :sswitch_1c
        0x1f -> :sswitch_1d
        0x20 -> :sswitch_1e
        0x21 -> :sswitch_1f
        0x22 -> :sswitch_20
        0x23 -> :sswitch_21
        0x24 -> :sswitch_22
        0x25 -> :sswitch_23
        0x26 -> :sswitch_24
        0x27 -> :sswitch_25
        0x28 -> :sswitch_26
        0x29 -> :sswitch_27
        0x2a -> :sswitch_28
        0x2b -> :sswitch_29
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_2b
        0x2e -> :sswitch_2c
        0x2f -> :sswitch_2d
        0x30 -> :sswitch_2e
        0x31 -> :sswitch_2f
        0x32 -> :sswitch_30
        0x33 -> :sswitch_31
        0x34 -> :sswitch_32
        0x35 -> :sswitch_33
        0x36 -> :sswitch_34
        0x37 -> :sswitch_35
        0x38 -> :sswitch_36
        0x39 -> :sswitch_37
        0x3a -> :sswitch_38
        0x3b -> :sswitch_39
        0x3c -> :sswitch_3a
        0x3d -> :sswitch_3b
        0x3e -> :sswitch_3c
        0x3f -> :sswitch_3d
        0x40 -> :sswitch_3e
        0x41 -> :sswitch_3f
        0x42 -> :sswitch_40
        0x43 -> :sswitch_41
        0x44 -> :sswitch_42
        0x45 -> :sswitch_43
        0x46 -> :sswitch_44
        0x47 -> :sswitch_45
        0x48 -> :sswitch_46
        0x49 -> :sswitch_47
        0x4a -> :sswitch_48
        0x4b -> :sswitch_49
        0x4c -> :sswitch_4a
        0x4d -> :sswitch_4b
        0x4e -> :sswitch_4c
        0x4f -> :sswitch_4d
        0x50 -> :sswitch_4e
        0x51 -> :sswitch_4f
        0x52 -> :sswitch_50
        0x53 -> :sswitch_51
        0x54 -> :sswitch_52
        0x55 -> :sswitch_53
        0x56 -> :sswitch_5c
        0x57 -> :sswitch_54
        0x58 -> :sswitch_55
        0x59 -> :sswitch_56
        0x5a -> :sswitch_57
        0x5b -> :sswitch_58
        0x5c -> :sswitch_59
        0x5d -> :sswitch_5a
        0x5e -> :sswitch_5b
        0x5f -> :sswitch_5d
        0x60 -> :sswitch_5e
        0x61 -> :sswitch_5f
        0x62 -> :sswitch_60
        0x63 -> :sswitch_63
        0x64 -> :sswitch_61
        0x65 -> :sswitch_62
        0x66 -> :sswitch_64
        0x67 -> :sswitch_65
        0x68 -> :sswitch_66
        0x69 -> :sswitch_67
        0x6a -> :sswitch_68
        0x6b -> :sswitch_69
        0x6c -> :sswitch_6a
        0x6d -> :sswitch_6b
        0x6e -> :sswitch_6c
        0x6f -> :sswitch_6d
        0x70 -> :sswitch_6f
        0x71 -> :sswitch_70
        0x72 -> :sswitch_71
        0x73 -> :sswitch_72
        0x74 -> :sswitch_73
        0x75 -> :sswitch_74
        0x76 -> :sswitch_75
        0x77 -> :sswitch_76
        0x78 -> :sswitch_77
        0x79 -> :sswitch_78
        0x7a -> :sswitch_79
        0x7b -> :sswitch_7a
        0x7c -> :sswitch_7b
        0x7d -> :sswitch_7c
        0x80 -> :sswitch_6e
        0x81 -> :sswitch_7d
        0x209 -> :sswitch_7e
    .end sparse-switch

    .line 412
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 426
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_7f
        0x4 -> :sswitch_7f
        0x6 -> :sswitch_7f
        0x7 -> :sswitch_7f
        0x2b -> :sswitch_7f
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "type"    # I

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 463
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 465
    .local v1, "response":I
    sparse-switch v1, :sswitch_data_0

    .line 484
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 487
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;I)V

    .line 488
    return-void

    .line 471
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 491
    .local v2, "ret":Ljava/lang/Object;
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 458
    .end local v2    # "ret":Ljava/lang/Object;
    :goto_1
    return-void

    .line 473
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 475
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 477
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 479
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 493
    :sswitch_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    goto :goto_1

    .line 496
    :sswitch_6
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    goto :goto_1

    .line 499
    :sswitch_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    goto :goto_1

    .line 502
    :sswitch_8
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->unsljLog(I)V

    goto :goto_1

    .line 505
    :sswitch_9
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HwHisiRIL;->huaweiUnsljLogRet(ILjava/lang/Object;)V

    .line 506
    check-cast v2, [I

    .end local v2    # "ret":Ljava/lang/Object;
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HwHisiRIL;->setAmrWb(I)V

    goto :goto_1

    .line 465
    :sswitch_data_0
    .sparse-switch
        0xbb9 -> :sswitch_2
        0xbbb -> :sswitch_4
        0xbbd -> :sswitch_3
        0xbc2 -> :sswitch_1
        0xbd3 -> :sswitch_0
    .end sparse-switch

    .line 491
    :sswitch_data_1
    .sparse-switch
        0xbb9 -> :sswitch_7
        0xbbb -> :sswitch_9
        0xbbd -> :sswitch_8
        0xbc2 -> :sswitch_6
        0xbd3 -> :sswitch_5
    .end sparse-switch
.end method

.method protected responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .local v2, "numInts":I
    new-array v3, v2, [I

    .line 519
    .local v3, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v1

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 523
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    aget v4, v3, v5

    iput v4, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_1

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 527
    :cond_1
    return-object v0
.end method

.method protected responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 617
    .local v9, "num":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 620
    .local v10, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseHardwareConfig: num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 622
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 624
    .local v11, "type":I
    packed-switch v11, :pswitch_data_0

    .line 637
    new-instance v1, Ljava/lang/RuntimeException;

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RIL_REQUEST_GET_HARDWARE_CONFIG invalid hardward type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 627
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 628
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 627
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    .line 642
    :goto_1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/HardwareConfig;-><init>(I)V

    .line 633
    .restart local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 645
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v11    # "type":I
    :cond_0
    return-object v10

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 654
    .local v1, "sw1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 656
    .local v2, "sw2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "< iccIO:  0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 659
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 660
    const-string/jumbo v4, " 0x"

    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 660
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 660
    const-string/jumbo v4, " "

    .line 658
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 664
    new-instance v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    return-object v3
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 21
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 546
    const-string/jumbo v2, "RILJ-HwHisiRIL"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "responseSignalStrength(): data size = "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v2, 0xe

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 549
    .local v18, "response":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    const/16 v2, 0xe

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v18, v17

    .line 549
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 553
    :cond_0
    const/4 v2, 0x0

    aget v16, v18, v2

    .line 554
    .local v16, "gsmSignalStrength":I
    const/4 v2, 0x1

    aget v3, v18, v2

    .line 555
    .local v3, "gsmBitErrorRate":I
    const/4 v2, 0x2

    aget v14, v18, v2

    .line 556
    .local v14, "wcdmaRscp":I
    const/4 v2, 0x3

    aget v19, v18, v2

    .line 557
    .local v19, "wcdmaEcio":I
    const/4 v2, 0x4

    aget v4, v18, v2

    .line 558
    .local v4, "cdmaDbm":I
    const/4 v2, 0x5

    aget v5, v18, v2

    .line 559
    .local v5, "cdmaEcio":I
    const/4 v2, 0x6

    aget v6, v18, v2

    .line 560
    .local v6, "evdoDbm":I
    const/4 v2, 0x7

    aget v7, v18, v2

    .line 561
    .local v7, "evdoEcio":I
    const/16 v2, 0x8

    aget v8, v18, v2

    .line 562
    .local v8, "evdoSnr":I
    const/16 v2, 0x9

    aget v9, v18, v2

    .line 563
    .local v9, "lteSignalStrength":I
    const/16 v2, 0xa

    aget v10, v18, v2

    .line 564
    .local v10, "lteRsrp":I
    const/16 v2, 0xb

    aget v11, v18, v2

    .line 565
    .local v11, "lteRsrq":I
    const/16 v2, 0xc

    aget v12, v18, v2

    .line 566
    .local v12, "lteRssnr":I
    const/16 v2, 0xd

    aget v13, v18, v2

    .line 570
    .local v13, "lteCqi":I
    const/16 v2, -0x61

    if-lt v10, v2, :cond_3

    .line 571
    const/16 v9, 0x3f

    .line 572
    const/16 v12, 0x82

    .line 573
    const/16 v10, -0x62

    .line 592
    :cond_1
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    .line 596
    add-int/lit8 v2, v16, -0x71

    neg-int v2, v2

    div-int/lit8 v16, v2, 0x2

    .line 599
    :cond_2
    new-instance v1, Landroid/telephony/SignalStrength;

    if-gtz v14, :cond_7

    move/from16 v2, v16

    .line 600
    :goto_2
    const/4 v15, 0x1

    .line 599
    invoke-direct/range {v1 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIZ)V

    .line 606
    .local v1, "sst":Landroid/telephony/SignalStrength;
    return-object v1

    .line 574
    .end local v1    # "sst":Landroid/telephony/SignalStrength;
    :cond_3
    const/16 v2, -0x69

    if-lt v10, v2, :cond_4

    .line 575
    const/16 v9, 0xa

    .line 576
    const/16 v12, 0x2d

    .line 577
    const/16 v10, -0x6c

    goto :goto_1

    .line 578
    :cond_4
    const/16 v2, -0x71

    if-lt v10, v2, :cond_5

    .line 579
    const/4 v9, 0x5

    .line 580
    const/16 v12, 0xa

    .line 581
    const/16 v10, -0x76

    goto :goto_1

    .line 582
    :cond_5
    const/16 v2, -0x7d

    if-lt v10, v2, :cond_6

    .line 583
    const/4 v9, 0x3

    .line 584
    const/16 v12, -0x1e

    .line 585
    const/16 v10, -0x80

    goto :goto_1

    .line 586
    :cond_6
    const/16 v2, -0x2c

    if-lt v10, v2, :cond_1

    .line 587
    const/16 v9, 0x40

    .line 588
    const/16 v12, -0xc8

    .line 589
    const/16 v10, -0x8c

    goto :goto_1

    :cond_7
    move v2, v14

    .line 599
    goto :goto_2
.end method

.method protected send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 533
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v1, 0x84

    if-lt v0, v1, :cond_0

    .line 534
    const-string/jumbo v0, "RILJ-HwHisiRIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ": Unsupported request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 536
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 532
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0
.end method

.method public setModemPcm(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 685
    const/16 v2, 0x209

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 687
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/HwHisiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HwHisiRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 682
    return-void

    .line 688
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
