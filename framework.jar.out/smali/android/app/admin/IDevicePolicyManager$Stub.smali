.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x67

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x91

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x5c

.field static final TRANSACTION_approveCaCert:I = 0x53

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x57

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x68

.field static final TRANSACTION_clearDeviceOwner:I = 0x43

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x5d

.field static final TRANSACTION_clearProfileOwner:I = 0x4a

.field static final TRANSACTION_createAndManageUser:I = 0x73

.field static final TRANSACTION_enableSystemApp:I = 0x76

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x77

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x52

.field static final TRANSACTION_forceRemoveActiveAdmin:I = 0x37

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x79

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x7a

.field static final TRANSACTION_getActiveAdmins:I = 0x33

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x5b

.field static final TRANSACTION_getApplicationRestrictions:I = 0x5f

.field static final TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x61

.field static final TRANSACTION_getAutoTimeRequired:I = 0x95

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x8d

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x8e

.field static final TRANSACTION_getCameraDisabled:I = 0x2c

.field static final TRANSACTION_getCertInstallerPackage:I = 0x59

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x86

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x87

.field static final TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0x89

.field static final TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0x8a

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x93

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x18

.field static final TRANSACTION_getDeviceOwnerComponent:I = 0x41

.field static final TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x4d

.field static final TRANSACTION_getDeviceOwnerName:I = 0x42

.field static final TRANSACTION_getDeviceOwnerUserId:I = 0x44

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0x9e

.field static final TRANSACTION_getForceEphemeralUsers:I = 0x97

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x25

.field static final TRANSACTION_getKeepUninstalledPackages:I = 0xa6

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x30

.field static final TRANSACTION_getLockTaskPackages:I = 0x7c

.field static final TRANSACTION_getLongSupportMessage:I = 0xae

.field static final TRANSACTION_getLongSupportMessageForUser:I = 0xb0

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_getMaximumTimeToLockForUserAndProfiles:I = 0x1f

.field static final TRANSACTION_getOrganizationColor:I = 0xb4

.field static final TRANSACTION_getOrganizationColorForUser:I = 0xb5

.field static final TRANSACTION_getOrganizationName:I = 0xb7

.field static final TRANSACTION_getOrganizationNameForUser:I = 0xb8

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPermissionGrantState:I = 0xa3

.field static final TRANSACTION_getPermissionPolicy:I = 0xa1

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x6a

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x6b

.field static final TRANSACTION_getPermittedInputMethods:I = 0x6e

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x6f

.field static final TRANSACTION_getProfileOwner:I = 0x46

.field static final TRANSACTION_getProfileOwnerName:I = 0x47

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getRemoveWarning:I = 0x35

.field static final TRANSACTION_getRequiredStrongAuthTimeout:I = 0x21

.field static final TRANSACTION_getRestrictionsProvider:I = 0x64

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x2e

.field static final TRANSACTION_getShortSupportMessage:I = 0xac

.field static final TRANSACTION_getShortSupportMessageForUser:I = 0xaf

.field static final TRANSACTION_getStorageEncryption:I = 0x28

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x29

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0x9b

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x90

.field static final TRANSACTION_getUserProvisioningState:I = 0xb9

.field static final TRANSACTION_getUserRestrictions:I = 0x66

.field static final TRANSACTION_getWifiMacAddress:I = 0xa9

.field static final TRANSACTION_hasGrantedPolicy:I = 0x38

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x4b

.field static final TRANSACTION_installCaCert:I = 0x50

.field static final TRANSACTION_installKeyPair:I = 0x55

.field static final TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x6c

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x32

.field static final TRANSACTION_isAffiliatedUser:I = 0xbc

.field static final TRANSACTION_isApplicationHidden:I = 0x72

.field static final TRANSACTION_isBackupServiceEnabled:I = 0xc7

.field static final TRANSACTION_isCaCertApproved:I = 0x54

.field static final TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x62

.field static final TRANSACTION_isDeviceProvisioned:I = 0xc3

.field static final TRANSACTION_isDeviceProvisioningConfigApplied:I = 0xc4

.field static final TRANSACTION_isInputMethodPermittedByAdmin:I = 0x70

.field static final TRANSACTION_isLockTaskPermitted:I = 0x7d

.field static final TRANSACTION_isManagedProfile:I = 0xa7

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x81

.field static final TRANSACTION_isPackageSuspended:I = 0x4f

.field static final TRANSACTION_isProfileActivePasswordSufficientForParent:I = 0x17

.field static final TRANSACTION_isProvisioningAllowed:I = 0xa4

.field static final TRANSACTION_isRemovingAdmin:I = 0x98

.field static final TRANSACTION_isSecurityLoggingEnabled:I = 0xbe

.field static final TRANSACTION_isSeparateProfileChallengeAllowed:I = 0xb1

.field static final TRANSACTION_isSystemOnlyUser:I = 0xa8

.field static final TRANSACTION_isUninstallBlocked:I = 0x84

.field static final TRANSACTION_isUninstallInQueue:I = 0xc1

.field static final TRANSACTION_lockNow:I = 0x22

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x82

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0x9f

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x34

.field static final TRANSACTION_reboot:I = 0xaa

.field static final TRANSACTION_removeActiveAdmin:I = 0x36

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x92

.field static final TRANSACTION_removeKeyPair:I = 0x56

.field static final TRANSACTION_removeUser:I = 0x74

.field static final TRANSACTION_reportFailedFingerprintAttempt:I = 0x3c

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x3a

.field static final TRANSACTION_reportKeyguardDismissed:I = 0x3e

.field static final TRANSACTION_reportKeyguardSecured:I = 0x3f

.field static final TRANSACTION_reportSuccessfulFingerprintAttempt:I = 0x3d

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x3b

.field static final TRANSACTION_requestBugreport:I = 0x2a

.field static final TRANSACTION_resetPassword:I = 0x1c

.field static final TRANSACTION_retrievePreRebootSecurityLogs:I = 0xc0

.field static final TRANSACTION_retrieveSecurityLogs:I = 0xbf

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x78

.field static final TRANSACTION_setActiveAdmin:I = 0x31

.field static final TRANSACTION_setActivePasswordState:I = 0x39

.field static final TRANSACTION_setAffiliationIds:I = 0xbb

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x5a

.field static final TRANSACTION_setApplicationHidden:I = 0x71

.field static final TRANSACTION_setApplicationRestrictions:I = 0x5e

.field static final TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x60

.field static final TRANSACTION_setAutoTimeRequired:I = 0x94

.field static final TRANSACTION_setBackupServiceEnabled:I = 0xc6

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x8c

.field static final TRANSACTION_setCameraDisabled:I = 0x2b

.field static final TRANSACTION_setCertInstallerPackage:I = 0x58

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x85

.field static final TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0x88

.field static final TRANSACTION_setDeviceOwner:I = 0x40

.field static final TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x4c

.field static final TRANSACTION_setDeviceProvisioningConfigApplied:I = 0xc5

.field static final TRANSACTION_setForceEphemeralUsers:I = 0x96

.field static final TRANSACTION_setGlobalProxy:I = 0x24

.field static final TRANSACTION_setGlobalSetting:I = 0x7e

.field static final TRANSACTION_setKeepUninstalledPackages:I = 0xa5

.field static final TRANSACTION_setKeyguardDisabled:I = 0x9c

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2f

.field static final TRANSACTION_setLockTaskPackages:I = 0x7b

.field static final TRANSACTION_setLongSupportMessage:I = 0xad

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x80

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_setOrganizationColor:I = 0xb2

.field static final TRANSACTION_setOrganizationColorForUser:I = 0xb3

.field static final TRANSACTION_setOrganizationName:I = 0xb6

.field static final TRANSACTION_setPackagesSuspended:I = 0x4e

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermissionGrantState:I = 0xa2

.field static final TRANSACTION_setPermissionPolicy:I = 0xa0

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x69

.field static final TRANSACTION_setPermittedInputMethods:I = 0x6d

.field static final TRANSACTION_setProfileEnabled:I = 0x48

.field static final TRANSACTION_setProfileName:I = 0x49

.field static final TRANSACTION_setProfileOwner:I = 0x45

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x26

.field static final TRANSACTION_setRequiredStrongAuthTimeout:I = 0x20

.field static final TRANSACTION_setRestrictionsProvider:I = 0x63

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x2d

.field static final TRANSACTION_setSecureSetting:I = 0x7f

.field static final TRANSACTION_setSecurityLoggingEnabled:I = 0xbd

.field static final TRANSACTION_setShortSupportMessage:I = 0xab

.field static final TRANSACTION_setStatusBarDisabled:I = 0x9d

.field static final TRANSACTION_setStorageEncryption:I = 0x27

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0x9a

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x8f

.field static final TRANSACTION_setUninstallBlocked:I = 0x83

.field static final TRANSACTION_setUserIcon:I = 0x99

.field static final TRANSACTION_setUserProvisioningState:I = 0xba

.field static final TRANSACTION_setUserRestriction:I = 0x65

.field static final TRANSACTION_startManagedQuickContact:I = 0x8b

.field static final TRANSACTION_switchUser:I = 0x75

.field static final TRANSACTION_uninstallCaCerts:I = 0x51

.field static final TRANSACTION_uninstallPackageWithActiveAdmins:I = 0xc2

.field static final TRANSACTION_wipeData:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 73
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 3253
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 60
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 62
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v30, 0x1

    .line 63
    .local v30, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v4, 0x1

    return v4

    .line 57
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_0
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 62
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1
    const/16 v30, 0x0

    goto :goto_1

    .line 69
    .end local v6    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 78
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 80
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v30, 0x1

    .line 81
    .restart local v30    # "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 82
    .local v56, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v4, 0x1

    return v4

    .line 75
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 80
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_3
    const/16 v30, 0x0

    goto :goto_3

    .line 88
    .end local v6    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 97
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 99
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v30, 0x1

    .line 100
    .restart local v30    # "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v4, 0x1

    return v4

    .line 94
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 99
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_5
    const/16 v30, 0x0

    goto :goto_5

    .line 106
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 115
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 117
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v30, 0x1

    .line 118
    .restart local v30    # "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 119
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v4, 0x1

    return v4

    .line 112
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 117
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_7
    const/16 v30, 0x0

    goto :goto_7

    .line 125
    .end local v6    # "_arg1":I
    :sswitch_5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 128
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 134
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 136
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v30, 0x1

    .line 137
    .restart local v30    # "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v4, 0x1

    return v4

    .line 131
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 136
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_9
    const/16 v30, 0x0

    goto :goto_9

    .line 143
    .end local v6    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 146
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 152
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v30, 0x1

    .line 155
    .restart local v30    # "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 156
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 149
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 154
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_b

    .line 162
    .end local v6    # "_arg1":I
    :sswitch_7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 165
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 171
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v30, 0x1

    .line 174
    .restart local v30    # "_arg2":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/4 v4, 0x1

    return v4

    .line 168
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 173
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_d
    const/16 v30, 0x0

    goto :goto_d

    .line 180
    .end local v6    # "_arg1":I
    :sswitch_8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 183
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 189
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 191
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v30, 0x1

    .line 192
    .restart local v30    # "_arg2":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 193
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v4, 0x1

    return v4

    .line 186
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 191
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_f
    const/16 v30, 0x0

    goto :goto_f

    .line 199
    .end local v6    # "_arg1":I
    :sswitch_9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 202
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 208
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 210
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/16 v30, 0x1

    .line 211
    .restart local v30    # "_arg2":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v4, 0x1

    return v4

    .line 205
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_10
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 210
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_11
    const/16 v30, 0x0

    goto :goto_11

    .line 217
    .end local v6    # "_arg1":I
    :sswitch_a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 220
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 226
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 228
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/16 v30, 0x1

    .line 229
    .restart local v30    # "_arg2":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 230
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v4, 0x1

    return v4

    .line 223
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_12
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 228
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_13
    const/16 v30, 0x0

    goto :goto_13

    .line 236
    .end local v6    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 239
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 245
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 247
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/16 v30, 0x1

    .line 248
    .restart local v30    # "_arg2":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v4, 0x1

    return v4

    .line 242
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    .line 247
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_15
    const/16 v30, 0x0

    goto :goto_15

    .line 254
    .end local v6    # "_arg1":I
    :sswitch_c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 257
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 263
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 265
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    const/16 v30, 0x1

    .line 266
    .restart local v30    # "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 267
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v4, 0x1

    return v4

    .line 260
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_16
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    .line 265
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_17
    const/16 v30, 0x0

    goto :goto_17

    .line 273
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 276
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 282
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 284
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/16 v30, 0x1

    .line 285
    .restart local v30    # "_arg2":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v4, 0x1

    return v4

    .line 279
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_18
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 284
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_19
    const/16 v30, 0x0

    goto :goto_19

    .line 291
    .end local v6    # "_arg1":I
    :sswitch_e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 294
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 300
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 302
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v30, 0x1

    .line 303
    .restart local v30    # "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 304
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v4, 0x1

    return v4

    .line 297
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_1a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    .line 302
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1b
    const/16 v30, 0x0

    goto :goto_1b

    .line 310
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 313
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 319
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 321
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v30, 0x1

    .line 322
    .restart local v30    # "_arg2":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v4, 0x1

    return v4

    .line 316
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_1c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 321
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1d
    const/16 v30, 0x0

    goto :goto_1d

    .line 328
    .end local v6    # "_arg1":I
    :sswitch_10
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 331
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 337
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 339
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v30, 0x1

    .line 340
    .restart local v30    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 341
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v4, 0x1

    return v4

    .line 334
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_1e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .line 339
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1f
    const/16 v30, 0x0

    goto :goto_1f

    .line 347
    .end local v6    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 350
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 356
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 358
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/16 v30, 0x1

    .line 359
    .restart local v30    # "_arg2":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v4, 0x1

    return v4

    .line 353
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_20
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_20

    .line 358
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_21
    const/16 v30, 0x0

    goto :goto_21

    .line 365
    .end local v6    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 368
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 374
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 376
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v30, 0x1

    .line 377
    .restart local v30    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 378
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v4, 0x1

    return v4

    .line 371
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_22
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    .line 376
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_23
    const/16 v30, 0x0

    goto :goto_23

    .line 384
    .end local v6    # "_arg1":I
    :sswitch_13
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 387
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 393
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 395
    .local v28, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    const/16 v30, 0x1

    .line 396
    .restart local v30    # "_arg2":Z
    :goto_25
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move/from16 v3, v30

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v4, 0x1

    return v4

    .line 390
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_24
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    .line 395
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_25
    const/16 v30, 0x0

    goto :goto_25

    .line 402
    .end local v28    # "_arg1":J
    :sswitch_14
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 405
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 411
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 413
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    const/16 v30, 0x1

    .line 414
    .restart local v30    # "_arg2":Z
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v58

    .line 415
    .local v58, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    const/4 v4, 0x1

    return v4

    .line 408
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_26
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_26

    .line 413
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_27
    const/16 v30, 0x0

    goto :goto_27

    .line 421
    .end local v6    # "_arg1":I
    :sswitch_15
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 424
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 430
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 432
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    const/16 v30, 0x1

    .line 433
    .restart local v30    # "_arg2":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v58

    .line 434
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    const/4 v4, 0x1

    return v4

    .line 427
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_28
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .line 432
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_29
    const/16 v30, 0x0

    goto :goto_29

    .line 440
    .end local v6    # "_arg1":I
    :sswitch_16
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 444
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v49, 0x1

    .line 445
    .local v49, "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    move-result v70

    .line 446
    .local v70, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v70, :cond_2b

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v4, 0x1

    return v4

    .line 444
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_2a
    const/16 v49, 0x0

    goto :goto_2a

    .line 447
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2b

    .line 452
    .end local v5    # "_arg0":I
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 455
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProfileActivePasswordSufficientForParent(I)Z

    move-result v70

    .line 456
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v70, :cond_2c

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v4, 0x1

    return v4

    .line 457
    :cond_2c
    const/4 v4, 0x0

    goto :goto_2c

    .line 462
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 466
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v49, 0x1

    .line 467
    .restart local v49    # "_arg1":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v56

    .line 468
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v4, 0x1

    return v4

    .line 466
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_2d
    const/16 v49, 0x0

    goto :goto_2d

    .line 474
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 478
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v49, 0x1

    .line 479
    .restart local v49    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v56

    .line 480
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v4, 0x1

    return v4

    .line 478
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_2e
    const/16 v49, 0x0

    goto :goto_2e

    .line 486
    .end local v5    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 489
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 495
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    const/16 v30, 0x1

    .line 498
    .restart local v30    # "_arg2":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v4, 0x1

    return v4

    .line 492
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_2f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2f

    .line 497
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_30
    const/16 v30, 0x0

    goto :goto_30

    .line 504
    .end local v6    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 507
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 513
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 515
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    const/16 v30, 0x1

    .line 516
    .restart local v30    # "_arg2":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 517
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v4, 0x1

    return v4

    .line 510
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_31
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .line 515
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_32
    const/16 v30, 0x0

    goto :goto_32

    .line 523
    .end local v6    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 527
    .local v27, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 528
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v70

    .line 529
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v70, :cond_33

    const/4 v4, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v4, 0x1

    return v4

    .line 530
    :cond_33
    const/4 v4, 0x0

    goto :goto_33

    .line 535
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 538
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 544
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 546
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/16 v30, 0x1

    .line 547
    .restart local v30    # "_arg2":Z
    :goto_35
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move/from16 v3, v30

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v4, 0x1

    return v4

    .line 541
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_34
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 546
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_35
    const/16 v30, 0x0

    goto :goto_35

    .line 553
    .end local v28    # "_arg1":J
    :sswitch_1e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 556
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 562
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 564
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    const/16 v30, 0x1

    .line 565
    .restart local v30    # "_arg2":Z
    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v58

    .line 566
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 568
    const/4 v4, 0x1

    return v4

    .line 559
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_36
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    .line 564
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_37
    const/16 v30, 0x0

    goto :goto_37

    .line 572
    .end local v6    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 575
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v58

    .line 576
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 578
    const/4 v4, 0x1

    return v4

    .line 582
    .end local v5    # "_arg0":I
    .end local v58    # "_result":J
    :sswitch_20
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    .line 585
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 591
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 593
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    const/16 v30, 0x1

    .line 594
    .restart local v30    # "_arg2":Z
    :goto_39
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move/from16 v3, v30

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v4, 0x1

    return v4

    .line 588
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_38
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_38

    .line 593
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_39
    const/16 v30, 0x0

    goto :goto_39

    .line 600
    .end local v28    # "_arg1":J
    :sswitch_21
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 603
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 609
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 611
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3b

    const/16 v30, 0x1

    .line 612
    .restart local v30    # "_arg2":Z
    :goto_3b
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v58

    .line 613
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 615
    const/4 v4, 0x1

    return v4

    .line 606
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_3a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3a

    .line 611
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_3b
    const/16 v30, 0x0

    goto :goto_3b

    .line 619
    .end local v6    # "_arg1":I
    :sswitch_22
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    const/16 v36, 0x1

    .line 622
    .local v36, "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(Z)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    const/4 v4, 0x1

    return v4

    .line 621
    .end local v36    # "_arg0":Z
    :cond_3c
    const/16 v36, 0x0

    goto :goto_3c

    .line 628
    :sswitch_23
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 631
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v4, 0x1

    return v4

    .line 637
    .end local v5    # "_arg0":I
    :sswitch_24
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 640
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 646
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 648
    .local v23, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 649
    .local v53, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v60

    .line 650
    .local v60, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v60, :cond_3e

    .line 652
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 658
    :goto_3e
    const/4 v4, 0x1

    return v4

    .line 643
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_3d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3d

    .line 656
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_3e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 662
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_25
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 665
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v60

    .line 666
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    if-eqz v60, :cond_3f

    .line 668
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 674
    :goto_3f
    const/4 v4, 0x1

    return v4

    .line 672
    :cond_3f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 678
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_26
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 681
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 687
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 688
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/net/ProxyInfo;

    .line 693
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v4, 0x1

    return v4

    .line 684
    :cond_40
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    .line 691
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_41
    const/16 v42, 0x0

    .local v42, "_arg1":Landroid/net/ProxyInfo;
    goto :goto_41

    .line 699
    .end local v42    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_27
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 702
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 708
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    const/16 v49, 0x1

    .line 709
    .restart local v49    # "_arg1":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v56

    .line 710
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v4, 0x1

    return v4

    .line 705
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_42
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 708
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_43
    const/16 v49, 0x0

    goto :goto_43

    .line 716
    :sswitch_28
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 719
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 725
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 726
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 727
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    if-eqz v70, :cond_45

    const/4 v4, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v4, 0x1

    return v4

    .line 722
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_44
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    .line 728
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_45
    const/4 v4, 0x0

    goto :goto_45

    .line 733
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 737
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 738
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v56

    .line 739
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v4, 0x1

    return v4

    .line 745
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":I
    :sswitch_2a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    .line 748
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 753
    :goto_46
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v70

    .line 754
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    if-eqz v70, :cond_47

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    const/4 v4, 0x1

    return v4

    .line 751
    .end local v70    # "_result":Z
    :cond_46
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    .line 755
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_47
    const/4 v4, 0x0

    goto :goto_47

    .line 760
    .end local v70    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    .line 763
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 769
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_49

    const/16 v49, 0x1

    .line 770
    .restart local v49    # "_arg1":Z
    :goto_49
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v4, 0x1

    return v4

    .line 766
    .end local v49    # "_arg1":Z
    :cond_48
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    .line 769
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_49
    const/16 v49, 0x0

    goto :goto_49

    .line 776
    :sswitch_2c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    .line 779
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 785
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 786
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 787
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    if-eqz v70, :cond_4b

    const/4 v4, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    const/4 v4, 0x1

    return v4

    .line 782
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_4a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    .line 788
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_4b
    const/4 v4, 0x0

    goto :goto_4b

    .line 793
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 796
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 802
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    const/16 v49, 0x1

    .line 803
    .restart local v49    # "_arg1":Z
    :goto_4d
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    const/4 v4, 0x1

    return v4

    .line 799
    .end local v49    # "_arg1":Z
    :cond_4c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4c

    .line 802
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_4d
    const/16 v49, 0x0

    goto :goto_4d

    .line 809
    :sswitch_2e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 812
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 818
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 819
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 820
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    if-eqz v70, :cond_4f

    const/4 v4, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    const/4 v4, 0x1

    return v4

    .line 815
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_4e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    .line 821
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_4f
    const/4 v4, 0x0

    goto :goto_4f

    .line 826
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    .line 829
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 835
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 837
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_51

    const/16 v30, 0x1

    .line 838
    .restart local v30    # "_arg2":Z
    :goto_51
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v4, 0x1

    return v4

    .line 832
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_50
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_50

    .line 837
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_51
    const/16 v30, 0x0

    goto :goto_51

    .line 844
    .end local v6    # "_arg1":I
    :sswitch_30
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    .line 847
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 853
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 855
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_53

    const/16 v30, 0x1

    .line 856
    .restart local v30    # "_arg2":Z
    :goto_53
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 857
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    const/4 v4, 0x1

    return v4

    .line 850
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_52
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_52

    .line 855
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_53
    const/16 v30, 0x0

    goto :goto_53

    .line 863
    .end local v6    # "_arg1":I
    :sswitch_31
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_54

    .line 866
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 872
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    const/16 v49, 0x1

    .line 874
    .local v49, "_arg1":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 875
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v4, 0x1

    return v4

    .line 869
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_54
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_54

    .line 872
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_55
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_55

    .line 881
    .end local v49    # "_arg1":Z
    :sswitch_32
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_56

    .line 884
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 890
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 891
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 892
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    if-eqz v70, :cond_57

    const/4 v4, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    const/4 v4, 0x1

    return v4

    .line 887
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_56
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_56

    .line 893
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_57
    const/4 v4, 0x0

    goto :goto_57

    .line 898
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 901
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v67

    .line 902
    .local v67, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 904
    const/4 v4, 0x1

    return v4

    .line 908
    .end local v5    # "_arg0":I
    .end local v67    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_34
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 912
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 913
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v70

    .line 914
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    if-eqz v70, :cond_58

    const/4 v4, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    const/4 v4, 0x1

    return v4

    .line 915
    :cond_58
    const/4 v4, 0x0

    goto :goto_58

    .line 920
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    .line 923
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 929
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    .line 930
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/RemoteCallback;

    .line 936
    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 937
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/4 v4, 0x1

    return v4

    .line 926
    .end local v7    # "_arg2":I
    :cond_59
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    .line 933
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_5a
    const/16 v44, 0x0

    .local v44, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_5a

    .line 943
    .end local v44    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_36
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5b

    .line 946
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 952
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 953
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v4, 0x1

    return v4

    .line 949
    .end local v6    # "_arg1":I
    :cond_5b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5b

    .line 959
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_37
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 962
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 968
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 969
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    const/4 v4, 0x1

    return v4

    .line 965
    .end local v6    # "_arg1":I
    :cond_5c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5c

    .line 975
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_38
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 978
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 984
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 986
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 987
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v70

    .line 988
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    if-eqz v70, :cond_5e

    const/4 v4, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    const/4 v4, 0x1

    return v4

    .line 981
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :cond_5d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    .line 989
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v70    # "_result":Z
    :cond_5e
    const/4 v4, 0x0

    goto :goto_5e

    .line 994
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :sswitch_39
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 998
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1000
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1002
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1004
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1006
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1008
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1010
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1012
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg8":I
    move-object/from16 v4, p0

    .line 1013
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    .line 1014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    const/4 v4, 0x1

    return v4

    .line 1019
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    :sswitch_3a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1022
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    const/4 v4, 0x1

    return v4

    .line 1028
    .end local v5    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1031
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 1032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    const/4 v4, 0x1

    return v4

    .line 1037
    .end local v5    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1040
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedFingerprintAttempt(I)V

    .line 1041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    const/4 v4, 0x1

    return v4

    .line 1046
    .end local v5    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1049
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulFingerprintAttempt(I)V

    .line 1050
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    const/4 v4, 0x1

    return v4

    .line 1055
    .end local v5    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1058
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    const/4 v4, 0x1

    return v4

    .line 1064
    .end local v5    # "_arg0":I
    :sswitch_3f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1067
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 1068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    const/4 v4, 0x1

    return v4

    .line 1073
    .end local v5    # "_arg0":I
    :sswitch_40
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5f

    .line 1076
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1082
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1084
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1085
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 1086
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    if-eqz v70, :cond_60

    const/4 v4, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    const/4 v4, 0x1

    return v4

    .line 1079
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_5f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    .line 1087
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_60
    const/4 v4, 0x0

    goto :goto_60

    .line 1092
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_41
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    const/16 v36, 0x1

    .line 1095
    .restart local v36    # "_arg0":Z
    :goto_61
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v60

    .line 1096
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    if-eqz v60, :cond_62

    .line 1098
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1104
    :goto_62
    const/4 v4, 0x1

    return v4

    .line 1094
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_61
    const/16 v36, 0x0

    goto :goto_61

    .line 1102
    .restart local v36    # "_arg0":Z
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_62
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 1108
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_42
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v65

    .line 1110
    .local v65, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    const/4 v4, 0x1

    return v4

    .line 1116
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1119
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    const/4 v4, 0x1

    return v4

    .line 1125
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_44
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v56

    .line 1127
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    const/4 v4, 0x1

    return v4

    .line 1133
    .end local v56    # "_result":I
    :sswitch_45
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_63

    .line 1136
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1142
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1144
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1145
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 1146
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    if-eqz v70, :cond_64

    const/4 v4, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    const/4 v4, 0x1

    return v4

    .line 1139
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_63
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    .line 1147
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_64
    const/4 v4, 0x0

    goto :goto_64

    .line 1152
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1155
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v60

    .line 1156
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    if-eqz v60, :cond_65

    .line 1158
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1164
    :goto_65
    const/4 v4, 0x1

    return v4

    .line 1162
    :cond_65
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_65

    .line 1168
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1171
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v65

    .line 1172
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1174
    const/4 v4, 0x1

    return v4

    .line 1178
    .end local v5    # "_arg0":I
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_66

    .line 1181
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1186
    :goto_66
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    const/4 v4, 0x1

    return v4

    .line 1184
    :cond_66
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_66

    .line 1192
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_49
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67

    .line 1195
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1201
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1202
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    const/4 v4, 0x1

    return v4

    .line 1198
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_67
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_67

    .line 1208
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 1211
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1216
    :goto_68
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    const/4 v4, 0x1

    return v4

    .line 1214
    :cond_68
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_68

    .line 1222
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v70

    .line 1224
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    if-eqz v70, :cond_69

    const/4 v4, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    const/4 v4, 0x1

    return v4

    .line 1225
    :cond_69
    const/4 v4, 0x0

    goto :goto_69

    .line 1230
    .end local v70    # "_result":Z
    :sswitch_4c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 1233
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1239
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 1240
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 1245
    :goto_6b
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v4, 0x1

    return v4

    .line 1236
    :cond_6a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6a

    .line 1243
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_6b
    const/16 v46, 0x0

    .local v46, "_arg1":Ljava/lang/CharSequence;
    goto :goto_6b

    .line 1251
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_4d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v64

    .line 1253
    .local v64, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    if-eqz v64, :cond_6c

    .line 1255
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1261
    :goto_6c
    const/4 v4, 0x1

    return v4

    .line 1259
    :cond_6c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    .line 1265
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_4e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    .line 1268
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1274
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v50

    .line 1276
    .local v50, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v30, 0x1

    .line 1277
    .restart local v30    # "_arg2":Z
    :goto_6e
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v71

    .line 1278
    .local v71, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1280
    const/4 v4, 0x1

    return v4

    .line 1271
    .end local v30    # "_arg2":Z
    .end local v50    # "_arg1":[Ljava/lang/String;
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_6d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6d

    .line 1276
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v50    # "_arg1":[Ljava/lang/String;
    :cond_6e
    const/16 v30, 0x0

    goto :goto_6e

    .line 1284
    .end local v50    # "_arg1":[Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6f

    .line 1287
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1293
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1294
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 1295
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    if-eqz v70, :cond_70

    const/4 v4, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    const/4 v4, 0x1

    return v4

    .line 1290
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_6f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6f

    .line 1296
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_70
    const/4 v4, 0x0

    goto :goto_70

    .line 1301
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_50
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    .line 1304
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1310
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1311
    .local v16, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    move-result v70

    .line 1312
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    if-eqz v70, :cond_72

    const/4 v4, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    const/4 v4, 0x1

    return v4

    .line 1307
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :cond_71
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_71

    .line 1313
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v70    # "_result":Z
    :cond_72
    const/4 v4, 0x0

    goto :goto_72

    .line 1318
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :sswitch_51
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_73

    .line 1321
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1327
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v50

    .line 1328
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    const/4 v4, 0x1

    return v4

    .line 1324
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_73
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_73

    .line 1334
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_52
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_74

    .line 1337
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1342
    :goto_74
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    const/4 v4, 0x1

    return v4

    .line 1340
    :cond_74
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_74

    .line 1348
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_53
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1352
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1354
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    const/16 v30, 0x1

    .line 1355
    .restart local v30    # "_arg2":Z
    :goto_75
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v70

    .line 1356
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    if-eqz v70, :cond_76

    const/4 v4, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v4, 0x1

    return v4

    .line 1354
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_75
    const/16 v30, 0x0

    goto :goto_75

    .line 1357
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_76
    const/4 v4, 0x0

    goto :goto_76

    .line 1362
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1366
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1367
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v70

    .line 1368
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    if-eqz v70, :cond_77

    const/4 v4, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    const/4 v4, 0x1

    return v4

    .line 1369
    :cond_77
    const/4 v4, 0x0

    goto :goto_77

    .line 1374
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_78

    .line 1377
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1383
    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1385
    .restart local v16    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1387
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 1389
    .local v18, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1391
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    const/16 v20, 0x1

    .local v20, "_arg5":Z
    :goto_79
    move-object/from16 v14, p0

    .line 1392
    invoke-virtual/range {v14 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[B[BLjava/lang/String;Z)Z

    move-result v70

    .line 1393
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    if-eqz v70, :cond_7a

    const/4 v4, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    const/4 v4, 0x1

    return v4

    .line 1380
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :cond_78
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_78

    .line 1391
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v17    # "_arg2":[B
    .restart local v18    # "_arg3":[B
    .restart local v19    # "_arg4":Ljava/lang/String;
    :cond_79
    const/16 v20, 0x0

    goto :goto_79

    .line 1394
    .restart local v20    # "_arg5":Z
    .restart local v70    # "_result":Z
    :cond_7a
    const/4 v4, 0x0

    goto :goto_7a

    .line 1399
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :sswitch_56
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7b

    .line 1402
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1408
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1409
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 1410
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    if-eqz v70, :cond_7c

    const/4 v4, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v4, 0x1

    return v4

    .line 1405
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_7b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7b

    .line 1411
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_7c
    const/4 v4, 0x0

    goto :goto_7c

    .line 1416
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_57
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1420
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7d

    .line 1421
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/net/Uri;

    .line 1427
    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 1429
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 1430
    .local v54, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    const/4 v4, 0x1

    return v4

    .line 1424
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v54    # "_arg3":Landroid/os/IBinder;
    :cond_7d
    const/16 v43, 0x0

    .local v43, "_arg1":Landroid/net/Uri;
    goto :goto_7d

    .line 1436
    .end local v5    # "_arg0":I
    .end local v43    # "_arg1":Landroid/net/Uri;
    :sswitch_58
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7e

    .line 1439
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1445
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1446
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    const/4 v4, 0x1

    return v4

    .line 1442
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_7e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7e

    .line 1452
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_59
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7f

    .line 1455
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1460
    :goto_7f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 1461
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1463
    const/4 v4, 0x1

    return v4

    .line 1458
    .end local v65    # "_result":Ljava/lang/String;
    :cond_7f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7f

    .line 1467
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_80

    .line 1470
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1476
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1478
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_81

    const/16 v30, 0x1

    .line 1479
    .restart local v30    # "_arg2":Z
    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v70

    .line 1480
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    if-eqz v70, :cond_82

    const/4 v4, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    const/4 v4, 0x1

    return v4

    .line 1473
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_80
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_80

    .line 1478
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_81
    const/16 v30, 0x0

    goto :goto_81

    .line 1481
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_82
    const/4 v4, 0x0

    goto :goto_82

    .line 1486
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_5b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_83

    .line 1489
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1494
    :goto_83
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 1495
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1497
    const/4 v4, 0x1

    return v4

    .line 1492
    .end local v65    # "_result":Ljava/lang/String;
    :cond_83
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_83

    .line 1501
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_84

    .line 1504
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1510
    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_85

    .line 1511
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/IntentFilter;

    .line 1517
    :goto_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86

    .line 1518
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ComponentName;

    .line 1523
    :goto_86
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    const/4 v4, 0x1

    return v4

    .line 1507
    :cond_84
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_84

    .line 1514
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_85
    const/16 v40, 0x0

    .local v40, "_arg1":Landroid/content/IntentFilter;
    goto :goto_85

    .line 1521
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :cond_86
    const/16 v24, 0x0

    .local v24, "_arg2":Landroid/content/ComponentName;
    goto :goto_86

    .line 1529
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :sswitch_5d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_87

    .line 1532
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1538
    :goto_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1539
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    const/4 v4, 0x1

    return v4

    .line 1535
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_87
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_87

    .line 1545
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_88

    .line 1548
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1554
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1556
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    .line 1557
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Bundle;

    .line 1562
    :goto_89
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v51

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    const/4 v4, 0x1

    return v4

    .line 1551
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_88
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_88

    .line 1560
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_89
    const/16 v51, 0x0

    .local v51, "_arg2":Landroid/os/Bundle;
    goto :goto_89

    .line 1568
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v51    # "_arg2":Landroid/os/Bundle;
    :sswitch_5f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8a

    .line 1571
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1577
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1578
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v62

    .line 1579
    .local v62, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    if-eqz v62, :cond_8b

    .line 1581
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    const/4 v4, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1587
    :goto_8b
    const/4 v4, 0x1

    return v4

    .line 1574
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_8a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    .line 1585
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_8b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b

    .line 1591
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_60
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8c

    .line 1594
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1600
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1601
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 1602
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    if-eqz v70, :cond_8d

    const/4 v4, 0x1

    :goto_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/4 v4, 0x1

    return v4

    .line 1597
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_8c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c

    .line 1603
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_8d
    const/4 v4, 0x0

    goto :goto_8d

    .line 1608
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_61
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8e

    .line 1611
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1616
    :goto_8e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 1617
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1618
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1619
    const/4 v4, 0x1

    return v4

    .line 1614
    .end local v65    # "_result":Ljava/lang/String;
    :cond_8e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8e

    .line 1623
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_62
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage()Z

    move-result v70

    .line 1625
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    if-eqz v70, :cond_8f

    const/4 v4, 0x1

    :goto_8f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    const/4 v4, 0x1

    return v4

    .line 1626
    :cond_8f
    const/4 v4, 0x0

    goto :goto_8f

    .line 1631
    .end local v70    # "_result":Z
    :sswitch_63
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_90

    .line 1634
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1640
    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_91

    .line 1641
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 1646
    :goto_91
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    const/4 v4, 0x1

    return v4

    .line 1637
    :cond_90
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_90

    .line 1644
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_91
    const/16 v38, 0x0

    .local v38, "_arg1":Landroid/content/ComponentName;
    goto :goto_91

    .line 1652
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :sswitch_64
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1655
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v60

    .line 1656
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    if-eqz v60, :cond_92

    .line 1658
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1664
    :goto_92
    const/4 v4, 0x1

    return v4

    .line 1662
    :cond_92
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_92

    .line 1668
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_65
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_93

    .line 1671
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1677
    :goto_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1679
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94

    const/16 v30, 0x1

    .line 1680
    .restart local v30    # "_arg2":Z
    :goto_94
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 1681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    const/4 v4, 0x1

    return v4

    .line 1674
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_93
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_93

    .line 1679
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_94
    const/16 v30, 0x0

    goto :goto_94

    .line 1686
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_66
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_95

    .line 1689
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1694
    :goto_95
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v62

    .line 1695
    .restart local v62    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    if-eqz v62, :cond_96

    .line 1697
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    const/4 v4, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1703
    :goto_96
    const/4 v4, 0x1

    return v4

    .line 1692
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_95
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_95

    .line 1701
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_96
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_96

    .line 1707
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_67
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_97

    .line 1710
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1716
    :goto_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_98

    .line 1717
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/IntentFilter;

    .line 1723
    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1724
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 1725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    const/4 v4, 0x1

    return v4

    .line 1713
    .end local v7    # "_arg2":I
    :cond_97
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_97

    .line 1720
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_98
    const/16 v40, 0x0

    .restart local v40    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_98

    .line 1730
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_68
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_99

    .line 1733
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1738
    :goto_99
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 1739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1740
    const/4 v4, 0x1

    return v4

    .line 1736
    :cond_99
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_99

    .line 1744
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_69
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9a

    .line 1747
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1753
    :goto_9a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v72

    .line 1754
    .local v72, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v47

    .line 1755
    .local v47, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v70

    .line 1756
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    if-eqz v70, :cond_9b

    const/4 v4, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    const/4 v4, 0x1

    return v4

    .line 1750
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9a

    .line 1757
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9b
    const/4 v4, 0x0

    goto :goto_9b

    .line 1762
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    .line 1765
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1770
    :goto_9c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v66

    .line 1771
    .local v66, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1772
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1773
    const/4 v4, 0x1

    return v4

    .line 1768
    .end local v66    # "_result":Ljava/util/List;
    :cond_9c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9c

    .line 1777
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1780
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v66

    .line 1781
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1783
    const/4 v4, 0x1

    return v4

    .line 1787
    .end local v5    # "_arg0":I
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_6c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9d

    .line 1790
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1796
    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1798
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1799
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 1800
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    if-eqz v70, :cond_9e

    const/4 v4, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    const/4 v4, 0x1

    return v4

    .line 1793
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_9d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9d

    .line 1801
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_9e
    const/4 v4, 0x0

    goto :goto_9e

    .line 1806
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_6d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9f

    .line 1809
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1815
    :goto_9f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v72

    .line 1816
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v47

    .line 1817
    .restart local v47    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v70

    .line 1818
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    if-eqz v70, :cond_a0

    const/4 v4, 0x1

    :goto_a0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1820
    const/4 v4, 0x1

    return v4

    .line 1812
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9f

    .line 1819
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_a0
    const/4 v4, 0x0

    goto :goto_a0

    .line 1824
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a1

    .line 1827
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1832
    :goto_a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v66

    .line 1833
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1835
    const/4 v4, 0x1

    return v4

    .line 1830
    .end local v66    # "_result":Ljava/util/List;
    :cond_a1
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a1

    .line 1839
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1840
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v66

    .line 1841
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1843
    const/4 v4, 0x1

    return v4

    .line 1847
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_70
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a2

    .line 1850
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1856
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1858
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1859
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 1860
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    if-eqz v70, :cond_a3

    const/4 v4, 0x1

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    const/4 v4, 0x1

    return v4

    .line 1853
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_a2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    .line 1861
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_a3
    const/4 v4, 0x0

    goto :goto_a3

    .line 1866
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_71
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a4

    .line 1869
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1875
    :goto_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1877
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a5

    const/16 v30, 0x1

    .line 1878
    .restart local v30    # "_arg2":Z
    :goto_a5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v70

    .line 1879
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1880
    if-eqz v70, :cond_a6

    const/4 v4, 0x1

    :goto_a6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    const/4 v4, 0x1

    return v4

    .line 1872
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_a4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a4

    .line 1877
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_a5
    const/16 v30, 0x0

    goto :goto_a5

    .line 1880
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_a6
    const/4 v4, 0x0

    goto :goto_a6

    .line 1885
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_72
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a7

    .line 1888
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1894
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1895
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 1896
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    if-eqz v70, :cond_a8

    const/4 v4, 0x1

    :goto_a8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    const/4 v4, 0x1

    return v4

    .line 1891
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_a7
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a7

    .line 1897
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_a8
    const/4 v4, 0x0

    goto :goto_a8

    .line 1902
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_73
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a9

    .line 1905
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1911
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1913
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_aa

    .line 1914
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ComponentName;

    .line 1920
    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ab

    .line 1921
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PersistableBundle;

    .line 1927
    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v21, p0

    move-object/from16 v22, v15

    move/from16 v26, v9

    .line 1928
    invoke-virtual/range {v21 .. v26}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v63

    .line 1929
    .local v63, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1930
    if-eqz v63, :cond_ac

    .line 1931
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    const/4 v4, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1937
    :goto_ac
    const/4 v4, 0x1

    return v4

    .line 1908
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :cond_a9
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a9

    .line 1917
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_aa
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Landroid/content/ComponentName;
    goto :goto_aa

    .line 1924
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :cond_ab
    const/16 v25, 0x0

    .local v25, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_ab

    .line 1935
    .end local v25    # "_arg3":Landroid/os/PersistableBundle;
    .restart local v9    # "_arg4":I
    .restart local v63    # "_result":Landroid/os/UserHandle;
    :cond_ac
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_ac

    .line 1941
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :sswitch_74
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ad

    .line 1944
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1950
    :goto_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ae

    .line 1951
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/UserHandle;

    .line 1956
    :goto_ae
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v70

    .line 1957
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1958
    if-eqz v70, :cond_af

    const/4 v4, 0x1

    :goto_af
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    const/4 v4, 0x1

    return v4

    .line 1947
    .end local v70    # "_result":Z
    :cond_ad
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ad

    .line 1954
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ae
    const/16 v45, 0x0

    .local v45, "_arg1":Landroid/os/UserHandle;
    goto :goto_ae

    .line 1958
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_af
    const/4 v4, 0x0

    goto :goto_af

    .line 1963
    .end local v70    # "_result":Z
    :sswitch_75
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b0

    .line 1966
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1972
    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b1

    .line 1973
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/UserHandle;

    .line 1978
    :goto_b1
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v70

    .line 1979
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    if-eqz v70, :cond_b2

    const/4 v4, 0x1

    :goto_b2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    const/4 v4, 0x1

    return v4

    .line 1969
    .end local v70    # "_result":Z
    :cond_b0
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b0

    .line 1976
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_b1
    const/16 v45, 0x0

    .restart local v45    # "_arg1":Landroid/os/UserHandle;
    goto :goto_b1

    .line 1980
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_b2
    const/4 v4, 0x0

    goto :goto_b2

    .line 1985
    .end local v70    # "_result":Z
    :sswitch_76
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b3

    .line 1988
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1994
    :goto_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1995
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    const/4 v4, 0x1

    return v4

    .line 1991
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_b3
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b3

    .line 2001
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_77
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b4

    .line 2004
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2010
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b5

    .line 2011
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Intent;

    .line 2016
    :goto_b5
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    move-result v56

    .line 2017
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2019
    const/4 v4, 0x1

    return v4

    .line 2007
    .end local v56    # "_result":I
    :cond_b4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    .line 2014
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_b5
    const/16 v39, 0x0

    .local v39, "_arg1":Landroid/content/Intent;
    goto :goto_b5

    .line 2023
    .end local v39    # "_arg1":Landroid/content/Intent;
    :sswitch_78
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b6

    .line 2026
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2032
    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2034
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b7

    const/16 v30, 0x1

    .line 2035
    .restart local v30    # "_arg2":Z
    :goto_b7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2037
    const/4 v4, 0x1

    return v4

    .line 2029
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_b6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b6

    .line 2034
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_b7
    const/16 v30, 0x0

    goto :goto_b7

    .line 2041
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_79
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v71

    .line 2043
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2045
    const/4 v4, 0x1

    return v4

    .line 2049
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_7a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2052
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v71

    .line 2053
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2054
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2055
    const/4 v4, 0x1

    return v4

    .line 2059
    .end local v5    # "_arg0":I
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_7b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b8

    .line 2062
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2068
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v50

    .line 2069
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 2070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    const/4 v4, 0x1

    return v4

    .line 2065
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_b8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b8

    .line 2075
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b9

    .line 2078
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2083
    :goto_b9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v71

    .line 2084
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2085
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2086
    const/4 v4, 0x1

    return v4

    .line 2081
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_b9
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b9

    .line 2090
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2093
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v70

    .line 2094
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    if-eqz v70, :cond_ba

    const/4 v4, 0x1

    :goto_ba
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2096
    const/4 v4, 0x1

    return v4

    .line 2095
    :cond_ba
    const/4 v4, 0x0

    goto :goto_ba

    .line 2100
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_7e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bb

    .line 2103
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2109
    :goto_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2111
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 2112
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2114
    const/4 v4, 0x1

    return v4

    .line 2106
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_bb
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bb

    .line 2118
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bc

    .line 2121
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2127
    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2129
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 2130
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2132
    const/4 v4, 0x1

    return v4

    .line 2124
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_bc
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bc

    .line 2136
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_80
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bd

    .line 2139
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2145
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_be

    const/16 v49, 0x1

    .line 2146
    .local v49, "_arg1":Z
    :goto_be
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 2147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2148
    const/4 v4, 0x1

    return v4

    .line 2142
    .end local v49    # "_arg1":Z
    :cond_bd
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bd

    .line 2145
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_be
    const/16 v49, 0x0

    goto :goto_be

    .line 2152
    :sswitch_81
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bf

    .line 2155
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2160
    :goto_bf
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v70

    .line 2161
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    if-eqz v70, :cond_c0

    const/4 v4, 0x1

    :goto_c0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2163
    const/4 v4, 0x1

    return v4

    .line 2158
    .end local v70    # "_result":Z
    :cond_bf
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bf

    .line 2162
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_c0
    const/4 v4, 0x0

    goto :goto_c0

    .line 2167
    .end local v70    # "_result":Z
    :sswitch_82
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c1

    const/16 v36, 0x1

    .line 2171
    .local v36, "_arg0":Z
    :goto_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2173
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2174
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 2175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    const/4 v4, 0x1

    return v4

    .line 2169
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg0":Z
    :cond_c1
    const/16 v36, 0x0

    .restart local v36    # "_arg0":Z
    goto :goto_c1

    .line 2180
    .end local v36    # "_arg0":Z
    :sswitch_83
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c2

    .line 2183
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2189
    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2191
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c3

    const/16 v30, 0x1

    .line 2192
    .restart local v30    # "_arg2":Z
    :goto_c3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2194
    const/4 v4, 0x1

    return v4

    .line 2186
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_c2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c2

    .line 2191
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_c3
    const/16 v30, 0x0

    goto :goto_c3

    .line 2198
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_84
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c4

    .line 2201
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2207
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2208
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 2209
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2210
    if-eqz v70, :cond_c5

    const/4 v4, 0x1

    :goto_c5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    const/4 v4, 0x1

    return v4

    .line 2204
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_c4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c4

    .line 2210
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_c5
    const/4 v4, 0x0

    goto :goto_c5

    .line 2215
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_85
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c6

    .line 2218
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2224
    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c7

    const/16 v49, 0x1

    .line 2225
    .restart local v49    # "_arg1":Z
    :goto_c7
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 2226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    const/4 v4, 0x1

    return v4

    .line 2221
    .end local v49    # "_arg1":Z
    :cond_c6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c6

    .line 2224
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_c7
    const/16 v49, 0x0

    goto :goto_c7

    .line 2231
    :sswitch_86
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c8

    .line 2234
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2239
    :goto_c8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 2240
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2241
    if-eqz v70, :cond_c9

    const/4 v4, 0x1

    :goto_c9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2242
    const/4 v4, 0x1

    return v4

    .line 2237
    .end local v70    # "_result":Z
    :cond_c8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c8

    .line 2241
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_c9
    const/4 v4, 0x0

    goto :goto_c9

    .line 2246
    .end local v70    # "_result":Z
    :sswitch_87
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2249
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v70

    .line 2250
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2251
    if-eqz v70, :cond_ca

    const/4 v4, 0x1

    :goto_ca
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2252
    const/4 v4, 0x1

    return v4

    .line 2251
    :cond_ca
    const/4 v4, 0x0

    goto :goto_ca

    .line 2256
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_88
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cb

    .line 2259
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2265
    :goto_cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cc

    const/16 v49, 0x1

    .line 2266
    .restart local v49    # "_arg1":Z
    :goto_cc
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 2267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2268
    const/4 v4, 0x1

    return v4

    .line 2262
    .end local v49    # "_arg1":Z
    :cond_cb
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cb

    .line 2265
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_cc
    const/16 v49, 0x0

    goto :goto_cc

    .line 2272
    :sswitch_89
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cd

    .line 2275
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2280
    :goto_cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 2281
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2282
    if-eqz v70, :cond_ce

    const/4 v4, 0x1

    :goto_ce
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2283
    const/4 v4, 0x1

    return v4

    .line 2278
    .end local v70    # "_result":Z
    :cond_cd
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cd

    .line 2282
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_ce
    const/4 v4, 0x0

    goto :goto_ce

    .line 2287
    .end local v70    # "_result":Z
    :sswitch_8a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2290
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v70

    .line 2291
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2292
    if-eqz v70, :cond_cf

    const/4 v4, 0x1

    :goto_cf
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    const/4 v4, 0x1

    return v4

    .line 2292
    :cond_cf
    const/4 v4, 0x0

    goto :goto_cf

    .line 2297
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_8b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2301
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 2303
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d0

    const/16 v30, 0x1

    .line 2305
    .local v30, "_arg2":Z
    :goto_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .line 2307
    .local v31, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d1

    .line 2308
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Intent;

    :goto_d1
    move-object/from16 v26, p0

    .line 2313
    invoke-virtual/range {v26 .. v33}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 2314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2315
    const/4 v4, 0x1

    return v4

    .line 2303
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    :cond_d0
    const/16 v30, 0x0

    .restart local v30    # "_arg2":Z
    goto :goto_d0

    .line 2311
    .restart local v31    # "_arg3":J
    :cond_d1
    const/16 v33, 0x0

    .local v33, "_arg4":Landroid/content/Intent;
    goto :goto_d1

    .line 2319
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    .end local v33    # "_arg4":Landroid/content/Intent;
    :sswitch_8c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d2

    .line 2322
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2328
    :goto_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    const/16 v49, 0x1

    .line 2329
    .restart local v49    # "_arg1":Z
    :goto_d3
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 2330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2331
    const/4 v4, 0x1

    return v4

    .line 2325
    .end local v49    # "_arg1":Z
    :cond_d2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d2

    .line 2328
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_d3
    const/16 v49, 0x0

    goto :goto_d3

    .line 2335
    :sswitch_8d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d4

    .line 2338
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2343
    :goto_d4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 2344
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2345
    if-eqz v70, :cond_d5

    const/4 v4, 0x1

    :goto_d5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    const/4 v4, 0x1

    return v4

    .line 2341
    .end local v70    # "_result":Z
    :cond_d4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d4

    .line 2345
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_d5
    const/4 v4, 0x0

    goto :goto_d5

    .line 2350
    .end local v70    # "_result":Z
    :sswitch_8e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2353
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v70

    .line 2354
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2355
    if-eqz v70, :cond_d6

    const/4 v4, 0x1

    :goto_d6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2356
    const/4 v4, 0x1

    return v4

    .line 2355
    :cond_d6
    const/4 v4, 0x0

    goto :goto_d6

    .line 2360
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_8f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d7

    .line 2363
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2369
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d8

    .line 2370
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 2376
    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d9

    .line 2377
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/os/PersistableBundle;

    .line 2383
    :goto_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_da

    const/16 v55, 0x1

    .line 2384
    .local v55, "_arg3":Z
    :goto_da
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    move/from16 v3, v55

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 2385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2386
    const/4 v4, 0x1

    return v4

    .line 2366
    .end local v55    # "_arg3":Z
    :cond_d7
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d7

    .line 2373
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_d8
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d8

    .line 2380
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :cond_d9
    const/16 v52, 0x0

    .local v52, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_d9

    .line 2383
    .end local v52    # "_arg2":Landroid/os/PersistableBundle;
    :cond_da
    const/16 v55, 0x0

    goto :goto_da

    .line 2390
    :sswitch_90
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_db

    .line 2393
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2399
    :goto_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dc

    .line 2400
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 2406
    :goto_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2408
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dd

    const/16 v55, 0x1

    .line 2409
    .restart local v55    # "_arg3":Z
    :goto_dd
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v55

    invoke-virtual {v0, v15, v1, v7, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v68

    .line 2410
    .local v68, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2411
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2412
    const/4 v4, 0x1

    return v4

    .line 2396
    .end local v7    # "_arg2":I
    .end local v55    # "_arg3":Z
    .end local v68    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_db
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_db

    .line 2403
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_dc
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_dc

    .line 2408
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    :cond_dd
    const/16 v55, 0x0

    goto :goto_dd

    .line 2416
    .end local v7    # "_arg2":I
    :sswitch_91
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_de

    .line 2419
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2425
    :goto_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2426
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 2427
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    if-eqz v70, :cond_df

    const/4 v4, 0x1

    :goto_df
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    const/4 v4, 0x1

    return v4

    .line 2422
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_de
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_de

    .line 2428
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_df
    const/4 v4, 0x0

    goto :goto_df

    .line 2433
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_92
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e0

    .line 2436
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2442
    :goto_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2443
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 2444
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2445
    if-eqz v70, :cond_e1

    const/4 v4, 0x1

    :goto_e1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2446
    const/4 v4, 0x1

    return v4

    .line 2439
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_e0
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e0

    .line 2445
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_e1
    const/4 v4, 0x0

    goto :goto_e1

    .line 2450
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_93
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e2

    .line 2453
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2458
    :goto_e2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v69

    .line 2459
    .local v69, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2461
    const/4 v4, 0x1

    return v4

    .line 2456
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e2

    .line 2465
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_94
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e3

    .line 2468
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2474
    :goto_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e4

    const/16 v49, 0x1

    .line 2475
    .restart local v49    # "_arg1":Z
    :goto_e4
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 2476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2477
    const/4 v4, 0x1

    return v4

    .line 2471
    .end local v49    # "_arg1":Z
    :cond_e3
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e3

    .line 2474
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e4
    const/16 v49, 0x0

    goto :goto_e4

    .line 2481
    :sswitch_95
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2482
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v70

    .line 2483
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2484
    if-eqz v70, :cond_e5

    const/4 v4, 0x1

    :goto_e5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    const/4 v4, 0x1

    return v4

    .line 2484
    :cond_e5
    const/4 v4, 0x0

    goto :goto_e5

    .line 2489
    .end local v70    # "_result":Z
    :sswitch_96
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e6

    .line 2492
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2498
    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e7

    const/16 v49, 0x1

    .line 2499
    .restart local v49    # "_arg1":Z
    :goto_e7
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 2500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    const/4 v4, 0x1

    return v4

    .line 2495
    .end local v49    # "_arg1":Z
    :cond_e6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e6

    .line 2498
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e7
    const/16 v49, 0x0

    goto :goto_e7

    .line 2505
    :sswitch_97
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e8

    .line 2508
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2513
    :goto_e8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v70

    .line 2514
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2515
    if-eqz v70, :cond_e9

    const/4 v4, 0x1

    :goto_e9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    const/4 v4, 0x1

    return v4

    .line 2511
    .end local v70    # "_result":Z
    :cond_e8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e8

    .line 2515
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_e9
    const/4 v4, 0x0

    goto :goto_e9

    .line 2520
    .end local v70    # "_result":Z
    :sswitch_98
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ea

    .line 2523
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2529
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2530
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 2531
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2532
    if-eqz v70, :cond_eb

    const/4 v4, 0x1

    :goto_eb
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    const/4 v4, 0x1

    return v4

    .line 2526
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_ea
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ea

    .line 2532
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_eb
    const/4 v4, 0x0

    goto :goto_eb

    .line 2537
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_99
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ec

    .line 2540
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2546
    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ed

    .line 2547
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/graphics/Bitmap;

    .line 2552
    :goto_ed
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 2553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2554
    const/4 v4, 0x1

    return v4

    .line 2543
    :cond_ec
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ec

    .line 2550
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ed
    const/16 v41, 0x0

    .local v41, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_ed

    .line 2558
    .end local v41    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_9a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ee

    .line 2561
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2567
    :goto_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ef

    .line 2568
    sget-object v4, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/admin/SystemUpdatePolicy;

    .line 2573
    :goto_ef
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 2574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    const/4 v4, 0x1

    return v4

    .line 2564
    :cond_ee
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ee

    .line 2571
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ef
    const/16 v37, 0x0

    .local v37, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_ef

    .line 2579
    .end local v37    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_9b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2580
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v57

    .line 2581
    .local v57, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2582
    if-eqz v57, :cond_f0

    .line 2583
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2584
    const/4 v4, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2589
    :goto_f0
    const/4 v4, 0x1

    return v4

    .line 2587
    :cond_f0
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f0

    .line 2593
    .end local v57    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_9c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f1

    .line 2596
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2602
    :goto_f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f2

    const/16 v49, 0x1

    .line 2603
    .restart local v49    # "_arg1":Z
    :goto_f2
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v70

    .line 2604
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2605
    if-eqz v70, :cond_f3

    const/4 v4, 0x1

    :goto_f3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2606
    const/4 v4, 0x1

    return v4

    .line 2599
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_f1
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f1

    .line 2602
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_f2
    const/16 v49, 0x0

    goto :goto_f2

    .line 2605
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_f3
    const/4 v4, 0x0

    goto :goto_f3

    .line 2610
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_9d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f4

    .line 2613
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2619
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f5

    const/16 v49, 0x1

    .line 2620
    .restart local v49    # "_arg1":Z
    :goto_f5
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v70

    .line 2621
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2622
    if-eqz v70, :cond_f6

    const/4 v4, 0x1

    :goto_f6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    const/4 v4, 0x1

    return v4

    .line 2616
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_f4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f4

    .line 2619
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_f5
    const/16 v49, 0x0

    goto :goto_f5

    .line 2622
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_f6
    const/4 v4, 0x0

    goto :goto_f6

    .line 2627
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_9e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2628
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v70

    .line 2629
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2630
    if-eqz v70, :cond_f7

    const/4 v4, 0x1

    :goto_f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    const/4 v4, 0x1

    return v4

    .line 2630
    :cond_f7
    const/4 v4, 0x0

    goto :goto_f7

    .line 2635
    .end local v70    # "_result":Z
    :sswitch_9f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 2638
    .local v34, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(J)V

    .line 2639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    const/4 v4, 0x1

    return v4

    .line 2644
    .end local v34    # "_arg0":J
    :sswitch_a0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f8

    .line 2647
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2653
    :goto_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2654
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    .line 2655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    const/4 v4, 0x1

    return v4

    .line 2650
    .end local v6    # "_arg1":I
    :cond_f8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f8

    .line 2660
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f9

    .line 2663
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2668
    :goto_f9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v56

    .line 2669
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2670
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2671
    const/4 v4, 0x1

    return v4

    .line 2666
    .end local v56    # "_result":I
    :cond_f9
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f9

    .line 2675
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fa

    .line 2678
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2684
    :goto_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2686
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 2688
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2689
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v70

    .line 2690
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2691
    if-eqz v70, :cond_fb

    const/4 v4, 0x1

    :goto_fb
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2692
    const/4 v4, 0x1

    return v4

    .line 2681
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_fa
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fa

    .line 2691
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg3":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_fb
    const/4 v4, 0x0

    goto :goto_fb

    .line 2696
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fc

    .line 2699
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2705
    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2707
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 2708
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 2709
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2711
    const/4 v4, 0x1

    return v4

    .line 2702
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v56    # "_result":I
    :cond_fc
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fc

    .line 2715
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2718
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;)Z

    move-result v70

    .line 2719
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2720
    if-eqz v70, :cond_fd

    const/4 v4, 0x1

    :goto_fd
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    const/4 v4, 0x1

    return v4

    .line 2720
    :cond_fd
    const/4 v4, 0x0

    goto :goto_fd

    .line 2725
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fe

    .line 2728
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2734
    :goto_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v48

    .line 2735
    .local v48, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 2736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2737
    const/4 v4, 0x1

    return v4

    .line 2731
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_fe
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fe

    .line 2741
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ff

    .line 2744
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2749
    :goto_ff
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v69

    .line 2750
    .restart local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2751
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2752
    const/4 v4, 0x1

    return v4

    .line 2747
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ff
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ff

    .line 2756
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_100

    .line 2759
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2764
    :goto_100
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v70

    .line 2765
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2766
    if-eqz v70, :cond_101

    const/4 v4, 0x1

    :goto_101
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    const/4 v4, 0x1

    return v4

    .line 2762
    .end local v70    # "_result":Z
    :cond_100
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_100

    .line 2766
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_101
    const/4 v4, 0x0

    goto :goto_101

    .line 2771
    .end local v70    # "_result":Z
    :sswitch_a8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_102

    .line 2774
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2779
    :goto_102
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    move-result v70

    .line 2780
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2781
    if-eqz v70, :cond_103

    const/4 v4, 0x1

    :goto_103
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2782
    const/4 v4, 0x1

    return v4

    .line 2777
    .end local v70    # "_result":Z
    :cond_102
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_102

    .line 2781
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_103
    const/4 v4, 0x0

    goto :goto_103

    .line 2786
    .end local v70    # "_result":Z
    :sswitch_a9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_104

    .line 2789
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2794
    :goto_104
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 2795
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2797
    const/4 v4, 0x1

    return v4

    .line 2792
    .end local v65    # "_result":Ljava/lang/String;
    :cond_104
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_104

    .line 2801
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_aa
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_105

    .line 2804
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2809
    :goto_105
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 2810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    const/4 v4, 0x1

    return v4

    .line 2807
    :cond_105
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_105

    .line 2815
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ab
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_106

    .line 2818
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2824
    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_107

    .line 2825
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 2830
    :goto_107
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 2831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2832
    const/4 v4, 0x1

    return v4

    .line 2821
    :cond_106
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_106

    .line 2828
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_107
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_107

    .line 2836
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_ac
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_108

    .line 2839
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2844
    :goto_108
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v64

    .line 2845
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2846
    if-eqz v64, :cond_109

    .line 2847
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2848
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2853
    :goto_109
    const/4 v4, 0x1

    return v4

    .line 2842
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_108
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_108

    .line 2851
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_109
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_109

    .line 2857
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_ad
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10a

    .line 2860
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2866
    :goto_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10b

    .line 2867
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 2872
    :goto_10b
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 2873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2874
    const/4 v4, 0x1

    return v4

    .line 2863
    :cond_10a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10a

    .line 2870
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_10b
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_10b

    .line 2878
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_ae
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10c

    .line 2881
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2886
    :goto_10c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v64

    .line 2887
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2888
    if-eqz v64, :cond_10d

    .line 2889
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2890
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2895
    :goto_10d
    const/4 v4, 0x1

    return v4

    .line 2884
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10c

    .line 2893
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10d

    .line 2899
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_af
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10e

    .line 2902
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2908
    :goto_10e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2909
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v64

    .line 2910
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2911
    if-eqz v64, :cond_10f

    .line 2912
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2913
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2918
    :goto_10f
    const/4 v4, 0x1

    return v4

    .line 2905
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10e

    .line 2916
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10f

    .line 2922
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_110

    .line 2925
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2931
    :goto_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2932
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v64

    .line 2933
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    if-eqz v64, :cond_111

    .line 2935
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2936
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2941
    :goto_111
    const/4 v4, 0x1

    return v4

    .line 2928
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_110
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_110

    .line 2939
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_111
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_111

    .line 2945
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2948
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSeparateProfileChallengeAllowed(I)Z

    move-result v70

    .line 2949
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2950
    if-eqz v70, :cond_112

    const/4 v4, 0x1

    :goto_112
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2951
    const/4 v4, 0x1

    return v4

    .line 2950
    :cond_112
    const/4 v4, 0x0

    goto :goto_112

    .line 2955
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_b2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_113

    .line 2958
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2964
    :goto_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2965
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 2966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2967
    const/4 v4, 0x1

    return v4

    .line 2961
    .end local v6    # "_arg1":I
    :cond_113
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_113

    .line 2971
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2975
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2976
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 2977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2978
    const/4 v4, 0x1

    return v4

    .line 2982
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_b4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_114

    .line 2985
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2990
    :goto_114
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v56

    .line 2991
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2992
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2993
    const/4 v4, 0x1

    return v4

    .line 2988
    .end local v56    # "_result":I
    :cond_114
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_114

    .line 2997
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3000
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v56

    .line 3001
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3002
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3003
    const/4 v4, 0x1

    return v4

    .line 3007
    .end local v5    # "_arg0":I
    .end local v56    # "_result":I
    :sswitch_b6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_115

    .line 3010
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3016
    :goto_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_116

    .line 3017
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 3022
    :goto_116
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3024
    const/4 v4, 0x1

    return v4

    .line 3013
    :cond_115
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_115

    .line 3020
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_116
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_116

    .line 3028
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_b7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_117

    .line 3031
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3036
    :goto_117
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3037
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    if-eqz v64, :cond_118

    .line 3039
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3040
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3045
    :goto_118
    const/4 v4, 0x1

    return v4

    .line 3034
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_117
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_117

    .line 3043
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_118
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_118

    .line 3049
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3052
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3053
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3054
    if-eqz v64, :cond_119

    .line 3055
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3056
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3061
    :goto_119
    const/4 v4, 0x1

    return v4

    .line 3059
    :cond_119
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_119

    .line 3065
    .end local v5    # "_arg0":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    move-result v56

    .line 3067
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3068
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3069
    const/4 v4, 0x1

    return v4

    .line 3073
    .end local v56    # "_result":I
    :sswitch_ba
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3077
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3078
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 3079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    const/4 v4, 0x1

    return v4

    .line 3084
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_bb
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11a

    .line 3087
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3093
    :goto_11a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v48

    .line 3094
    .restart local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 3095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3096
    const/4 v4, 0x1

    return v4

    .line 3090
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11a

    .line 3100
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_bc
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3101
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser()Z

    move-result v70

    .line 3102
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3103
    if-eqz v70, :cond_11b

    const/4 v4, 0x1

    :goto_11b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3104
    const/4 v4, 0x1

    return v4

    .line 3103
    :cond_11b
    const/4 v4, 0x0

    goto :goto_11b

    .line 3108
    .end local v70    # "_result":Z
    :sswitch_bd
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11c

    .line 3111
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3117
    :goto_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11d

    const/16 v49, 0x1

    .line 3118
    .restart local v49    # "_arg1":Z
    :goto_11d
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 3119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3120
    const/4 v4, 0x1

    return v4

    .line 3114
    .end local v49    # "_arg1":Z
    :cond_11c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11c

    .line 3117
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_11d
    const/16 v49, 0x0

    goto :goto_11d

    .line 3124
    :sswitch_be
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11e

    .line 3127
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3132
    :goto_11e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3133
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3134
    if-eqz v70, :cond_11f

    const/4 v4, 0x1

    :goto_11f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3135
    const/4 v4, 0x1

    return v4

    .line 3130
    .end local v70    # "_result":Z
    :cond_11e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11e

    .line 3134
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_11f
    const/4 v4, 0x0

    goto :goto_11f

    .line 3139
    .end local v70    # "_result":Z
    :sswitch_bf
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_120

    .line 3142
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3147
    :goto_120
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v61

    .line 3148
    .local v61, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3149
    if-eqz v61, :cond_121

    .line 3150
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3151
    const/4 v4, 0x1

    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3156
    :goto_121
    const/4 v4, 0x1

    return v4

    .line 3145
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_120
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_120

    .line 3154
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_121
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_121

    .line 3160
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_c0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_122

    .line 3163
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3168
    :goto_122
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v61

    .line 3169
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3170
    if-eqz v61, :cond_123

    .line 3171
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3172
    const/4 v4, 0x1

    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3177
    :goto_123
    const/4 v4, 0x1

    return v4

    .line 3166
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_122
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_122

    .line 3175
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_123
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_123

    .line 3181
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_c1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 3184
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v70

    .line 3185
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3186
    if-eqz v70, :cond_124

    const/4 v4, 0x1

    :goto_124
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3187
    const/4 v4, 0x1

    return v4

    .line 3186
    :cond_124
    const/4 v4, 0x0

    goto :goto_124

    .line 3191
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_c2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 3194
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 3195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3196
    const/4 v4, 0x1

    return v4

    .line 3200
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_c3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3201
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result v70

    .line 3202
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3203
    if-eqz v70, :cond_125

    const/4 v4, 0x1

    :goto_125
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3204
    const/4 v4, 0x1

    return v4

    .line 3203
    :cond_125
    const/4 v4, 0x0

    goto :goto_125

    .line 3208
    .end local v70    # "_result":Z
    :sswitch_c4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3209
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result v70

    .line 3210
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3211
    if-eqz v70, :cond_126

    const/4 v4, 0x1

    :goto_126
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3212
    const/4 v4, 0x1

    return v4

    .line 3211
    :cond_126
    const/4 v4, 0x0

    goto :goto_126

    .line 3216
    .end local v70    # "_result":Z
    :sswitch_c5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3217
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    .line 3218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3219
    const/4 v4, 0x1

    return v4

    .line 3223
    :sswitch_c6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_127

    .line 3226
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3232
    :goto_127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_128

    const/16 v49, 0x1

    .line 3233
    .restart local v49    # "_arg1":Z
    :goto_128
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 3234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3235
    const/4 v4, 0x1

    return v4

    .line 3229
    .end local v49    # "_arg1":Z
    :cond_127
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_127

    .line 3232
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_128
    const/16 v49, 0x0

    goto :goto_128

    .line 3239
    :sswitch_c7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_129

    .line 3242
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3247
    :goto_129
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3248
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3249
    if-eqz v70, :cond_12a

    const/4 v4, 0x1

    :goto_12a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3250
    const/4 v4, 0x1

    return v4

    .line 3245
    .end local v70    # "_result":Z
    :cond_129
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_129

    .line 3249
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_12a
    const/4 v4, 0x0

    goto :goto_12a

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
