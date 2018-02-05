.class final Lcom/android/server/power/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    if-gez p2, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 203
    const v2, 0x107005e

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "actions":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 206
    aget-object v1, v0, p2

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-set0(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-set1(Z)Z

    .line 209
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-wrap0(Landroid/content/Context;)V

    .line 198
    return-void
.end method
