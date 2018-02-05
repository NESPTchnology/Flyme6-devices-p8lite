.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;,
        Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;,
        Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$Lifecycle;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$StartAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_PREVIOUS_NAME:Ljava/lang/String; = "previous_name"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final CE_DATABASE_NAME:Ljava/lang/String; = "accounts_ce.db"

.field private static final CE_DATABASE_VERSION:I = 0xa

.field private static final CE_DB_PREFIX:Ljava/lang/String; = "ceDb."

.field private static final CE_TABLE_ACCOUNTS:Ljava/lang/String; = "ceDb.accounts"

.field private static final CE_TABLE_AUTHTOKENS:Ljava/lang/String; = "ceDb.authtokens"

.field private static final CE_TABLE_EXTRAS:Ljava/lang/String; = "ceDb.extras"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final COUNT_OF_MATCHING_GRANTS_ANY_TOKEN:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DE_DATABASE_NAME:Ljava/lang/String; = "accounts_de.db"

.field private static final DE_DATABASE_VERSION:I = 0x1

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MAX_DEBUG_DB_SIZE:I = 0x40

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_KEY_DELIMITER:Ljava/lang/String; = ":"

.field private static final META_KEY_FOR_AUTHENTICATOR_UID_FOR_TYPE_PREFIX:Ljava/lang/String; = "auth_uid_for_type:"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final PRE_N_DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final PRE_N_DATABASE_VERSION:I = 0x9

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_META_BY_AUTHENTICATOR_TYPE:Ljava/lang/String; = "key LIKE ?"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SHARED_ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field final mContext:Landroid/content/Context;

.field private final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field final mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_accounts_AccountManagerService_lambda$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .prologue
    .line 5668
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    .line 0
    return-void
.end method

.method static synthetic -com_android_server_accounts_AccountManagerService_lambda$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .prologue
    .line 5710
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/accounts/AccountManagerService;IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method static synthetic -wrap14(Ljava/io/File;)V
    .locals 0
    .param p0, "dbFile"    # Ljava/io/File;

    .prologue
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    .prologue
    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/accounts/AccountManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string/jumbo v1, "count(type)"

    aput-object v1, v0, v3

    .line 230
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 236
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "authtoken"

    aput-object v1, v0, v3

    .line 257
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 262
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 326
    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accounts/IAccountAuthenticatorCache;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "authenticatorCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 342
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 269
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 321
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 323
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 344
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 345
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 346
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 348
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 350
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 351
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p0, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 353
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 355
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .local v3, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 394
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 386
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 396
    const-class v0, Landroid/accounts/AccountManagerInternal;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 399
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 411
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 399
    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/android/server/accounts/AccountManagerService$3;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 414
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 415
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 414
    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v4, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 439
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/server/accounts/AccountManagerService$-void__init__android_content_Context_context_android_content_pm_PackageManager_packageManager_com_android_server_accounts_IAccountAuthenticatorCache_authenticatorCache_LambdaImpl0;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 343
    return-void
.end method

.method private accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 2202
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2203
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 2204
    .local v0, "acc":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2205
    const/4 v1, 0x1

    return v1

    .line 2203
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2209
    .end local v0    # "acc":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 21
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "callingUid"    # I

    .prologue
    .line 1292
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1293
    if-nez p2, :cond_0

    .line 1294
    const/4 v2, 0x0

    return v2

    .line 1296
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1297
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Account "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cannot be added - user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1298
    const-string/jumbo v9, " is locked. callingUid="

    .line 1297
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v2, 0x0

    return v2

    .line 1301
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1302
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1303
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1306
    :try_start_1
    const-string/jumbo v2, "select count(*) from ceDb.accounts WHERE name=? AND type=?"

    .line 1308
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 1305
    invoke-static {v3, v2, v8}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v18

    .line 1309
    .local v18, "numMatches":J
    const-wide/16 v8, 0x0

    cmp-long v2, v18, v8

    if-lez v2, :cond_2

    .line 1310
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1311
    const-string/jumbo v9, ", skipping since the account already exists"

    .line 1310
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1312
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1314
    :cond_2
    :try_start_3
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1315
    .local v17, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string/jumbo v2, "password"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v2, "ceDb.accounts"

    const-string/jumbo v8, "name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1319
    .local v4, "accountId":J
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-gez v2, :cond_3

    .line 1320
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1321
    const-string/jumbo v9, ", skipping the DB insert failed"

    .line 1320
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1353
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1322
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1325
    :cond_3
    :try_start_5
    new-instance v17, Landroid/content/ContentValues;

    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1326
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1327
    const-string/jumbo v2, "name"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    .line 1330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1329
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1331
    const-string/jumbo v2, "accounts"

    const-string/jumbo v8, "name"

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gez v2, :cond_4

    .line 1332
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1333
    const-string/jumbo v9, ", skipping the DB insert failed"

    .line 1332
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1353
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1334
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1336
    :cond_4
    if-eqz p4, :cond_6

    .line 1337
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "key$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1338
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "value":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 1339
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gez v2, :cond_5

    .line 1340
    const-string/jumbo v2, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertAccountIntoDatabase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1341
    const-string/jumbo v9, ", skipping since insertExtra failed for key "

    .line 1340
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1353
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1342
    const/4 v2, 0x0

    monitor-exit v20

    return v2

    .line 1346
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v16    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1348
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "accounts"

    move-object/from16 v8, p0

    move-object v9, v3

    move-wide v12, v4

    move-object/from16 v14, p1

    move/from16 v15, p5

    invoke-direct/range {v8 .. v15}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1351
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1353
    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit v20

    .line 1356
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1357
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    .line 1361
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1362
    const/4 v2, 0x1

    return v2

    .line 1352
    .end local v4    # "accountId":J
    .end local v17    # "values":Landroid/content/ContentValues;
    .end local v18    # "numMatches":J
    :catchall_0
    move-exception v2

    .line 1353
    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1352
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1301
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    monitor-exit v20

    throw v2
.end method

.method private addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "parentUserId"    # I

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 1379
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1380
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne p2, v3, :cond_0

    .line 1381
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 1382
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1383
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 1384
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x4

    .line 1383
    invoke-virtual {v4, v6, p2, v5, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1377
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3871
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 3872
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 3873
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3874
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3875
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    const-string/jumbo v0, "type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name=? AND type=?"

    .line 3878
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v3, v9

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v3, v10

    .line 3877
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3879
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v0, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 3880
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 3881
    const-string/jumbo v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3882
    const-string/jumbo v3, ", skipping the DB insert failed"

    .line 3881
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3883
    return v9

    .line 3885
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3886
    return v10
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 10
    .param p1, "callerPkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2541
    :try_start_0
    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2542
    .local v0, "digester":Ljava/security/MessageDigest;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2543
    const/16 v7, 0x40

    .line 2542
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2544
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v7, v6

    .line 2545
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2544
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2550
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 2551
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not find packageinfo for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    const/4 v0, 0x0

    .line 2554
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    :goto_2
    return-object v5

    .line 2547
    :catch_1
    move-exception v4

    .line 2548
    .local v4, "x":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v7, "SHA-256 should be available"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2549
    const/4 v0, 0x0

    .local v0, "digester":Ljava/security/MessageDigest;
    goto :goto_1

    .line 2554
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v4    # "x":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    goto :goto_2
.end method

.method private canHaveProfile(I)Z
    .locals 2
    .param p1, "parentUserId"    # I

    .prologue
    .line 1610
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1611
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private canUserModifyAccounts(II)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/4 v2, 0x1

    .line 5578
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5579
    return v2

    .line 5581
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5582
    const-string/jumbo v1, "no_modify_accounts"

    .line 5581
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5583
    const/4 v0, 0x0

    return v0

    .line 5585
    :cond_1
    return v2
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 5590
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5591
    return v7

    .line 5593
    :cond_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5594
    const-string/jumbo v5, "device_policy"

    .line 5593
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5595
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v2

    .line 5596
    .local v2, "typesArray":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 5597
    return v7

    .line 5599
    :cond_1
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v2, v3

    .line 5600
    .local v1, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5601
    return v4

    .line 5599
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5604
    .end local v1    # "forbiddenType":Ljava/lang/String;
    :cond_3
    return v7
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    .prologue
    .line 474
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 475
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 476
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "checkAccess"    # Z

    .prologue
    .line 501
    if-eqz p4, :cond_0

    .line 502
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 501
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    const-string/jumbo v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 503
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 505
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 503
    invoke-virtual {p0, v0, p3, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 500
    :cond_1
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .prologue
    .line 490
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 492
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 493
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .prologue
    .line 482
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 483
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 484
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method private static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 5490
    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    .line 5491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5490
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5492
    const-string/jumbo v0, "android.permission.CREATE_USERS"

    .line 5493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5492
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5494
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5489
    :cond_0
    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 5483
    const-string/jumbo v0, "android.permission.MANAGE_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 5482
    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5485
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5481
    :cond_0
    return-void
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 5566
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5568
    const-string/jumbo v1, "caller uid %s cannot access %s accounts"

    .line 5567
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 5569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5570
    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 5567
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5571
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5565
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3502
    .local v2, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 3503
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v4, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 3512
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3504
    return v6

    .line 3506
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 3507
    .local v1, "opCode":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v7, v1, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 3512
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3507
    return v5

    :cond_2
    move v5, v6

    goto :goto_0

    .line 3509
    .end local v1    # "opCode":I
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 3512
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3514
    return v6

    .line 3511
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 3512
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3511
    throw v5
.end method

.method private compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 4657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4658
    const-string/jumbo v2, " VALUES (?,?,?,?,?,?)"

    .line 4657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4659
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    .line 4656
    return-void
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    .prologue
    .line 1240
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1241
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 1243
    .local v16, "id":J
    :try_start_0
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$6;

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1244
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1243
    const/4 v8, 0x0

    .line 1244
    const/4 v9, 0x0

    .line 1245
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move-object/from16 v12, p3

    move/from16 v13, p5

    move-object/from16 v14, p2

    .line 1243
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1239
    return-void

    .line 1285
    :catchall_0
    move-exception v2

    .line 1286
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1285
    throw v2
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 2560
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    .line 2559
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2562
    .local v15, "uid":I
    const-string/jumbo v2, "authTokenType"

    .line 2561
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2564
    .local v8, "authTokenType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2565
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2564
    const v4, 0x104048e

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 2566
    .local v14, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 2567
    .local v10, "index":I
    move-object v13, v14

    .line 2568
    .local v13, "title":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 2569
    .local v12, "subtitle":Ljava/lang/String;
    if-lez v10, :cond_0

    .line 2570
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2571
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2573
    :cond_0
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p4

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 2574
    .local v7, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 2575
    .local v9, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2576
    const v3, 0x108008a

    .line 2575
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2577
    const-wide/16 v4, 0x0

    .line 2575
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 2579
    const v3, 0x106005b

    .line 2578
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 2575
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v16

    .line 2582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 2583
    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object/from16 v4, p2

    .line 2582
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2575
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 2585
    .local v11, "n":Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v15}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2586
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 2585
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v11, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V

    .line 2558
    return-void
.end method

.method private static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .locals 3
    .param p0, "dbFile"    # Ljava/io/File;

    .prologue
    .line 857
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Database at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not deleted successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 19
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .prologue
    .line 5254
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 5256
    .local v14, "identityToken":J
    :try_start_0
    const-string/jumbo v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5257
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doNotification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5261
    const-class v6, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5262
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 5261
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 5260
    if-eqz v6, :cond_1

    .line 5263
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5285
    :goto_0
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5253
    return-void

    .line 5265
    :cond_1
    :try_start_1
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, p6

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v12

    .line 5266
    .local v12, "contextForUser":Landroid/content/Context;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v16

    .line 5267
    .local v16, "notificationId":Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5270
    const v6, 0x104011f

    invoke-virtual {v12, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 5271
    .local v17, "notificationTitleFormat":Ljava/lang/String;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 5272
    const-wide/16 v8, 0x0

    .line 5271
    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 5273
    const v7, 0x108008a

    .line 5271
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 5275
    const v7, 0x106005b

    .line 5274
    invoke-virtual {v12, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 5271
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 5276
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 5271
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 5279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5280
    new-instance v11, Landroid/os/UserHandle;

    move/from16 v0, p6

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 5279
    const/4 v7, 0x0

    const/high16 v9, 0x10000000

    .line 5280
    const/4 v10, 0x0

    move-object/from16 v8, p4

    .line 5278
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 5271
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 5282
    .local v13, "n":Landroid/app/Notification;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v6, v13, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 5284
    .end local v12    # "contextForUser":Landroid/content/Context;
    .end local v13    # "n":Landroid/app/Notification;
    .end local v16    # "notificationId":Ljava/lang/Integer;
    .end local v17    # "notificationTitleFormat":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 5285
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5284
    throw v6
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 20
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fout"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "isCheckinRequest"    # Z

    .prologue
    .line 5195
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 5196
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5198
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_3

    .line 5200
    const-string/jumbo v5, "accounts"

    sget-object v6, Lcom/android/server/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 5201
    const-string/jumbo v9, "type"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 5200
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 5203
    .local v14, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5207
    :catchall_0
    move-exception v5

    .line 5208
    if-eqz v14, :cond_0

    .line 5209
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5207
    :cond_0
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5195
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    monitor-exit v19

    throw v5

    .line 5208
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v14, :cond_2

    .line 5209
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    monitor-exit v19

    .line 5194
    return-void

    .line 5214
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 5213
    const/4 v6, 0x0

    .line 5214
    const/4 v7, 0x0

    .line 5213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 5215
    .local v13, "accounts":[Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Accounts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5216
    const/4 v5, 0x0

    array-length v6, v13

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v12, v13, v5

    .line 5217
    .local v12, "account":Landroid/accounts/Account;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5216
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5221
    .end local v12    # "account":Landroid/accounts/Account;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5222
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v5

    .line 5223
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    move-result-object v11

    .line 5222
    const/4 v6, 0x0

    .line 5223
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5222
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 5224
    .restart local v14    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5225
    const-string/jumbo v5, "Accounts History"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5227
    :goto_3
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5230
    const/4 v6, 0x2

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5230
    const-string/jumbo v6, ","

    .line 5229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5230
    const/4 v6, 0x3

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5230
    const-string/jumbo v6, ","

    .line 5229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5231
    const/4 v6, 0x4

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5231
    const-string/jumbo v6, ","

    .line 5229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5231
    const/4 v6, 0x5

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 5233
    :catchall_2
    move-exception v5

    .line 5234
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5233
    throw v5

    .line 5234
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5237
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5238
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5239
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 5240
    .local v16, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Active Sessions: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "session$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 5242
    .local v15, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    .line 5238
    .end local v15    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    .end local v16    # "now":J
    .end local v18    # "session$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v5

    :try_start_8
    monitor-exit v6

    throw v5

    .restart local v16    # "now":J
    .restart local v18    # "session$iterator":Ljava/util/Iterator;
    :cond_6
    monitor-exit v6

    .line 5246
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 20
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "unfiltered"    # [Landroid/accounts/Account;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 5762
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v15

    if-eqz v15, :cond_0

    if-nez p1, :cond_1

    .line 5764
    :cond_0
    return-object p2

    .line 5762
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    if-ltz v15, :cond_0

    .line 5763
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v15

    move/from16 v0, p3

    if-eq v0, v15, :cond_0

    .line 5766
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    .line 5767
    .local v13, "user":Landroid/content/pm/UserInfo;
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 5768
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 5772
    .local v8, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 5773
    const v16, 0x1040065

    .line 5772
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5774
    .local v14, "whiteList":Ljava/lang/String;
    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v7, v8, v15

    .line 5775
    .local v7, "packageName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5776
    return-object p2

    .line 5774
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5779
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5780
    .local v3, "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v12

    .line 5781
    .local v12, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v12, :cond_4

    array-length v15, v12

    if-nez v15, :cond_5

    :cond_4
    return-object p2

    .line 5782
    :cond_5
    const-string/jumbo v10, ""

    .line 5786
    .local v10, "requiredAccountType":Ljava/lang/String;
    if-eqz p4, :cond_8

    .line 5787
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v16, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 5788
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_6

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v15, :cond_6

    .line 5789
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5803
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v16, v15

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    aget-object v2, p2, v16

    .line 5804
    .local v2, "account":Landroid/accounts/Account;
    iget-object v15, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 5805
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5803
    :cond_7
    :goto_3
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_2

    .line 5793
    .end local v2    # "account":Landroid/accounts/Account;
    :cond_8
    const/4 v15, 0x0

    :try_start_1
    array-length v0, v8

    move/from16 v16, v0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    aget-object v7, v8, v15

    .line 5794
    .restart local v7    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 5795
    .restart local v9    # "pi":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_9

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 5796
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5793
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 5807
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "account":Landroid/accounts/Account;
    :cond_a
    const/4 v5, 0x0

    .line 5808
    .local v5, "found":Z
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v18, v0

    :goto_5
    move/from16 v0, v18

    if-ge v15, v0, :cond_b

    aget-object v11, v12, v15

    .line 5809
    .local v11, "shared":Landroid/accounts/Account;
    invoke-virtual {v11, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 5810
    const/4 v5, 0x1

    .line 5814
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_b
    if-nez v5, :cond_7

    .line 5815
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5808
    .restart local v11    # "shared":Landroid/accounts/Account;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 5819
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v5    # "found":Z
    .end local v11    # "shared":Landroid/accounts/Account;
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v4, v15, [Landroid/accounts/Account;

    .line 5820
    .local v4, "filtered":[Landroid/accounts/Account;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5821
    return-object v4

    .line 5823
    .end local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "filtered":[Landroid/accounts/Account;
    .end local v8    # "packages":[Ljava/lang/String;
    .end local v10    # "requiredAccountType":Ljava/lang/String;
    .end local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .end local v14    # "whiteList":Ljava/lang/String;
    :cond_e
    return-object p2

    .line 5801
    .restart local v3    # "allowed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v8    # "packages":[Ljava/lang/String;
    .restart local v10    # "requiredAccountType":Ljava/lang/String;
    .restart local v12    # "sharedAccounts":[Landroid/accounts/Account;
    .restart local v14    # "whiteList":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4051
    const-string/jumbo v1, "shared_accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 4052
    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 4051
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4054
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4055
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4059
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4055
    return-wide v0

    .line 4057
    :cond_0
    const-wide/16 v0, -0x1

    .line 4059
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4057
    return-wide v0

    .line 4058
    :catchall_0
    move-exception v0

    .line 4059
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4058
    throw v0
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4064
    const-string/jumbo v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 4065
    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 4064
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4067
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4068
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4072
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4068
    return-wide v0

    .line 4070
    :cond_0
    const-wide/16 v0, -0x1

    .line 4072
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4070
    return-wide v0

    .line 4071
    :catchall_0
    move-exception v0

    .line 4072
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4071
    throw v0
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .locals 12
    .param p1, "userIds"    # [I

    .prologue
    .line 3760
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3761
    .local v3, "runningAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    const/4 v6, 0x0

    array-length v7, p1

    :goto_0
    if-ge v6, v7, :cond_2

    aget v5, p1, v6

    .line 3762
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 3763
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v4, :cond_0

    .line 3761
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3764
    :cond_0
    iget-object v8, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3766
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3765
    const/4 v10, 0x0

    .line 3766
    const/4 v11, 0x0

    .line 3765
    invoke-virtual {p0, v4, v10, v9, v11}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 3767
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v9, v1

    if-ge v0, v9, :cond_1

    .line 3768
    new-instance v9, Landroid/accounts/AccountAndUser;

    aget-object v10, v1, v0

    invoke-direct {v9, v10, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3767
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    monitor-exit v8

    goto :goto_1

    .line 3764
    .end local v0    # "a":I
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 3773
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "userId":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/accounts/AccountAndUser;

    .line 3774
    .local v2, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/AccountAndUser;

    return-object v6
.end method

.method private getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 3790
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3792
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-eq p2, v5, :cond_0

    .line 3793
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 3794
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 3795
    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3794
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 3797
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3798
    const-string/jumbo v7, " trying to get account for "

    .line 3797
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3801
    :cond_0
    const-string/jumbo v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3802
    const-string/jumbo v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAccounts: accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3803
    const-string/jumbo v7, ", caller\'s uid "

    .line 3802
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3803
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3802
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3804
    const-string/jumbo v7, ", pid "

    .line 3802
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3804
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3802
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    :cond_1
    const/4 v5, -0x1

    if-eq p4, v5, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v1, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3809
    move v1, p4

    .line 3810
    move-object p5, p3

    .line 3813
    :cond_2
    invoke-direct {p0, v1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3815
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3816
    if-eqz p1, :cond_3

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3818
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3820
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3821
    .restart local v4    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3825
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3827
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3828
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, v1, p3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 3834
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3828
    return-object v5

    .line 3817
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_5
    new-array v5, v8, [Landroid/accounts/Account;

    return-object v5

    .line 3833
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v5

    .line 3834
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3833
    throw v5
.end method

.method private getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    .locals 8
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .prologue
    .line 3844
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3845
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3846
    .local v3, "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "visibleType$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3847
    .local v4, "visibleType":Ljava/lang/String;
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3849
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 3850
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3844
    .end local v0    # "accountsForType":[Landroid/accounts/Account;
    .end local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v4    # "visibleType":Ljava/lang/String;
    .end local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3853
    .restart local v3    # "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .restart local v5    # "visibleType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/accounts/Account;

    .line 3854
    .local v2, "result":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 3855
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    aput-object v6, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3854
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v7

    .line 3857
    return-object v2
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 728
    .local v0, "authCache":Lcom/android/server/accounts/AccountAuthenticatorCache;
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .locals 5
    .param p0, "authCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/IAccountAuthenticatorCache;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v0, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 737
    .local v1, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 739
    .end local v1    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v0
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1065
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    .line 1067
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v5, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    .line 1069
    .local v2, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/accounts/AuthenticatorDescription;

    .line 1070
    .local v4, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    .line 1071
    .local v3, "i":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "authenticator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1073
    .local v0, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    aput-object v5, v4, v3

    .line 1074
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1076
    .end local v0    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache<Landroid/accounts/AuthenticatorDescription;>.ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_0
    return-object v4
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5968
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5969
    :catch_0
    move-exception v0

    .line 5971
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 2614
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2615
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 2617
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    .line 2618
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2617
    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2619
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2620
    .local v1, "id":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 2621
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2622
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 2625
    return-object v1

    .line 2615
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4675
    const-string/jumbo v2, "SELECT "

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4675
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    move-result-object v2

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4676
    const-string/jumbo v2, " FROM "

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4676
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v2

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4677
    const-string/jumbo v2, " ORDER BY "

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4678
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get17()Ljava/lang/String;

    move-result-object v2

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4678
    const-string/jumbo v2, ","

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4678
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get14()Ljava/lang/String;

    move-result-object v2

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4679
    const-string/jumbo v2, " LIMIT 1"

    .line 4674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4681
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT COUNT(*) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4664
    .local v0, "queryCountDebugDbRows":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4077
    const-string/jumbo v1, "ceDb.extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 4078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4079
    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 4077
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4081
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4082
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 4086
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4082
    return-wide v0

    .line 4084
    :cond_0
    const-wide/16 v0, -0x1

    .line 4086
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4084
    return-wide v0

    .line 4085
    :catchall_0
    move-exception v0

    .line 4086
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4085
    throw v0
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 2630
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 2631
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2632
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2633
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2634
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get5(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2637
    return-object v0

    .line 2630
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "isOtherwisePermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5453
    .local v2, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5456
    .local v0, "identityToken":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v7, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 5458
    .local v5, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5460
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5462
    .local v3, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v8, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v6

    .line 5463
    .local v6, "sigChk":I
    if-nez p3, :cond_1

    if-nez v6, :cond_0

    .line 5464
    :cond_1
    iget-object v7, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5457
    .end local v3    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v6    # "sigChk":I
    :catchall_0
    move-exception v7

    .line 5458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5457
    throw v7

    .line 5467
    .restart local v4    # "serviceInfo$iterator":Ljava/util/Iterator;
    .restart local v5    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    :cond_2
    return-object v2
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5447
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5441
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5442
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5441
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    .line 5443
    .local v0, "isPermitted":Z
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 712
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 713
    const/16 v5, 0x2000

    .line 712
    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 714
    .local v3, "pkgsWithData":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 715
    .local v0, "knownUids":Landroid/util/SparseBooleanArray;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 716
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 717
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 718
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 721
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v0
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 1

    .prologue
    .line 743
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private handleIncomingUser(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 5347
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v3, p1

    .line 5347
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 5349
    :catch_0
    move-exception v8

    .line 5352
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3478
    if-nez p2, :cond_1

    .line 3479
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3480
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3481
    return v3

    .line 3485
    :cond_0
    aget-object p2, v0, v3

    .line 3490
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, p1, v4, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3491
    return v1

    .line 3495
    :cond_2
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    invoke-direct {p0, v2, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3496
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    invoke-direct {p0, v1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->checkUidPermission(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 3495
    :cond_3
    return v1
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 5501
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_0

    .line 5502
    return v5

    .line 5504
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5505
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5506
    :try_start_0
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5511
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_2

    .line 5512
    const-string/jumbo v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    .line 5513
    .local v4, "query":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    const/4 v7, 0x1

    aput-object p2, v1, v7

    .line 5514
    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v1, v8

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v7, v1, v8

    .line 5520
    .local v1, "args":[Ljava/lang/String;
    :goto_0
    invoke-static {v2, v4, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    move v3, v5

    .line 5521
    .local v3, "permissionGranted":Z
    :cond_1
    if-nez v3, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5524
    const-string/jumbo v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no credentials permission for usage of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5525
    const-string/jumbo v9, " by uid "

    .line 5524
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5526
    const-string/jumbo v9, " but ignoring since device is in test harness."

    .line 5524
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 5527
    return v5

    .line 5516
    .end local v1    # "args":[Ljava/lang/String;
    .end local v3    # "permissionGranted":Z
    .end local v4    # "query":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

    .line 5517
    .restart local v4    # "query":Ljava/lang/String;
    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v1, v8

    .line 5518
    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v1, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5517
    .restart local v1    # "args":[Ljava/lang/String;
    goto :goto_0

    .restart local v3    # "permissionGranted":Z
    :cond_3
    monitor-exit v6

    .line 5529
    return v3

    .line 5505
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "permissionGranted":Z
    .end local v4    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 4646
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableRowCount(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 4647
    .local v0, "size":I
    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    .line 4649
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDebugTableInsertionPoint(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 4653
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->compileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 4644
    return-void

    .line 4651
    :cond_0
    invoke-static {p2, v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    goto :goto_0
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x0

    .line 5747
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5748
    .local v0, "accountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v2, v0

    .line 5749
    .local v2, "oldLength":I
    :goto_0
    add-int/lit8 v5, v2, 0x1

    new-array v1, v5, [Landroid/accounts/Account;

    .line 5750
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 5751
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5753
    :cond_0
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v3

    .line 5755
    .local v3, "token":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, p2, v3}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 5756
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5757
    aget-object v4, v1, v2

    return-object v4

    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .end local v2    # "oldLength":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 5748
    goto :goto_0

    .line 5754
    .restart local v1    # "newAccountsForType":[Landroid/accounts/Account;
    .restart local v2    # "oldLength":I
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "token":Ljava/lang/String;
    goto :goto_1
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "accountId"    # J
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 1391
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1392
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1394
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v1, "ceDb.extras"

    const-string/jumbo v2, "key"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method private installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V
    .locals 12
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 5297
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 5299
    .local v10, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5302
    .local v0, "notificationManager":Landroid/app/INotificationManager;
    const/4 v1, 0x1

    :try_start_1
    new-array v6, v1, [I

    .line 5301
    const/4 v3, 0x0

    move-object v1, p3

    move-object v2, p3

    move v4, p1

    move-object v5, p2

    move/from16 v7, p4

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5307
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5296
    return-void

    .line 5306
    .end local v0    # "notificationManager":Landroid/app/INotificationManager;
    :catchall_0
    move-exception v1

    .line 5307
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5306
    throw v1

    .line 5303
    .restart local v0    # "notificationManager":Landroid/app/INotificationManager;
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1919
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 1920
    :cond_0
    return-void

    .line 1923
    :cond_1
    const-string/jumbo v0, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    .line 1932
    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    aput-object p3, v1, v3

    .line 1922
    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1934
    .local v7, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1935
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1936
    .local v8, "authTokenId":J
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1937
    .local v6, "accountName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1938
    .local v4, "authTokenType":Ljava/lang/String;
    const-string/jumbo v0, "ceDb.authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1942
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1939
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1946
    .end local v4    # "authTokenType":Ljava/lang/String;
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v8    # "authTokenId":J
    :catchall_0
    move-exception v0

    .line 1947
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1946
    throw v0

    .line 1947
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1918
    return-void
.end method

.method private invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1910
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 1911
    :cond_0
    return-void

    .line 1914
    :cond_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    return-void
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 5431
    if-nez p1, :cond_0

    .line 5432
    const/4 v0, 0x0

    return v0

    .line 5434
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5471
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5472
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 5473
    .local v0, "account":Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5474
    const/4 v1, 0x1

    return v1

    .line 5472
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5478
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    return v3
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 5422
    if-nez p1, :cond_0

    .line 5423
    const/4 v0, 0x0

    return v0

    .line 5425
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCrossUser(II)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1080
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 1081
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 1083
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1082
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1080
    :cond_0
    return v0
.end method

.method private isLocalUnlockedUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1366
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5330
    array-length v4, p3

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, p3, v2

    .line 5331
    .local v1, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 5332
    const-string/jumbo v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5333
    const-string/jumbo v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    :cond_0
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 5336
    .local v0, "opCode":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v0, p2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 5338
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 5330
    .end local v0    # "opCode":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5342
    .end local v1    # "perm":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private isPrivileged(I)Z
    .locals 11
    .param p1, "callingUid"    # I

    .prologue
    const/4 v7, 0x0

    .line 5356
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5360
    .local v0, "callingUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5361
    const-string/jumbo v8, "android"

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v10, 0x0

    .line 5360
    invoke-virtual {v6, v8, v10, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 5366
    .local v5, "userPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 5367
    .local v4, "packages":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v4, v6

    .line 5369
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5370
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 5371
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_0

    .line 5373
    const/4 v6, 0x1

    return v6

    .line 5362
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packages":[Ljava/lang/String;
    .end local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 5363
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    .line 5375
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "packages":[Ljava/lang/String;
    .restart local v5    # "userPackageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 5376
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7

    .line 5367
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5379
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    return v7
.end method

.method private isProfileOwner(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 5609
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5610
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    .line 5611
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    .line 5610
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSystemUid(I)Z
    .locals 13
    .param p1, "callingUid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 5534
    const/4 v5, 0x0

    .line 5535
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5537
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 5539
    .local v5, "packages":[Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5541
    if-eqz v5, :cond_1

    .line 5542
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v1, v5, v6

    .line 5544
    .local v1, "name":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 5545
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 5546
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 5548
    return v12

    .line 5538
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v5, "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 5539
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5538
    throw v6

    .line 5550
    .restart local v1    # "name":Ljava/lang/String;
    .local v5, "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5551
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "AccountManagerService"

    const-string/jumbo v10, "Could not find package [%s]"

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v1, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5542
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5555
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No known packages with uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    :cond_2
    return v7
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 4618
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4617
    return-void
.end method

.method private logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p7, "callingUid"    # I

    .prologue
    .line 4626
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get6(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4627
    .local v0, "logStatement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4628
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4629
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get18()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4630
    int-to-long v2, p7

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4631
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 4632
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4633
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4634
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 4635
    invoke-static {p6}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get3(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x40

    invoke-static {p6, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-set0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 4625
    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 4604
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4605
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 4603
    return-void
.end method

.method private logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 4609
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4610
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4608
    return-void
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    .prologue
    .line 2593
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2595
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 2599
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2601
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2602
    if-eqz p2, :cond_1

    .line 2601
    .end local p2    # "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2603
    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2604
    const-string/jumbo v1, "authTokenType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2605
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2606
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2608
    return-object v0

    .line 2602
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_1
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .prologue
    .line 3556
    new-instance v7, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$18;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-direct {v7, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    .line 3582
    const-string/jumbo v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v7

    .line 3555
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    .line 2245
    if-nez p2, :cond_0

    .line 2246
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "the result is unexpectedly null"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2248
    :cond_0
    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2249
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    :cond_2
    :goto_0
    return-void

    .line 2254
    :catch_0
    move-exception v0

    .line 2257
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2258
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 826
    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 827
    .local v4, "userId":I
    const/4 v6, 0x1

    if-ge v4, v6, :cond_0

    return-void

    .line 831
    :cond_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v7

    .line 832
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 833
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 834
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 835
    .local v5, "userUnlocked":Z
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 837
    if-eqz v0, :cond_1

    .line 838
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 839
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    .line 842
    :cond_1
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing database files for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .local v2, "dbFile":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    .line 847
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v3

    .line 848
    .local v3, "fbeEnabled":Z
    if-eqz v3, :cond_2

    if-eqz v5, :cond_3

    .line 849
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    .local v1, "ceDb":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 851
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    .line 825
    .end local v1    # "ceDb":Ljava/io/File;
    :cond_3
    return-void

    .line 831
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "dbFile":Ljava/io/File;
    .end local v3    # "fbeEnabled":Z
    .end local v5    # "userUnlocked":Z
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 838
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userUnlocked":Z
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 5384
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 5385
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5386
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid is system"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5388
    :cond_0
    return v3

    .line 5391
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5392
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5393
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5394
    const-string/jumbo v2, " privileged"

    .line 5393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5396
    :cond_2
    return v3

    .line 5398
    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5399
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5400
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5401
    const-string/jumbo v2, " manages the account"

    .line 5400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    :cond_4
    return v3

    .line 5405
    :cond_5
    if-eqz p1, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5406
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5407
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " granted calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5408
    const-string/jumbo v2, " user granted access"

    .line 5407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    :cond_6
    return v3

    .line 5413
    :cond_7
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5414
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not granted for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 802
    iget-object v11, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 803
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 804
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "grants"

    .line 805
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 806
    const-string/jumbo v5, "uid"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 804
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 808
    .local v8, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 810
    .local v10, "uid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .line 811
    .local v9, "packageExists":Z
    :goto_1
    if-nez v9, :cond_0

    .line 814
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleting grants for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 815
    const-string/jumbo v3, " because its package is no longer installed"

    .line 814
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string/jumbo v1, "grants"

    const-string/jumbo v2, "uid=?"

    .line 817
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 816
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 819
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :catchall_0
    move-exception v1

    .line 820
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 819
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 802
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v11

    throw v1

    .line 810
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "uid":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "packageExists":Z
    goto :goto_1

    .line 820
    .end local v9    # "packageExists":Z
    .end local v10    # "uid":I
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v11

    .line 801
    return-void
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    .prologue
    .line 794
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 795
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    .line 793
    return-void

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x0

    .line 930
    if-nez p2, :cond_0

    .line 931
    return-object v4

    .line 933
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 934
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Password is not available - user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data is locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-object v4

    .line 938
    :cond_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 939
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 940
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 941
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 940
    invoke-static {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findAccountPasswordByNameAndType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 938
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 13
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 964
    if-nez p2, :cond_0

    .line 965
    const/4 v1, 0x0

    return-object v1

    .line 967
    :cond_0
    iget-object v12, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12

    .line 968
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/atomic/AtomicReference;

    .line 969
    .local v10, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v10, :cond_2

    .line 970
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 972
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "accounts"

    .line 973
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "previous_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 974
    const-string/jumbo v3, "name=? AND type=?"

    .line 975
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 976
    const/4 v5, 0x0

    .line 977
    const/4 v6, 0x0

    .line 978
    const/4 v7, 0x0

    .line 971
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 980
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 982
    .local v9, "previousName":Ljava/lang/String;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v11, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .local v11, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 989
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v12

    .line 984
    return-object v9

    .line 989
    .end local v9    # "previousName":Ljava/lang/String;
    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 986
    const/4 v1, 0x0

    monitor-exit v12

    return-object v1

    .line 988
    :catchall_0
    move-exception v1

    .line 989
    :goto_0
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 988
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 967
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    monitor-exit v12

    throw v1

    .line 992
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v12

    return-object v1

    .line 988
    .end local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "previousName":Ljava/lang/String;
    .restart local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    move-object v10, v11

    .end local v11    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    .restart local v10    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 5719
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 5720
    .local v3, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v3, :cond_2

    .line 5721
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5722
    .local v2, "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 5723
    .local v0, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v0, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5724
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5722
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5727
    .end local v0    # "curAccount":Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5728
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5735
    .end local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5736
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5737
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5718
    return-void

    .line 5730
    .restart local v2    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Landroid/accounts/Account;

    .line 5731
    .local v1, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newAccountsForType":[Landroid/accounts/Account;
    check-cast v1, [Landroid/accounts/Account;

    .line 5732
    .restart local v1    # "newAccountsForType":[Landroid/accounts/Account;
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 26
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    .prologue
    .line 1800
    const/4 v11, 0x0

    .line 1801
    .local v11, "isChanged":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v20

    .line 1802
    .local v20, "userUnlocked":Z
    if-nez v20, :cond_0

    .line 1803
    const-string/jumbo v4, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Removing account "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " while user "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1804
    const-string/jumbo v10, " is still locked. CE data will be removed later"

    .line 1803
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1807
    if-eqz v20, :cond_5

    .line 1808
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1810
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1813
    const-wide/16 v8, -0x1

    .line 1815
    .local v8, "accountId":J
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1816
    const-wide/16 v24, 0x0

    cmp-long v4, v8, v24

    if-ltz v4, :cond_2

    .line 1818
    const-string/jumbo v4, "accounts"

    .line 1819
    const-string/jumbo v7, "name=? AND type=?"

    .line 1820
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v10, v24

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-object v23, v10, v24

    .line 1817
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1821
    if-eqz v20, :cond_1

    .line 1824
    const-string/jumbo v4, "ceDb.accounts"

    .line 1825
    const-string/jumbo v7, "name=? AND type=?"

    .line 1826
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v23, v10, v24

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aput-object v23, v10, v24

    .line 1823
    invoke-virtual {v5, v4, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1828
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1829
    const/4 v11, 0x1

    .line 1832
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1834
    if-eqz v11, :cond_3

    .line 1835
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1837
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1838
    if-eqz v20, :cond_6

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    move-result-object v6

    .line 1840
    .local v6, "action":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v6    # "action":Ljava/lang/String;
    :cond_3
    monitor-exit v22

    .line 1843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1845
    .local v12, "id":J
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v16

    .line 1846
    .local v16, "parentUserId":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1848
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v21

    .line 1849
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "user$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/UserInfo;

    .line 1850
    .local v18, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 1851
    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1855
    .end local v16    # "parentUserId":I
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    .end local v19    # "user$iterator":Ljava/util/Iterator;
    .end local v21    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v4

    .line 1856
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1855
    throw v4

    .line 1809
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v12    # "id":J
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto/16 :goto_0

    .line 1831
    .restart local v8    # "accountId":J
    :catchall_1
    move-exception v4

    .line 1832
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1831
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1806
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    :catchall_2
    move-exception v4

    monitor-exit v22

    throw v4

    .line 1839
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "accountId":J
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get2()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v6

    .restart local v6    # "action":Ljava/lang/String;
    goto :goto_1

    .line 1856
    .end local v6    # "action":Ljava/lang/String;
    .restart local v12    # "id":J
    .restart local v16    # "parentUserId":I
    :cond_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1859
    if-eqz v11, :cond_a

    .line 1860
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 1862
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1861
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "key$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 1863
    .local v14, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1864
    const-string/jumbo v10, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v4, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1863
    if-eqz v4, :cond_8

    .line 1865
    iget-object v4, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1866
    .local v17, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v10, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v10, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$-boolean_removeAccountInternal_com_android_server_accounts_AccountManagerService$UserAccounts_accounts_android_accounts_Account_account_int_callingUid_LambdaImpl0;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V

    invoke-virtual {v4, v10}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 1860
    .end local v14    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v15    # "key$iterator":Ljava/util/Iterator;
    .end local v17    # "uid":I
    :catchall_3
    move-exception v4

    monitor-exit v7

    throw v4

    .restart local v15    # "key$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v7

    .line 1873
    .end local v15    # "key$iterator":Ljava/util/Iterator;
    :cond_a
    return v11
.end method

.method private removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3918
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 3919
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 3920
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3921
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 3922
    .local v4, "sharedTableAccountId":J
    const-string/jumbo v0, "shared_accounts"

    const-string/jumbo v2, "name=? AND type=?"

    .line 3923
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v3, v10

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v3, v9

    .line 3922
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 3924
    .local v8, "r":I
    if-lez v8, :cond_0

    .line 3925
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 3927
    invoke-direct {p0, v6, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 3929
    :cond_0
    if-lez v8, :cond_1

    move v0, v9

    :goto_0
    return v0

    :cond_1
    move v0, v10

    goto :goto_0
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 25
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1521
    const/16 v17, 0x0

    .line 1532
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1533
    new-instance v6, Landroid/os/UserHandle;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1531
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1534
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 1536
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1535
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "pair$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1537
    .local v13, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v4, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1538
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1539
    .local v12, "id":I
    new-instance v4, Landroid/os/UserHandle;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1534
    .end local v12    # "id":I
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v14    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .restart local v14    # "pair$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    .line 1543
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1544
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1545
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1546
    new-instance v16, Landroid/accounts/Account;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1548
    .local v16, "renamedAccount":Landroid/accounts/Account;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1549
    .local v8, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-ltz v4, :cond_2

    .line 1550
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1551
    .local v23, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v11, v6

    .line 1553
    .local v11, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v4, "ceDb.accounts"

    const-string/jumbo v6, "_id=?"

    move-object/from16 v0, v23

    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1555
    const-string/jumbo v4, "previous_name"

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const-string/jumbo v4, "accounts"

    const-string/jumbo v6, "_id=?"

    move-object/from16 v0, v23

    invoke-virtual {v5, v4, v0, v6, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1557
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1558
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1562
    .end local v11    # "argsAccountId":[Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1569
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v16

    .line 1576
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    .line 1577
    .local v18, "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1578
    .local v19, "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 1583
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get4(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    .line 1587
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1585
    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    move-object/from16 v17, v16

    .line 1590
    .local v17, "resultAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    .line 1591
    .local v15, "parentUserId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1596
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v22

    .line 1597
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "user$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    .line 1598
    .local v20, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1599
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v4, v15, :cond_3

    .line 1600
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1543
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v15    # "parentUserId":I
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .end local v17    # "resultAccount":Landroid/accounts/Account;
    .end local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    .end local v21    # "user$iterator":Ljava/util/Iterator;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v4

    monitor-exit v24

    throw v4

    .line 1561
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    .local v17, "resultAccount":Landroid/accounts/Account;
    :catchall_2
    move-exception v4

    .line 1562
    :try_start_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1561
    throw v4

    .line 1604
    .restart local v8    # "accountId":J
    .restart local v15    # "parentUserId":I
    .local v17, "resultAccount":Landroid/accounts/Account;
    .restart local v18    # "tmpData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "tmpTokens":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v24

    .line 1606
    return-object v16
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 5681
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5682
    :cond_0
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v7, "revokeAppPermission: called with invalid arguments"

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5683
    return-void

    .line 5685
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 5686
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5687
    :try_start_0
    iget-object v6, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5688
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5690
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 5691
    .local v0, "accountId":J
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-ltz v6, :cond_2

    .line 5692
    const-string/jumbo v6, "grants"

    .line 5693
    const-string/jumbo v8, "accounts_id=? AND auth_token_type=? AND uid=?"

    .line 5695
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object p2, v9, v10

    .line 5696
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 5692
    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5697
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5700
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5703
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 5704
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 5703
    invoke-virtual {p0, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    .line 5709
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5708
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5710
    .local v4, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v7, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;

    invoke-direct {v7, v4, p1, p3}, Lcom/android/server/accounts/AccountManagerService$-void_revokeAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v6, v7}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5699
    .end local v0    # "accountId":J
    .end local v4    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    .line 5700
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5699
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5686
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 5680
    .restart local v0    # "accountId":J
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1973
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1974
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1976
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1977
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1976
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1978
    iget-object v9, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1979
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1980
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1982
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 1983
    .local v6, "accountId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    .line 2000
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1984
    const/4 v0, 0x0

    monitor-exit v9

    return v0

    .line 1986
    :cond_2
    :try_start_3
    const-string/jumbo v0, "ceDb.authtokens"

    .line 1987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accounts_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1988
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 1986
    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1989
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1990
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "accounts_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1991
    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string/jumbo v0, "authtoken"

    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    const-string/jumbo v0, "ceDb.authtokens"

    const-string/jumbo v1, "authtoken"

    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 1994
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1995
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2000
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1996
    const/4 v0, 0x1

    monitor-exit v9

    return v0

    .line 2000
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1998
    const/4 v0, 0x0

    monitor-exit v9

    return v0

    .line 1999
    .end local v6    # "accountId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 2000
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1999
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1978
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    .prologue
    .line 1960
    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    .line 1961
    :cond_0
    return-void

    .line 1960
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1963
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1964
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1963
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1965
    iget-object v8, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1966
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    move-object v1, p2

    move-object v2, p6

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1958
    return-void

    .line 1965
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5161
    if-eqz p0, :cond_1

    .line 5162
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 5163
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5164
    const/4 v1, 0x1

    return v1

    .line 5162
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5168
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 2135
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2136
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2134
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 5990
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5988
    :cond_0
    :goto_0
    return-void

    .line 5991
    :catch_0
    move-exception v0

    .line 5994
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5995
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 5977
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5975
    :cond_0
    :goto_0
    return-void

    .line 5978
    :catch_0
    move-exception v0

    .line 5981
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5982
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 2095
    if-nez p2, :cond_0

    .line 2096
    return-void

    .line 2098
    :cond_0
    const/4 v9, 0x0

    .line 2099
    .local v9, "isChanged":Z
    iget-object v11, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2100
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2101
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2103
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2104
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v10, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-direct {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 2106
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 2107
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v8, v3

    .line 2109
    .local v8, "argsAccountId":[Ljava/lang/String;
    const-string/jumbo v0, "ceDb.accounts"

    const-string/jumbo v3, "_id=?"

    .line 2108
    invoke-virtual {v1, v0, v10, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2111
    const-string/jumbo v0, "ceDb.authtokens"

    const-string/jumbo v3, "accounts_id=?"

    .line 2110
    invoke-virtual {v1, v0, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2112
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 2114
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2118
    const/4 v9, 0x1

    .line 2119
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 2120
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get9()Ljava/lang/String;

    move-result-object v2

    .line 2122
    .local v2, "action":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "accounts"

    move-object v0, p0

    move-object v6, p1

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2125
    .end local v2    # "action":Ljava/lang/String;
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2126
    if-eqz v9, :cond_3

    .line 2128
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit v11

    .line 2094
    return-void

    .line 2121
    .restart local v8    # "argsAccountId":[Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get10()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .restart local v2    # "action":Ljava/lang/String;
    goto :goto_0

    .line 2124
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "accountId":J
    .end local v8    # "argsAccountId":[Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 2125
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2126
    if-eqz v9, :cond_5

    .line 2128
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2124
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2099
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method private setUserdataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 2214
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2215
    :cond_0
    return-void

    .line 2217
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2218
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2220
    :try_start_0
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 2221
    .local v4, "accountId":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 2240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2222
    return-void

    .line 2224
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v12

    .line 2225
    .local v12, "extrasId":J
    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-gez v2, :cond_3

    move-object v2, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 2226
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 2227
    const-wide/16 v6, 0x0

    cmp-long v2, v12, v6

    if-gez v2, :cond_4

    .line 2240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2228
    return-void

    .line 2231
    :cond_3
    :try_start_2
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2232
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    move-object/from16 v0, p4

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const-string/jumbo v2, "extras"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v14, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    const/4 v6, 0x1

    if-eq v6, v2, :cond_4

    .line 2240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2234
    return-void

    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object v6, p0

    move-object/from16 v7, p1

    move-object v8, v3

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 2237
    :try_start_3
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2213
    return-void

    .line 2239
    .end local v4    # "accountId":J
    .end local v12    # "extrasId":J
    :catchall_0
    move-exception v2

    .line 2240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2239
    throw v2
.end method

.method private showCantAddAccount(II)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3147
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3148
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string/jumbo v1, "android.accounts.extra.ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3149
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3150
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3152
    .local v2, "identityToken":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3154
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3146
    return-void

    .line 3153
    :catchall_0
    move-exception v1

    .line 3154
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3153
    throw v1
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 5715
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .prologue
    .line 779
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "mUsers lock must be held"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 780
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 781
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->findCeAccountsNotInDe(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    .line 782
    .local v2, "accountsToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 783
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Accounts "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " were previously deleted while user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 784
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    .line 783
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 784
    const-string/jumbo v6, " was locked. Removing accounts from CE tables"

    .line 783
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get11()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "accounts"

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 788
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    goto :goto_0

    .line 778
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "account$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private syncSharedAccounts(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v3

    .line 881
    .local v3, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-nez v5, :cond_1

    :cond_0
    return-void

    .line 882
    :cond_1
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7, p1, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 883
    .local v0, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 884
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v1, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 886
    .local v1, "parentUserId":I
    :goto_0
    if-gez v1, :cond_3

    .line 887
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has shared accounts, but no parent user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void

    .end local v1    # "parentUserId":I
    :cond_2
    move v1, v4

    .line 885
    goto :goto_0

    .line 890
    .restart local v1    # "parentUserId":I
    :cond_3
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v2, v3, v4

    .line 891
    .local v2, "sa":Landroid/accounts/Account;
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 890
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 893
    :cond_4
    invoke-virtual {p0, v7, v2, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    goto :goto_2

    .line 878
    .end local v2    # "sa":Landroid/accounts/Account;
    :cond_5
    return-void
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1218
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1219
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1220
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1221
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "last_password_entry_time_millis_epoch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1222
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1224
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v4, "accounts"

    .line 1226
    const-string/jumbo v6, "name=? AND type=?"

    .line 1227
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 1228
    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1223
    invoke-virtual {v1, v4, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1230
    .local v2, "i":I
    if-lez v2, :cond_0

    monitor-exit v5

    .line 1231
    return v11

    :cond_0
    monitor-exit v5

    .line 1234
    return v10

    .line 1219
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 34
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    .prologue
    .line 548
    const-string/jumbo v3, "AccountManagerService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "validateAccountsInternal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 550
    const-string/jumbo v5, " isCeDatabaseAttached="

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 550
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    move-result v5

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 551
    const-string/jumbo v5, " userLocked="

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 551
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    if-eqz p2, :cond_1

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 559
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 558
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v24

    .line 560
    .local v24, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v31

    .line 562
    .local v31, "userUnlocked":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 563
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 564
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 568
    .local v12, "accountDeleted":Z
    const-string/jumbo v3, "meta"

    .line 569
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "key"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "value"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 570
    const-string/jumbo v5, "key LIKE ?"

    .line 571
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "auth_uid_for_type:%"

    const/4 v10, 0x0

    aput-object v7, v6, v10

    .line 574
    const-string/jumbo v9, "key"

    .line 572
    const/4 v7, 0x0

    .line 573
    const/4 v8, 0x0

    .line 567
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 576
    .local v27, "metaCursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v28

    .line 578
    .local v28, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 579
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 580
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v29, v3, v4

    .line 581
    .local v29, "type":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 582
    .local v30, "uid":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 584
    :cond_3
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Auth type empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    const-string/jumbo v5, ", uid empty: "

    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 628
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 629
    :try_start_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 628
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 562
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "accountDeleted":Z
    .end local v27    # "metaCursor":Landroid/database/Cursor;
    .end local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    monitor-exit v33

    throw v3

    .line 588
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "accountDeleted":Z
    .restart local v27    # "metaCursor":Landroid/database/Cursor;
    .restart local v28    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29    # "type":Ljava/lang/String;
    .restart local v30    # "uid":Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 589
    .local v25, "knownUid":Ljava/lang/Integer;
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 591
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 609
    :cond_5
    if-nez v26, :cond_6

    .line 610
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v26

    .line 612
    :cond_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 616
    invoke-virtual/range {v28 .. v29}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 619
    const-string/jumbo v3, "meta"

    .line 620
    const-string/jumbo v4, "key=? AND value=?"

    .line 621
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "auth_uid_for_type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 623
    const/4 v6, 0x1

    aput-object v30, v5, v6

    .line 618
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 629
    .end local v25    # "knownUid":Ljava/lang/Integer;
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "uid":Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 635
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 636
    .local v23, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 637
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 638
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 639
    .local v32, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "key"

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "auth_uid_for_type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 639
    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string/jumbo v4, "value"

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string/jumbo v3, "meta"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object/from16 v0, v32

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    .line 645
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v32    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string/jumbo v3, "accounts"

    .line 646
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "type"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "name"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 647
    const-string/jumbo v9, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 645
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v20

    .line 649
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 650
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 651
    .local v15, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 652
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 653
    .local v8, "accountId":J
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 654
    .local v16, "accountType":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 656
    .local v13, "accountName":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 657
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleting account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " because type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 658
    const-string/jumbo v5, "\'s registered authenticator no longer exist."

    .line 657
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 661
    :try_start_6
    const-string/jumbo v3, "accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 664
    if-eqz v31, :cond_9

    .line 665
    const-string/jumbo v3, "ceDb.accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 667
    :cond_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 669
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 671
    const/4 v12, 0x1

    .line 673
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get4()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 676
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v11, v13, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .local v11, "account":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_2

    .line 699
    .end local v8    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :catchall_2
    move-exception v3

    .line 700
    :try_start_8
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 701
    if-eqz v12, :cond_a

    .line 702
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 699
    :cond_a
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 668
    .restart local v8    # "accountId":J
    .restart local v13    # "accountName":Ljava/lang/String;
    .restart local v15    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v16    # "accountType":Ljava/lang/String;
    :catchall_3
    move-exception v3

    .line 669
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 668
    throw v3

    .line 681
    :cond_b
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 682
    .local v14, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v14, :cond_c

    .line 683
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_c
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 689
    .end local v8    # "accountId":J
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    :cond_d
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "cur$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 690
    .local v18, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 691
    .restart local v16    # "accountType":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 692
    .restart local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/accounts/Account;

    move-object/from16 v17, v0

    .line 693
    .local v17, "accountsForType":[Landroid/accounts/Account;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v22

    if-ge v0, v3, :cond_e

    .line 694
    new-instance v4, Landroid/accounts/Account;

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 695
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 694
    move-object/from16 v0, v16

    invoke-direct {v4, v3, v0, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v17, v22

    .line 693
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 697
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 700
    .end local v14    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "accountType":Ljava/lang/String;
    .end local v17    # "accountsForType":[Landroid/accounts/Account;
    .end local v18    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v22    # "i":I
    :cond_f
    :try_start_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 701
    if-eqz v12, :cond_10

    .line 702
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_10
    monitor-exit v33

    .line 547
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_accounts_AccountManagerService_lambda$1(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    const/4 v8, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "accounts":[Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 443
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 444
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 446
    .local v2, "identity":J
    :try_start_0
    array-length v10, v5

    move v9, v8

    .end local v1    # "accounts":[Landroid/accounts/Account;
    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v4, v5, v9

    .line 447
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 448
    const-string/jumbo v11, "android.permission.GET_ACCOUNTS"

    .line 447
    invoke-virtual {v7, v11, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 446
    :cond_0
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 453
    :cond_1
    if-nez v1, :cond_2

    .line 454
    const-string/jumbo v7, "android"

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 455
    .local v1, "accounts":[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    return-void

    .line 460
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :cond_2
    :try_start_1
    array-length v11, v1

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_0

    aget-object v0, v1, v7

    .line 462
    .local v0, "account":Landroid/accounts/Account;
    const/4 v12, 0x1

    .line 461
    invoke-direct {p0, v0, p1, v4, v12}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 0
    .end local v2    # "identity":J
    .end local v6    # "userId":I
    :cond_4
    return-void

    .line 465
    .restart local v2    # "identity":J
    .restart local v6    # "userId":I
    :catchall_0
    move-exception v7

    .line 466
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v7
.end method

.method synthetic -com_android_server_accounts_AccountManagerService_lambda$2(Landroid/accounts/Account;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .prologue
    .line 1867
    const/4 v0, 0x0

    .line 1866
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 0
    return-void
.end method

.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1184
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1186
    const-string/jumbo v6, "accountAuthenticated( account: %s, callerUid: %s)"

    .line 1185
    new-array v7, v10, [Ljava/lang/Object;

    .line 1187
    aput-object p1, v7, v9

    .line 1188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    .line 1185
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1189
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 1192
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1194
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1195
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1197
    const-string/jumbo v6, "uid %s cannot notify authentication for accounts of type: %s"

    .line 1196
    new-array v7, v10, [Ljava/lang/Object;

    .line 1198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 1199
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v8, v7, v11

    .line 1196
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1200
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1203
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1204
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1208
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1210
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1211
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1213
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1211
    return v6

    .line 1205
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "identityToken":J
    :cond_3
    return v9

    .line 1212
    .restart local v2    # "identityToken":J
    :catchall_0
    move-exception v6

    .line 1213
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1212
    throw v6
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    .prologue
    .line 2644
    const/16 v4, 0x10

    invoke-static {v4}, Landroid/util/SeempLog;->record(I)I

    .line 2645
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2646
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2647
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addAccount: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2648
    const-string/jumbo v6, ", response "

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2649
    const-string/jumbo v6, ", authTokenType "

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2650
    const-string/jumbo v6, ", requiredFeatures "

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2650
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2651
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2652
    const-string/jumbo v6, ", caller\'s uid "

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2653
    const-string/jumbo v6, ", pid "

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2653
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2647
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2656
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2659
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2660
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    .line 2661
    .local v24, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2664
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    .line 2663
    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2667
    :goto_0
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2668
    return-void

    .line 2670
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2673
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 2672
    const/16 v5, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2676
    :goto_1
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2678
    return-void

    .line 2681
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 2682
    .local v19, "pid":I
    if-nez p6, :cond_5

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2683
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2684
    const-string/jumbo v4, "callerPid"

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2686
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v25

    .line 2687
    .local v25, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 2689
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2691
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "accounts"

    .line 2690
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2692
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$9;

    .line 2693
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2694
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p2

    .line 2692
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2712
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2643
    return-void

    .line 2682
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v25    # "usrId":I
    :cond_5
    move-object/from16 v17, p6

    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    .line 2711
    .restart local v20    # "identityToken":J
    .restart local v25    # "usrId":I
    :catchall_0
    move-exception v4

    .line 2712
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2711
    throw v4

    .line 2674
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "pid":I
    .end local v20    # "identityToken":J
    .end local v25    # "usrId":I
    :catch_0
    move-exception v22

    .local v22, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 2665
    .end local v22    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v22

    .restart local v22    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 25
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .prologue
    .line 2720
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 2722
    .local v19, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2723
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addAccount: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2724
    const-string/jumbo v6, ", response "

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2725
    const-string/jumbo v6, ", authTokenType "

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2726
    const-string/jumbo v6, ", requiredFeatures "

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2726
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2727
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2728
    const-string/jumbo v6, ", caller\'s uid "

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2729
    const-string/jumbo v6, ", pid "

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2729
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2730
    const-string/jumbo v6, ", for user id "

    .line 2723
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2733
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2735
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2736
    new-instance v4, Ljava/lang/SecurityException;

    .line 2738
    const-string/jumbo v5, "User %s trying to add account for %s"

    .line 2737
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 2739
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    .line 2740
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    .line 2737
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2736
    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2744
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2747
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    .line 2746
    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2750
    :goto_0
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2751
    return-void

    .line 2753
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2756
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 2755
    const/16 v5, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2759
    :goto_1
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2761
    return-void

    .line 2764
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 2765
    .local v22, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    .line 2766
    .local v24, "uid":I
    if-nez p6, :cond_6

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2767
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2768
    const-string/jumbo v4, "callerPid"

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2770
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 2772
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2774
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get5()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "accounts"

    .line 2773
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2775
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$10;

    .line 2776
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2777
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p2

    .line 2775
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2795
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2719
    return-void

    .line 2766
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    .line 2794
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    .line 2795
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2794
    throw v4

    .line 2757
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v20    # "identityToken":J
    .end local v22    # "pid":I
    .end local v24    # "uid":I
    :catch_0
    move-exception v23

    .local v23, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 2748
    .end local v23    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    .restart local v23    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    .line 1089
    invoke-static {p3, v10}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1091
    .local v5, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    const-string/jumbo v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1093
    const-string/jumbo v3, ", caller\'s uid "

    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1094
    const-string/jumbo v3, ", pid "

    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "account is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 1098
    .local v9, "userId":I
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v9}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    .line 1099
    new-array v2, v4, [Ljava/lang/Object;

    .line 1101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1102
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 1099
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1103
    .local v8, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    .end local v8    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 1116
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1117
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1119
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1117
    return v0

    .line 1118
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    .line 1119
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1118
    throw v0
.end method

.method public addSharedAccountsFromParentUser(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3863
    const-string/jumbo v2, "addSharedAccountsFromParentUser"

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 3864
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 3865
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 3866
    .local v0, "account":Landroid/accounts/Account;
    invoke-direct {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 3865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3862
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method protected cancelNotification(ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5313
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 5312
    return-void
.end method

.method protected cancelNotification(ILjava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5317
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 5320
    .local v2, "identityToken":J
    :try_start_0
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 5319
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 5321
    .local v1, "service":Landroid/app/INotificationManager;
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, p2, v5, p1, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5325
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5316
    .end local v1    # "service":Landroid/app/INotificationManager;
    :goto_0
    return-void

    .line 5322
    :catch_0
    move-exception v0

    .line 5325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 5324
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 5325
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5324
    throw v4
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x2

    .line 2142
    const/16 v6, 0x13

    invoke-static {v6}, Landroid/util/SeempLog;->record(I)I

    .line 2143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2144
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2145
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clearPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2146
    const-string/jumbo v8, ", caller\'s uid "

    .line 2145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2147
    const-string/jumbo v8, ", pid "

    .line 2145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2147
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2150
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2151
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2153
    const-string/jumbo v6, "uid %s cannot clear passwords for accounts of type: %s"

    .line 2152
    new-array v7, v9, [Ljava/lang/Object;

    .line 2154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2155
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2152
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2156
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2158
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2160
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2161
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v6, 0x0

    invoke-direct {p0, v0, p1, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2141
    return-void

    .line 2162
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2163
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2162
    throw v6
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 3165
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3167
    .local v15, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3168
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "confirmCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3169
    const-string/jumbo v4, ", response "

    .line 3168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3170
    const-string/jumbo v4, ", expectActivityLaunch "

    .line 3168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3171
    const-string/jumbo v4, ", caller\'s uid "

    .line 3168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3172
    const-string/jumbo v4, ", pid "

    .line 3168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3172
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3176
    new-instance v2, Ljava/lang/SecurityException;

    .line 3178
    const-string/jumbo v3, "User %s trying to confirm account credentials for %s"

    .line 3177
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 3179
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 3180
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 3177
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3176
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3182
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3183
    :cond_2
    if-nez p2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3184
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3186
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3187
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$13;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3188
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    .line 3189
    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 3187
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$13;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3201
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3164
    return-void

    .line 3200
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3201
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3200
    throw v2
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I

    .prologue
    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1127
    .local v16, "callingUid":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1131
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 1132
    .local v5, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v14

    .line 1133
    .local v14, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v5, :cond_1

    if-nez v14, :cond_3

    .line 1134
    :cond_1
    if-eqz p1, :cond_2

    .line 1135
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 1136
    .local v20, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "booleanResult"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1138
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    .end local v20    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 1139
    .restart local v20    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v17

    .line 1140
    .local v17, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to report error back to the client."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1146
    .end local v17    # "e":Landroid/os/RemoteException;
    .end local v20    # "result":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Copying account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1147
    const-string/jumbo v4, " from user "

    .line 1146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1147
    const-string/jumbo v4, " to user "

    .line 1146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v18

    .line 1150
    .local v18, "identityToken":J
    :try_start_1
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$5;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1151
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1150
    const/4 v8, 0x0

    .line 1151
    const/4 v9, 0x0

    .line 1152
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    move/from16 v15, p3

    .line 1150
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1125
    return-void

    .line 1176
    :catchall_0
    move-exception v2

    .line 1177
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1176
    throw v2
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3521
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Can be called only by system UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3524
    :cond_0
    const-string/jumbo v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3525
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3526
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 3530
    .local v10, "userId":I
    const-string/jumbo v0, "user must be concrete"

    const v1, 0x7fffffff

    invoke-static {v10, v3, v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3540
    .local v7, "uid":I
    invoke-direct {p0, p1, p2, v7, v4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v2

    .line 3542
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3545
    .local v8, "identity":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 3547
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 3545
    const/4 v1, 0x0

    const/high16 v3, 0x54000000

    .line 3547
    const/4 v4, 0x0

    .line 3544
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3549
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3544
    return-object v0

    .line 3535
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "uid":I
    .end local v8    # "identity":J
    :catch_0
    move-exception v6

    .line 3536
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    return-object v4

    .line 3548
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "uid":I
    .restart local v8    # "identity":J
    :catchall_0
    move-exception v0

    .line 3549
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3548
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5173
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump AccountsManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5176
    const-string/jumbo v1, ", uid="

    .line 5175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5177
    const-string/jumbo v1, " without permission "

    .line 5175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5177
    const-string/jumbo v1, "android.permission.DUMP"

    .line 5175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5178
    return-void

    .line 5180
    :cond_0
    const-string/jumbo v0, "--checkin"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 5181
    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5183
    .local v3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 5184
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "user$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 5185
    .local v6, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5186
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 5187
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 5188
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5189
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_1

    .line 5180
    .end local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "user$iterator":Ljava/util/Iterator;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v5, 0x1

    .local v5, "isCheckinRequest":Z
    goto :goto_0

    .line 5172
    .end local v5    # "isCheckinRequest":Z
    .restart local v3    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v7    # "user$iterator":Ljava/util/Iterator;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 20
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "expectActivityLaunch"    # Z

    .prologue
    .line 3414
    const/16 v4, 0x15

    invoke-static {v4}, Landroid/util/SeempLog;->record(I)I

    .line 3415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3416
    .local v15, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3417
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "editProperties: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3418
    const-string/jumbo v6, ", response "

    .line 3417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3419
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 3417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3420
    const-string/jumbo v6, ", caller\'s uid "

    .line 3417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3421
    const-string/jumbo v6, ", pid "

    .line 3417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3421
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3417
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3424
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3425
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 3426
    .local v19, "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3433
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3435
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 3436
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$17;

    .line 3437
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3438
    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v14, p2

    .line 3436
    invoke-direct/range {v4 .. v14}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$17;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3450
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3413
    return-void

    .line 3428
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v16    # "identityToken":J
    :cond_4
    const-string/jumbo v4, "uid %s cannot edit authenticator properites for account type: %s"

    .line 3427
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 3429
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 3430
    const/4 v6, 0x1

    aput-object p2, v5, v6

    .line 3427
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 3431
    .local v18, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3449
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v16    # "identityToken":J
    :catchall_0
    move-exception v4

    .line 3450
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3449
    throw v4
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 22
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "sessionBundle"    # Landroid/os/Bundle;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "appInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    .line 3009
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 3011
    .local v15, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3012
    const-string/jumbo v2, "AccountManagerService"

    .line 3013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishSession: response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3014
    const-string/jumbo v4, ", expectActivityLaunch "

    .line 3013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3015
    const-string/jumbo v4, ", caller\'s uid "

    .line 3013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3016
    const-string/jumbo v4, ", caller\'s user id "

    .line 3013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3016
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 3013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3017
    const-string/jumbo v4, ", pid "

    .line 3013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3017
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3018
    const-string/jumbo v4, ", for user id "

    .line 3013
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3012
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    :cond_0
    if-nez p1, :cond_1

    .line 3021
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3026
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 3027
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sessionBundle is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3031
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v15, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3032
    new-instance v2, Ljava/lang/SecurityException;

    .line 3034
    const-string/jumbo v3, "User %s trying to finish session for %s without cross user permission"

    .line 3033
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 3035
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v4, v8

    .line 3036
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v4, v8

    .line 3033
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3032
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3040
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3042
    const-string/jumbo v2, "uid %s cannot finish session because it\'s not system uid."

    .line 3041
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3043
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 3041
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 3044
    .local v20, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3047
    .end local v20    # "msg":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v15}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3050
    const-string/jumbo v2, "User is not allowed to add an account!"

    .line 3049
    const/16 v3, 0x64

    .line 3048
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3051
    const/16 v2, 0x64

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3052
    return-void

    .line 3055
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 3060
    .local v21, "pid":I
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v16

    .line 3061
    .local v16, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 3062
    .local v13, "decryptedBundle":Landroid/os/Bundle;
    if-nez v13, :cond_7

    .line 3066
    const-string/jumbo v2, "failed to decrypt session bundle"

    .line 3065
    const/16 v3, 0x8

    .line 3063
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3067
    return-void

    .line 3069
    :cond_7
    const-string/jumbo v2, "accountType"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3072
    .local v7, "accountType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3076
    const-string/jumbo v2, "accountType is empty"

    .line 3075
    const/4 v3, 0x7

    .line 3073
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3077
    return-void

    .line 3084
    :cond_8
    if-eqz p4, :cond_9

    .line 3085
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3089
    :cond_9
    const-string/jumbo v2, "callerUid"

    invoke-virtual {v13, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3090
    const-string/jumbo v2, "callerPid"

    move/from16 v0, v21

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3102
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3106
    const-string/jumbo v2, "User cannot modify accounts of this type (policy)."

    .line 3105
    const/16 v3, 0x65

    .line 3103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3107
    const/16 v2, 0x65

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3109
    return-void

    .line 3091
    .end local v7    # "accountType":Ljava/lang/String;
    .end local v13    # "decryptedBundle":Landroid/os/Bundle;
    .end local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :catch_0
    move-exception v17

    .line 3092
    .local v17, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3093
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Failed to decrypt session bundle!"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3098
    :cond_a
    const-string/jumbo v2, "failed to decrypt session bundle"

    .line 3097
    const/16 v3, 0x8

    .line 3095
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3099
    return-void

    .line 3112
    .end local v17    # "e":Ljava/security/GeneralSecurityException;
    .restart local v7    # "accountType":Ljava/lang/String;
    .restart local v13    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v16    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    :cond_b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v18

    .line 3114
    .local v18, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3117
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get7()Ljava/lang/String;

    move-result-object v2

    .line 3118
    const-string/jumbo v3, "accounts"

    .line 3115
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v3, v15}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3120
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$12;

    .line 3125
    const/4 v9, 0x1

    .line 3126
    const/4 v10, 0x0

    .line 3127
    const/4 v11, 0x0

    .line 3128
    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object v14, v7

    .line 3120
    invoke-direct/range {v2 .. v14}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$12;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3142
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3008
    return-void

    .line 3141
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3142
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3141
    throw v2
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3712
    .local v1, "callingUid":I
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3714
    .local v4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3715
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/accounts/Account;

    return-object v5

    .line 3717
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3719
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3723
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    .line 3720
    invoke-direct {p0, v0, v1, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 3726
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3720
    return-object v5

    .line 3725
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v5

    .line 3726
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3725
    throw v5
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3963
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3780
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 4001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4002
    .local v8, "callingUid":I
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4003
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccounts: accountType "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4004
    const-string/jumbo v5, ", response "

    .line 4003
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4005
    const-string/jumbo v5, ", features "

    .line 4003
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4005
    invoke-static/range {p3 .. p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4003
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4006
    const-string/jumbo v5, ", caller\'s uid "

    .line 4003
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4007
    const-string/jumbo v5, ", pid "

    .line 4003
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4007
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 4003
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4010
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "accountType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4011
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 4013
    .local v14, "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v8, v14, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 4015
    .local v15, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4016
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 4018
    .local v11, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/Account;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4020
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4024
    :goto_0
    return-void

    .line 4021
    :catch_0
    move-exception v10

    .line 4022
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccountManagerService"

    const-string/jumbo v3, "Cannot respond to caller do to exception."

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4026
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v11    # "result":Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v12

    .line 4028
    .local v12, "identityToken":J
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 4029
    .local v4, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    array-length v2, v0

    if-nez v2, :cond_5

    .line 4031
    :cond_4
    iget-object v2, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4032
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .local v9, "accounts":[Landroid/accounts/Account;
    :try_start_3
    monitor-exit v2

    .line 4034
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 4035
    .restart local v11    # "result":Landroid/os/Bundle;
    const-string/jumbo v2, "accounts"

    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4036
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4046
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4037
    return-void

    .line 4031
    .end local v9    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4045
    .end local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v2

    .line 4046
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4045
    throw v2

    .line 4039
    .restart local v4    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_5
    :try_start_5
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4046
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4000
    return-void
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3982
    const/4 v4, -0x1

    .line 3984
    .local v4, "packageUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3986
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3985
    const/16 v2, 0x2000

    .line 3984
    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3991
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 3987
    :catch_0
    move-exception v6

    .line 3988
    .local v6, "re":Landroid/os/RemoteException;
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t determine the packageUid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3970
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v6, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3971
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3972
    const-string/jumbo v2, " with uid="

    .line 3971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3974
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected getAccountsFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 7
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 5833
    if-eqz p2, :cond_1

    .line 5834
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5835
    .local v0, "accounts":[Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 5836
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v5

    .line 5838
    :cond_0
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    invoke-direct {p0, p1, v5, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    return-object v5

    .line 5842
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    .line 5843
    .local v4, "totalLength":I
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accounts$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5844
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    array-length v5, v0

    add-int/2addr v4, v5

    goto :goto_0

    .line 5846
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :cond_2
    if-nez v4, :cond_3

    .line 5847
    sget-object v5, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v5

    .line 5849
    :cond_3
    new-array v0, v4, [Landroid/accounts/Account;

    .line 5850
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 5851
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "accountsOfType$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    .line 5853
    .local v2, "accountsOfType":[Landroid/accounts/Account;
    array-length v5, v2

    .line 5852
    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5854
    array-length v5, v2

    add-int/2addr v4, v5

    goto :goto_1

    .line 5856
    .end local v2    # "accountsOfType":[Landroid/accounts/Account;
    :cond_4
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    return-object v5
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 5

    .prologue
    .line 3750
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3751
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    .line 3752
    .local v1, "userIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 3753
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v0

    .line 3752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3755
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    return-object v3
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 44
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyOnAuthFailure"    # Z
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2321
    const/4 v6, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2322
    const-string/jumbo v6, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2323
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAuthToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2324
    const-string/jumbo v9, ", response "

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2325
    const-string/jumbo v9, ", authTokenType "

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2326
    const-string/jumbo v9, ", notifyOnAuthFailure "

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2327
    const-string/jumbo v9, ", expectActivityLaunch "

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2328
    const-string/jumbo v9, ", caller\'s uid "

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2329
    const-string/jumbo v9, ", pid "

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2329
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2323
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "response is null"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2333
    :cond_1
    if-nez p2, :cond_2

    .line 2334
    :try_start_0
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken called with null account"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    const-string/jumbo v6, "account is null"

    const/4 v8, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 2336
    return-void

    .line 2338
    :cond_2
    if-nez p3, :cond_3

    .line 2339
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken called with null authTokenType"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    const-string/jumbo v6, "authTokenType is null"

    const/4 v8, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v6}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    return-void

    .line 2343
    :catch_0
    move-exception v35

    .line 2344
    .local v35, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to report error back to the client."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    return-void

    .line 2347
    .end local v35    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v43

    .line 2348
    .local v43, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 2352
    .local v36, "ident":J
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2353
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 2354
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v8}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v8

    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    .line 2353
    invoke-interface {v6, v8, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v33

    .line 2356
    .local v33, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2360
    if-eqz v33, :cond_5

    move-object/from16 v0, v33

    iget-object v6, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v0, v6, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    move/from16 v28, v0

    .line 2363
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    .line 2365
    .local v27, "callerUid":I
    if-nez v28, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v27

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v26

    .line 2368
    :goto_1
    const-string/jumbo v6, "androidPackageName"

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2370
    .local v10, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 2372
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v34

    .line 2374
    .local v34, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2376
    if-eqz v10, :cond_7

    move-object/from16 v0, v34

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2385
    const-string/jumbo v6, "callerUid"

    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2386
    const-string/jumbo v6, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2388
    if-eqz p4, :cond_4

    .line 2389
    const-string/jumbo v6, "notifyOnAuthFailure"

    const/4 v8, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2392
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v38

    .line 2395
    .local v38, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v11

    .line 2399
    .local v11, "callerPkgSigDigest":[B
    if-nez v28, :cond_8

    if-eqz v26, :cond_8

    .line 2400
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2401
    .local v32, "authToken":Ljava/lang/String;
    if-eqz v32, :cond_8

    .line 2402
    new-instance v41, Landroid/os/Bundle;

    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    .line 2403
    .local v41, "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    const-string/jumbo v6, "authAccount"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    const-string/jumbo v6, "accountType"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2534
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2407
    return-void

    .line 2355
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "callerPkg":Ljava/lang/String;
    .end local v11    # "callerPkgSigDigest":[B
    .end local v27    # "callerUid":I
    .end local v32    # "authToken":Ljava/lang/String;
    .end local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "identityToken":J
    .end local v41    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    .line 2356
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2355
    throw v6

    .line 2360
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v33    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_5
    const/16 v28, 0x0

    .local v28, "customTokens":Z
    goto/16 :goto_0

    .line 2365
    .end local v28    # "customTokens":Z
    .restart local v27    # "callerUid":I
    :cond_6
    const/16 v26, 0x1

    .local v26, "permissionGranted":Z
    goto/16 :goto_1

    .line 2373
    .end local v26    # "permissionGranted":Z
    .restart local v10    # "callerPkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    .line 2374
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2373
    throw v6

    .line 2378
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v6, "Uid %s is attempting to illegally masquerade as package %s!"

    .line 2377
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 2379
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v8, v12

    .line 2380
    const/4 v9, 0x1

    aput-object v10, v8, v9

    .line 2377
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    .line 2381
    .local v40, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v40

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2411
    .end local v40    # "msg":Ljava/lang/String;
    .restart local v11    # "callerPkgSigDigest":[B
    .restart local v38    # "identityToken":J
    :cond_8
    if-eqz v28, :cond_a

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2417
    :try_start_4
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v42

    .line 2423
    .local v42, "token":Ljava/lang/String;
    if-eqz v42, :cond_a

    .line 2424
    const-string/jumbo v6, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2425
    const-string/jumbo v6, "AccountManagerService"

    const-string/jumbo v8, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    :cond_9
    new-instance v41, Landroid/os/Bundle;

    invoke-direct/range {v41 .. v41}, Landroid/os/Bundle;-><init>()V

    .line 2428
    .restart local v41    # "result":Landroid/os/Bundle;
    const-string/jumbo v6, "authtoken"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string/jumbo v6, "authAccount"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string/jumbo v6, "accountType"

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2534
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2432
    return-void

    .line 2436
    .end local v41    # "result":Landroid/os/Bundle;
    .end local v42    # "token":Ljava/lang/String;
    :cond_a
    :try_start_5
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$8;

    .line 2439
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2442
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2441
    const/16 v19, 0x0

    .line 2443
    const/16 v21, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p0

    move-object v15, v7

    move-object/from16 v16, p1

    move/from16 v18, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p2

    move-object/from16 v24, p3

    move/from16 v25, p4

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v7

    .line 2436
    invoke-direct/range {v12 .. v31}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2534
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2320
    return-void

    .line 2533
    .end local v11    # "callerPkgSigDigest":[B
    :catchall_2
    move-exception v6

    .line 2534
    invoke-static/range {v38 .. v39}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2533
    throw v6
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2267
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "accountType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2268
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "authTokenType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2270
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v14

    .line 2271
    .local v14, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    .line 2272
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    .line 2273
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "can only call from system"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2275
    :cond_2
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2276
    .local v15, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 2278
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 2279
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$7;

    const/4 v8, 0x0

    .line 2280
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2281
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 2279
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2266
    return-void

    .line 2308
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 2309
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2308
    throw v2
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x2

    .line 1036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1037
    .local v0, "callingUid":I
    const-string/jumbo v1, "AccountManagerService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    const-string/jumbo v1, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAuthenticatorTypes: for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1040
    const-string/jumbo v5, " caller\'s uid "

    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    const-string/jumbo v5, ", pid "

    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1041
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1038
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    new-instance v1, Ljava/lang/SecurityException;

    .line 1047
    const-string/jumbo v4, "User %s tying to get authenticator types for %s"

    .line 1046
    new-array v5, v6, [Ljava/lang/Object;

    .line 1048
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1049
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1046
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1045
    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1052
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1054
    .local v2, "identityToken":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1057
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1054
    return-object v1

    .line 1056
    :catchall_0
    move-exception v1

    .line 1057
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1056
    throw v1
.end method

.method getCeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4545
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 4546
    const-string/jumbo v2, "accounts_ce.db"

    .line 4545
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4547
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getDeDatabaseName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4538
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 4539
    const-string/jumbo v2, "accounts_de.db"

    .line 4538
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4540
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v9, 0x2

    .line 904
    const/16 v6, 0xe

    invoke-static {v6}, Landroid/util/SeempLog;->record(I)I

    .line 905
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 906
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 907
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPassword: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 908
    const-string/jumbo v8, ", caller\'s uid "

    .line 907
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 908
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 907
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 909
    const-string/jumbo v8, ", pid "

    .line 907
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 909
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 907
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 912
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 913
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 915
    const-string/jumbo v6, "uid %s cannot get secrets for accounts of type: %s"

    .line 914
    new-array v7, v9, [Ljava/lang/Object;

    .line 916
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 917
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 914
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 920
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 922
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 923
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 925
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 923
    return-object v6

    .line 924
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 925
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 924
    throw v6
.end method

.method getPreNDatabaseName(I)Ljava/lang/String;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 4511
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    .line 4512
    .local v2, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    .line 4513
    const-string/jumbo v5, "accounts.db"

    .line 4512
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4514
    .local v0, "databaseFile":Ljava/io/File;
    if-nez p1, :cond_0

    .line 4519
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "accounts.db"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4520
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4533
    .end local v1    # "oldFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 4522
    .restart local v1    # "oldFile":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 4523
    .local v3, "userDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4524
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4525
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4528
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4529
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User dir cannot be migrated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 947
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 948
    const-string/jumbo v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPreviousName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 949
    const-string/jumbo v6, ", caller\'s uid "

    .line 948
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 948
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 950
    const-string/jumbo v6, ", pid "

    .line 948
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 950
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 948
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "account is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 953
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 954
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 956
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 957
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 959
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 957
    return-object v4

    .line 958
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    .line 959
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 958
    throw v4
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .locals 3

    .prologue
    .line 3739
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3744
    .local v1, "runningUserIds":[I
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    return-object v2

    .line 3740
    .end local v1    # "runningUserIds":[I
    :catch_0
    move-exception v0

    .line 3742
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 3934
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    .line 3935
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v10

    .line 3936
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3937
    .local v9, "accountList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    const/4 v11, 0x0

    .line 3939
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3940
    const-string/jumbo v1, "shared_accounts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3941
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3939
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3942
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3943
    const-string/jumbo v0, "name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 3944
    .local v12, "nameIndex":I
    const-string/jumbo v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 3946
    .local v13, "typeIndex":I
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3947
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3946
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3948
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 3951
    .end local v12    # "nameIndex":I
    .end local v13    # "typeIndex":I
    :cond_1
    if-eqz v11, :cond_2

    .line 3952
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3955
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Landroid/accounts/Account;

    .line 3956
    .local v8, "accountArray":[Landroid/accounts/Account;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3957
    return-object v8

    .line 3950
    .end local v8    # "accountArray":[Landroid/accounts/Account;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 3951
    if-eqz v11, :cond_3

    .line 3952
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3950
    :cond_3
    throw v0
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 747
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v7

    .line 748
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 749
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    .line 750
    .local v5, "validateAccounts":Z
    if-nez v0, :cond_0

    .line 751
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    .local v4, "preNDbFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 753
    .local v2, "deDbFile":Ljava/io/File;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, p1, v4, v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 755
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 754
    invoke-direct {p0, v6, v0}, Lcom/android/server/accounts/AccountManagerService;->initializeDebugDbSizeAndCompileSqlStatementForLogging(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 756
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 757
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 758
    const/4 v5, 0x1

    .line 761
    .end local v2    # "deDbFile":Ljava/io/File;
    .end local v4    # "preNDbFile":Ljava/io/File;
    :cond_0
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->isCeDatabaseAttached()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 762
    const-string/jumbo v6, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is unlocked - opening CE database"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v8, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 764
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    .local v3, "preNDatabaseFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 766
    .local v1, "ceDatabaseFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v3, v1}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;

    .line 767
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6, v1}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->attachCeDatabase(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    .line 769
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 771
    .end local v1    # "ceDatabaseFile":Ljava/io/File;
    .end local v3    # "preNDatabaseFile":Ljava/io/File;
    :cond_1
    if-eqz v5, :cond_2

    .line 772
    const/4 v6, 0x1

    invoke-direct {p0, v0, v6}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v7

    .line 774
    return-object v0

    .line 763
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 747
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "validateAccounts":Z
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 999
    const/16 v6, 0xf

    invoke-static {v6}, Landroid/util/SeempLog;->record(I)I

    .line 1000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1001
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1002
    const-string/jumbo v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 1003
    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 1002
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, "msg":Ljava/lang/String;
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1007
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "key is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1008
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1009
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1011
    const-string/jumbo v6, "uid %s cannot get user data for accounts of type: %s"

    .line 1010
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1012
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1013
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 1010
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1014
    .restart local v4    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1016
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1017
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " data is locked. callingUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v6, 0x0

    return-object v6

    .line 1020
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1022
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1023
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1024
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1025
    const/4 v6, 0x0

    .line 1030
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1025
    return-object v6

    .line 1027
    :cond_5
    :try_start_3
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1030
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1027
    return-object v6

    .line 1023
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1029
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    .line 1030
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1029
    throw v6
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 5638
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5639
    :cond_0
    const-string/jumbo v7, "AccountManagerService"

    const-string/jumbo v8, "grantAppPermission: called with invalid arguments"

    new-instance v9, Ljava/lang/Exception;

    invoke-direct {v9}, Ljava/lang/Exception;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5640
    return-void

    .line 5642
    :cond_1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 5643
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v8, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5644
    :try_start_0
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 5645
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5647
    :try_start_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 5648
    .local v0, "accountId":J
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-ltz v7, :cond_2

    .line 5649
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 5650
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5651
    const-string/jumbo v7, "auth_token_type"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5652
    const-string/jumbo v7, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5653
    const-string/jumbo v7, "grants"

    const-string/jumbo v9, "accounts_id"

    invoke-virtual {v3, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 5654
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5657
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5659
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5660
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get8(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 5659
    invoke-virtual {p0, v7, v9}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 5662
    const/4 v7, 0x1

    invoke-direct {p0, p1, p3, v7}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 5667
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5666
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5668
    .local v4, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v8, Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;

    invoke-direct {v8, v4, p1, p3}, Lcom/android/server/accounts/AccountManagerService$-void_grantAppPermission_android_accounts_Account_account_java_lang_String_authTokenType_int_uid_LambdaImpl0;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v7, v8}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5656
    .end local v0    # "accountId":J
    .end local v4    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .end local v5    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    .line 5657
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5656
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5643
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 5637
    .restart local v0    # "accountId":J
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    .line 3457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 3458
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Can be called only by system UID"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3460
    :cond_0
    const-string/jumbo v3, "account cannot be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    const-string/jumbo v3, "packageName cannot be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    const-string/jumbo v3, "userHandle cannot be null"

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3466
    .local v2, "userId":I
    const-string/jumbo v3, "user must be concrete"

    const v4, 0x7fffffff

    invoke-static {v2, v5, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3469
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 3470
    .local v1, "uid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3471
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 3472
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 1401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1402
    .local v6, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasFeatures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1404
    const-string/jumbo v3, ", response "

    .line 1403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1405
    const-string/jumbo v3, ", features "

    .line 1403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1405
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1406
    const-string/jumbo v3, ", caller\'s uid "

    .line 1403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1407
    const-string/jumbo v3, ", pid "

    .line 1403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1407
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1403
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1411
    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1413
    .local v7, "userId":I
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v7, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 1416
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1418
    .local v8, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1419
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1400
    return-void

    .line 1420
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    .line 1421
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1420
    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "notificationId"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 5292
    const-string/jumbo v0, "android"

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;Ljava/lang/String;I)V

    .line 5291
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 1878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1879
    .local v1, "callerUid":I
    const-string/jumbo v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1880
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalidateAuthToken: accountType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1881
    const-string/jumbo v8, ", caller\'s uid "

    .line 1880
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1882
    const-string/jumbo v8, ", pid "

    .line 1880
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1880
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "accountType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1885
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "authToken is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1886
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1887
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 1889
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1890
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1891
    :try_start_1
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1892
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1894
    :try_start_2
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateCustomTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1898
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1902
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1877
    return-void

    .line 1897
    :catchall_0
    move-exception v6

    .line 1898
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1897
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1890
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1901
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v6

    .line 1902
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1901
    throw v6
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;

    .prologue
    .line 3322
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3323
    const-string/jumbo v2, "AccountManagerService"

    .line 3324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCredentialsUpdateSuggested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3325
    const-string/jumbo v4, ", caller\'s uid "

    .line 3324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3326
    const-string/jumbo v4, ", pid "

    .line 3324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3326
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3323
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :cond_0
    if-nez p1, :cond_1

    .line 3329
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3331
    :cond_1
    if-nez p2, :cond_2

    .line 3332
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3334
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "status token is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3338
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 3340
    .local v17, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3342
    const-string/jumbo v2, "uid %s cannot stat add account session."

    .line 3341
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3343
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 3341
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 3344
    .local v16, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3347
    .end local v16    # "msg":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 3348
    .local v18, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 3350
    .local v14, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3351
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$16;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3352
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3351
    const/4 v8, 0x0

    .line 3352
    const/4 v9, 0x0

    .line 3353
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 3351
    invoke-direct/range {v2 .. v13}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$16;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3407
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3321
    return-void

    .line 3406
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3407
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3406
    throw v2
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4093
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    .line 4094
    return-void

    .line 4096
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4097
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4099
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 4100
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v0}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4103
    const/4 v8, 0x0

    invoke-direct {p0, v0, v8, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4104
    const-string/jumbo v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 4105
    const/4 v9, 0x1

    .line 4104
    invoke-virtual {p0, v0, v8, v1, v9}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4099
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4110
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4091
    return-void

    .line 4109
    :catchall_0
    move-exception v5

    .line 4110
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4109
    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5151
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .locals 2
    .param p1, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    .line 899
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 898
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .prologue
    .line 898
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1    # "desc":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    .line 513
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 514
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 518
    const-string/jumbo v1, "AccountManagerService"

    const-string/jumbo v2, "Account Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 868
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 874
    if-ge p1, v3, :cond_1

    return-void

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 875
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    .line 867
    return-void
.end method

.method onUserUnlocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 864
    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 863
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 2007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2008
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2009
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "peekAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2010
    const-string/jumbo v8, ", authTokenType "

    .line 2009
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2011
    const-string/jumbo v8, ", caller\'s uid "

    .line 2009
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2012
    const-string/jumbo v8, ", pid "

    .line 2009
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2012
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2009
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2015
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "authTokenType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2016
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2017
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2019
    const-string/jumbo v6, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    .line 2018
    new-array v7, v10, [Ljava/lang/Object;

    .line 2020
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2021
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2018
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2022
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2024
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2025
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Authtoken not available - user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " data is locked. callingUid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    return-object v9

    .line 2029
    :cond_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2031
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2032
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2034
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2032
    return-object v6

    .line 2033
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2034
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2033
    throw v6
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .prologue
    .line 5902
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5903
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 5904
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 5906
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5907
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 5908
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5910
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 5902
    .end local v0    # "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5948
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 5949
    .local v9, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.authtokens"

    .line 5950
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 5951
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    .line 5952
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 5949
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5955
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5956
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5957
    .local v11, "type":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5958
    .local v8, "authToken":Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5960
    .end local v8    # "authToken":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 5961
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5960
    throw v0

    .line 5961
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5963
    return-object v9
.end method

.method protected readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "pkgSigDigest"    # [B

    .prologue
    .line 5880
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5881
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get0(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 5880
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5928
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5929
    .local v10, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ceDb.extras"

    .line 5930
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 5931
    const-string/jumbo v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    .line 5932
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 5929
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5935
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5936
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5937
    .local v9, "tmpkey":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5938
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5940
    .end local v9    # "tmpkey":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 5941
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5940
    throw v0

    .line 5941
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5943
    return-object v10
.end method

.method protected readUserDataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 5916
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 5917
    .local v1, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 5919
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5920
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 5921
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5923
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 1
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z

    .prologue
    .line 1617
    const/16 v0, 0x11

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1622
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1618
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 1616
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 1628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1629
    .local v11, "callingUid":I
    const-string/jumbo v4, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1630
    const-string/jumbo v4, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAccount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1631
    const-string/jumbo v7, ", response "

    .line 1630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1632
    const-string/jumbo v7, ", caller\'s uid "

    .line 1630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1633
    const-string/jumbo v7, ", pid "

    .line 1630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1633
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1634
    const-string/jumbo v7, ", for user id "

    .line 1630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "response is null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1637
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "account is null"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1639
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1640
    new-instance v4, Ljava/lang/SecurityException;

    .line 1642
    const-string/jumbo v6, "User %s tying remove account for %s"

    .line 1641
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    .line 1644
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v7, v13

    .line 1641
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1640
    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1651
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v25

    .line 1652
    .local v25, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v6}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1653
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1660
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1663
    :try_start_0
    const-string/jumbo v4, "User cannot modify accounts"

    .line 1662
    const/16 v6, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1666
    :goto_0
    return-void

    .line 1655
    :cond_5
    const-string/jumbo v4, "uid %s cannot remove accounts of type: %s"

    .line 1654
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1656
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v6, v12

    .line 1657
    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v7, v6, v12

    .line 1654
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1658
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1668
    .end local v19    # "msg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1671
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 1670
    const/16 v6, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1674
    :goto_1
    return-void

    .line 1676
    :cond_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 1677
    .local v20, "identityToken":J
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v10

    .line 1678
    .local v10, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V

    .line 1679
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 1681
    :try_start_2
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1680
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "pair$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/Pair;

    .line 1682
    .local v22, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1683
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get2(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1684
    .local v18, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1679
    .end local v18    # "id":I
    .end local v22    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v23    # "pair$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .restart local v23    # "pair$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit v6

    .line 1688
    iget-object v4, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1689
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 1692
    .local v8, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    move-result-object v6

    .line 1693
    const-string/jumbo v7, "accounts"

    move-object/from16 v4, p0

    .line 1690
    invoke-direct/range {v4 .. v11}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1698
    :try_start_3
    new-instance v12, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object/from16 v13, p0

    move-object v14, v10

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move/from16 v17, p3

    invoke-direct/range {v12 .. v17}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v12}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1700
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1627
    return-void

    .line 1699
    :catchall_1
    move-exception v4

    .line 1700
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1699
    throw v4

    .line 1672
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "accountId":J
    .end local v10    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v20    # "identityToken":J
    .end local v23    # "pair$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v24

    .local v24, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 1664
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v24

    .restart local v24    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 14
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 1706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1707
    .local v7, "callingUid":I
    const-string/jumbo v0, "AccountManagerService"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    const-string/jumbo v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1709
    const-string/jumbo v3, ", caller\'s uid "

    .line 1708
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1710
    const-string/jumbo v3, ", pid "

    .line 1708
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1710
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1708
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 1713
    .local v11, "userId":I
    if-nez p1, :cond_1

    .line 1718
    const-string/jumbo v0, "AccountManagerService"

    const-string/jumbo v2, "account is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return v12

    .line 1720
    :cond_1
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v11}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1722
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    .line 1721
    new-array v2, v13, [Ljava/lang/Object;

    .line 1723
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1724
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v3, v2, v12

    .line 1721
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1725
    .local v10, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    .end local v10    # "msg":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 1728
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1729
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 1732
    .local v4, "accountId":J
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get6()Ljava/lang/String;

    move-result-object v2

    .line 1733
    const-string/jumbo v3, "accounts"

    move-object v0, p0

    .line 1730
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1737
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1739
    .local v8, "identityToken":J
    :try_start_0
    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1741
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1739
    return v0

    .line 1740
    :catchall_0
    move-exception v0

    .line 1741
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1740
    throw v0
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1796
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 1795
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    .line 3914
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    move-result v0

    return v0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 15
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 1485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1486
    .local v3, "callingUid":I
    const-string/jumbo v11, "AccountManagerService"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1487
    const-string/jumbo v11, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "renameAccount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1488
    const-string/jumbo v13, ", caller\'s uid "

    .line 1487
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1489
    const-string/jumbo v13, ", pid "

    .line 1487
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1489
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1487
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_0
    if-nez p2, :cond_1

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "account is null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1492
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 1493
    .local v10, "userId":I
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v11, v3, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1495
    const-string/jumbo v11, "uid %s cannot rename accounts of type: %s"

    .line 1494
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 1496
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 1497
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 1494
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1498
    .local v5, "msg":Ljava/lang/String;
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1500
    .end local v5    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 1502
    .local v6, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1503
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9

    .line 1504
    .local v9, "resultingAccount":Landroid/accounts/Account;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1505
    .local v8, "result":Landroid/os/Bundle;
    const-string/jumbo v11, "authAccount"

    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string/jumbo v11, "accountType"

    iget-object v12, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string/jumbo v11, "accountAccessId"

    .line 1508
    invoke-virtual {v9}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v12

    .line 1507
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    :goto_0
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1484
    return-void

    .line 1511
    :catch_0
    move-exception v4

    .line 1512
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v11, "AccountManagerService"

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1514
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "result":Landroid/os/Bundle;
    .end local v9    # "resultingAccount":Landroid/accounts/Account;
    :catchall_0
    move-exception v11

    .line 1515
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1514
    throw v11
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3891
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p3

    .line 3892
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 3893
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->openHelper:Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$DeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3894
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountIdFromSharedTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 3895
    .local v4, "sharedTableAccountId":J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 3896
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    const-string/jumbo v0, "shared_accounts"

    .line 3900
    const-string/jumbo v2, "name=? AND type=?"

    .line 3901
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v10, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v3, v11

    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v3, v11

    .line 3897
    invoke-virtual {v1, v0, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 3902
    .local v8, "r":I
    if-lez v8, :cond_0

    .line 3903
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v7

    .line 3904
    .local v7, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "shared_accounts"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 3907
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    .line 3909
    .end local v7    # "callingUid":I
    :cond_0
    if-lez v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 2040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2041
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2042
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2043
    const-string/jumbo v8, ", authTokenType "

    .line 2042
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2044
    const-string/jumbo v8, ", caller\'s uid "

    .line 2042
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2045
    const-string/jumbo v8, ", pid "

    .line 2042
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2045
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2042
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2048
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "authTokenType is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2049
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2050
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2052
    const-string/jumbo v6, "uid %s cannot set auth tokens associated with accounts of type: %s"

    .line 2051
    new-array v7, v9, [Ljava/lang/Object;

    .line 2053
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2054
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2051
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2055
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2057
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2059
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2060
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2039
    return-void

    .line 2061
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2062
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2061
    throw v6
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 2068
    const/16 v6, 0x12

    invoke-static {v6}, Landroid/util/SeempLog;->record(I)I

    .line 2069
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2070
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2071
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthToken: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2072
    const-string/jumbo v8, ", caller\'s uid "

    .line 2071
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2073
    const-string/jumbo v8, ", pid "

    .line 2071
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2073
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2071
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2076
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2077
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2079
    const-string/jumbo v6, "uid %s cannot set secrets for accounts of type: %s"

    .line 2078
    new-array v7, v9, [Ljava/lang/Object;

    .line 2080
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2081
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2078
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2082
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2084
    .end local v4    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2086
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2087
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2089
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2067
    return-void

    .line 2088
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    .line 2089
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2088
    throw v6
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 2169
    const/16 v6, 0x14

    invoke-static {v6}, Landroid/util/SeempLog;->record(I)I

    .line 2170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2171
    .local v1, "callingUid":I
    const-string/jumbo v6, "AccountManagerService"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2172
    const-string/jumbo v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUserData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2173
    const-string/jumbo v8, ", key "

    .line 2172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2174
    const-string/jumbo v8, ", caller\'s uid "

    .line 2172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2175
    const-string/jumbo v8, ", pid "

    .line 2172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2175
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_0
    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "key is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2178
    :cond_1
    if-nez p1, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2179
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2180
    .local v5, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2182
    const-string/jumbo v6, "uid %s cannot set user data for accounts of type: %s"

    .line 2181
    new-array v7, v9, [Ljava/lang/Object;

    .line 2183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 2184
    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 2181
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2185
    .local v4, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2187
    .end local v4    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2189
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2190
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v7, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2191
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_4

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2197
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2192
    return-void

    .line 2194
    :cond_4
    :try_start_3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternalLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2197
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2168
    return-void

    .line 2190
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2196
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v6

    .line 2197
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2196
    throw v6
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v6, 0x0

    .line 3587
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {v5, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3588
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Only system can check for accounts across users"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3590
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3592
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v0

    .line 3593
    .local v0, "allAccounts":[Landroid/accounts/AccountAndUser;
    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3594
    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 3595
    const/4 v4, 0x1

    .line 3600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3595
    return v4

    .line 3593
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3600
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3598
    return v6

    .line 3599
    .end local v0    # "allAccounts":[Landroid/accounts/AccountAndUser;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    .line 3600
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3599
    throw v4
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 27
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    .prologue
    .line 2807
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2808
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2809
    const-string/jumbo v4, "AccountManagerService"

    .line 2810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAddAccountSession: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2811
    const-string/jumbo v6, ", response "

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2812
    const-string/jumbo v6, ", authTokenType "

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2813
    const-string/jumbo v6, ", requiredFeatures "

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2813
    invoke-static/range {p4 .. p4}, Lcom/android/server/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2814
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2815
    const-string/jumbo v6, ", caller\'s uid "

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2816
    const-string/jumbo v6, ", pid "

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2816
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2809
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_0
    if-nez p1, :cond_1

    .line 2819
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2821
    :cond_1
    if-nez p2, :cond_2

    .line 2822
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2825
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v25

    .line 2827
    .local v25, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2829
    const-string/jumbo v4, "uid %s cannot stat add account session."

    .line 2828
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 2830
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 2828
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 2831
    .local v22, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2834
    .end local v22    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 2835
    .local v26, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2838
    :try_start_0
    const-string/jumbo v4, "User is not allowed to add an account!"

    .line 2837
    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2841
    :goto_0
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2842
    return-void

    .line 2844
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p2

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2847
    :try_start_1
    const-string/jumbo v4, "User cannot modify accounts of this type (policy)."

    .line 2846
    const/16 v5, 0x65

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2850
    :goto_1
    const/16 v4, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 2852
    return-void

    .line 2854
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    .line 2855
    .local v23, "pid":I
    if-nez p6, :cond_6

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2856
    .local v17, "options":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "callerUid"

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2857
    const-string/jumbo v4, "callerPid"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2860
    const-string/jumbo v4, "androidPackageName"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2861
    .local v19, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 2862
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 2861
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v14

    .line 2864
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 2866
    .local v20, "identityToken":J
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2867
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get8()Ljava/lang/String;

    move-result-object v4

    .line 2868
    const-string/jumbo v5, "accounts"

    .line 2867
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v7, v4, v5, v1}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2869
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$11;

    .line 2874
    const/4 v11, 0x0

    .line 2875
    const/4 v12, 0x0

    .line 2876
    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p2

    .line 2869
    invoke-direct/range {v4 .. v18}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2893
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2806
    return-void

    .line 2855
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v14    # "isPasswordForwardingAllowed":Z
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "callerPkg":Ljava/lang/String;
    .end local v20    # "identityToken":J
    :cond_6
    move-object/from16 v17, p6

    .restart local v17    # "options":Landroid/os/Bundle;
    goto :goto_2

    .line 2892
    .restart local v14    # "isPasswordForwardingAllowed":Z
    .restart local v19    # "callerPkg":Ljava/lang/String;
    .restart local v20    # "identityToken":J
    :catchall_0
    move-exception v4

    .line 2893
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2892
    throw v4

    .line 2848
    .end local v14    # "isPasswordForwardingAllowed":Z
    .end local v17    # "options":Landroid/os/Bundle;
    .end local v19    # "callerPkg":Ljava/lang/String;
    .end local v20    # "identityToken":J
    .end local v23    # "pid":I
    :catch_0
    move-exception v24

    .local v24, "re":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 2839
    .end local v24    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v24

    .restart local v24    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 24
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 3252
    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3253
    const-string/jumbo v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3254
    const-string/jumbo v4, "AccountManagerService"

    .line 3255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startUpdateCredentialsSession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3256
    const-string/jumbo v6, ", authTokenType "

    .line 3255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3256
    const-string/jumbo v6, ", expectActivityLaunch "

    .line 3255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3257
    const-string/jumbo v6, ", caller\'s uid "

    .line 3255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3258
    const-string/jumbo v6, ", pid "

    .line 3255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3258
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3254
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    :cond_0
    if-nez p1, :cond_1

    .line 3261
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3263
    :cond_1
    if-nez p2, :cond_2

    .line 3264
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "account is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3267
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 3269
    .local v22, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3271
    const-string/jumbo v4, "uid %s cannot start update credentials session."

    .line 3270
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 3272
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 3270
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 3273
    .local v19, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3276
    .end local v19    # "msg":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    .line 3279
    .local v23, "userId":I
    const-string/jumbo v4, "androidPackageName"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3280
    .local v18, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 3281
    const-string/jumbo v5, "android.permission.GET_PASSWORD"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3280
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v14

    .line 3283
    .local v14, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 3285
    .local v20, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 3286
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$15;

    .line 3289
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3291
    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3292
    const/4 v12, 0x0

    .line 3293
    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v10, p4

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p5

    .line 3286
    invoke-direct/range {v4 .. v17}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService$15;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3313
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3251
    return-void

    .line 3312
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    .line 3313
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3312
    throw v4
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5617
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 5619
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 5620
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 5623
    :cond_0
    if-eqz p4, :cond_1

    .line 5624
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 5616
    :goto_0
    return-void

    .line 5626
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    .prologue
    .line 3209
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3210
    const-string/jumbo v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3211
    const-string/jumbo v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3212
    const-string/jumbo v4, ", response "

    .line 3211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3213
    const-string/jumbo v4, ", authTokenType "

    .line 3211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3214
    const-string/jumbo v4, ", expectActivityLaunch "

    .line 3211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3215
    const-string/jumbo v4, ", caller\'s uid "

    .line 3211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3216
    const-string/jumbo v4, ", pid "

    .line 3211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3216
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3219
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3220
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 3221
    .local v18, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3223
    .local v16, "identityToken":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 3224
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$14;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3225
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x1

    .line 3226
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p4

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 3224
    invoke-direct/range {v2 .. v15}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$14;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3241
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3208
    return-void

    .line 3240
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    .line 3241
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3240
    throw v2
.end method

.method public validateAccounts(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 539
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 535
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 5888
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 5889
    .local v0, "authTokensForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 5890
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 5891
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get1(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5893
    :cond_0
    if-nez p5, :cond_1

    .line 5894
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5887
    :goto_0
    return-void

    .line 5896
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 5862
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 5863
    .local v0, "userDataForAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 5864
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 5865
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-get7(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5867
    :cond_0
    if-nez p5, :cond_1

    .line 5868
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5861
    :goto_0
    return-void

    .line 5870
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
