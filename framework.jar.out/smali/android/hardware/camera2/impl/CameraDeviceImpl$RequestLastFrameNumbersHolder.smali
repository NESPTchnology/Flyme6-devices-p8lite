.class Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestLastFrameNumbersHolder"
.end annotation


# instance fields
.field private final mLastRegularFrameNumber:J

.field private final mLastReprocessFrameNumber:J

.field private final mRequestId:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "lastRegularFrameNumber"    # J

    .prologue
    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1369
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1370
    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1367
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .locals 12
    .param p2, "requestInfo"    # Landroid/hardware/camera2/utils/SubmitInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1327
    .local p1, "requestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    const-wide/16 v4, -0x1

    .line 1329
    .local v4, "lastRegularFrameNumber":J
    const-wide/16 v6, -0x1

    .line 1330
    .local v6, "lastReprocessFrameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v0

    .line 1332
    .local v0, "frameNumber":J
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 1333
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 1334
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lastFrameNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1335
    const-string/jumbo v10, " should be at least "

    .line 1334
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1334
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1335
    const-string/jumbo v10, " for the number of "

    .line 1334
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1336
    const-string/jumbo v10, " requests in the list: "

    .line 1334
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1334
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1333
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1340
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1341
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    .line 1342
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1343
    const-wide/16 v8, -0x1

    .line 1342
    cmp-long v8, v6, v8

    if-nez v8, :cond_3

    .line 1344
    move-wide v6, v0

    .line 1350
    :cond_1
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 1351
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_4

    .line 1358
    .end local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    iput-wide v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    .line 1359
    iput-wide v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    .line 1360
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v8

    iput v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    .line 1327
    return-void

    .line 1345
    .restart local v3    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1346
    const-wide/16 v8, -0x1

    .line 1345
    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    .line 1347
    move-wide v4, v0

    goto :goto_1

    .line 1355
    :cond_4
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    .line 1340
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastFrameNumber()J
    .locals 4

    .prologue
    .line 1393
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRegularFrameNumber()J
    .locals 2

    .prologue
    .line 1378
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    return-wide v0
.end method

.method public getLastReprocessFrameNumber()J
    .locals 2

    .prologue
    .line 1386
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->mRequestId:I

    return v0
.end method
