.class Lcom/android/server/policy/KeyHandler$1;
.super Landroid/database/ContentObserver;
.source "KeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/KeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyHandler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/KeyHandler;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/policy/KeyHandler$1;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/policy/KeyHandler$1;->this$0:Lcom/android/server/policy/KeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/KeyHandler;->-wrap2(Lcom/android/server/policy/KeyHandler;)V

    .line 160
    return-void
.end method
