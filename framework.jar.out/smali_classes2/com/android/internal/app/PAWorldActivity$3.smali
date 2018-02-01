.class Lcom/android/internal/app/PAWorldActivity$3;
.super Ljava/lang/Object;
.source "PAWorldActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PAWorldActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PAWorldActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PAWorldActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PAWorldActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/app/PAWorldActivity$3;->this$0:Lcom/android/internal/app/PAWorldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.BeanBag"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 165
    const/high16 v3, 0x10000000

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, Lcom/android/internal/app/PAWorldActivity$3;->this$0:Lcom/android/internal/app/PAWorldActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 167
    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 166
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/PAWorldActivity$3;->this$0:Lcom/android/internal/app/PAWorldActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 172
    const/4 v2, 0x1

    return v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "PAWorldActivity"

    const-string/jumbo v3, "Couldn\'t catch a break."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
