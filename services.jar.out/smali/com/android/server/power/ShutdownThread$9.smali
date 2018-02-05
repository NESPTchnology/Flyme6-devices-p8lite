.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/16 v1, 0x64

    .line 762
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 764
    int-to-double v2, p1

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int p1, v2

    .line 765
    add-int/lit8 p1, p1, 0x14

    .line 766
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    .line 767
    const v2, 0x104013b

    .line 766
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 768
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 761
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    if-ne p1, v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    .line 771
    const v2, 0x104013c

    .line 770
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 772
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
