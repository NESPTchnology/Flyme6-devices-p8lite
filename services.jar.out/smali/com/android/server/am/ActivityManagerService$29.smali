.class Lcom/android/server/am/ActivityManagerService$29;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;ZZIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$infoUid:I

.field final synthetic val$isolated:Z

.field final synthetic val$processName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$processName"    # Ljava/lang/String;
    .param p3, "val$infoUid"    # I
    .param p4, "val$isolated"    # Z
    .param p5, "val$uid"    # I

    .prologue
    .line 17346
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$processName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$29;->val$infoUid:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$29;->val$isolated:Z

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$29;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 17349
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$processName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$infoUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 17350
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$29;->val$isolated:Z

    if-eqz v0, :cond_0

    .line 17351
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$29;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$29;->val$uid:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$29;->val$infoUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 17348
    :cond_0
    return-void
.end method
