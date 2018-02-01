.class Lcom/android/server/policy/PhoneWindowManager$18;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->triggerVirtualKeypress(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$im:Landroid/hardware/input/InputManager;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/hardware/input/InputManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$keyCode"    # I
    .param p3, "val$im"    # Landroid/hardware/input/InputManager;

    .prologue
    .line 2011
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$18;->val$keyCode:I

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->val$im:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 2014
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2016
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    .line 2017
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager$18;->val$keyCode:I

    const/4 v10, -0x1

    .line 2018
    const/16 v12, 0x8

    const v13, 0x8000001

    move-wide v4, v2

    move v8, v6

    move v9, v6

    move v11, v6

    .line 2016
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2019
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 2021
    .local v0, "upEvent":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$18;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v1, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2022
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$18;->val$im:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v0, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2013
    return-void
.end method
