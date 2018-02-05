.class public Lslim/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final MSG_INJECT_KEY_DOWN:I = 0x42a

.field private static final MSG_INJECT_KEY_UP:I = 0x42b

.field private static mContext:Landroid/content/Context;

.field private static sTorchEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lslim/action/Action;->sTorchEnabled:Z

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V
    .locals 10
    .param p0, "keycode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 370
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p0

    move v8, v6

    .line 371
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 373
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 374
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 375
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 369
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method public static isActionKeyEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string/jumbo v0, "**home**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const-string/jumbo v0, "**back**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 330
    if-nez v0, :cond_0

    .line 332
    const-string/jumbo v0, "**search**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 330
    if-nez v0, :cond_0

    .line 333
    const-string/jumbo v0, "**menu**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 330
    if-nez v0, :cond_0

    .line 334
    const-string/jumbo v0, "**null**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 330
    if-eqz v0, :cond_1

    .line 335
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 337
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lslim/action/Action;->processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 63
    return-void
.end method

.method public static processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z
    .param p3, "collapseShade"    # Z

    .prologue
    .line 70
    sput-object p0, Lslim/action/Action;->mContext:Landroid/content/Context;

    .line 72
    if-eqz p1, :cond_0

    const-string/jumbo v25, "**null**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 73
    :cond_0
    return-void

    .line 76
    :cond_1
    const/16 v17, 0x0

    .line 79
    .local v17, "isKeyguardShowing":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 85
    .end local v17    # "isKeyguardShowing":Z
    :goto_0
    const-string/jumbo v25, "statusbar"

    invoke-static/range {v25 .. v25}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    .line 84
    invoke-static/range {v25 .. v25}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 86
    .local v6, "barService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v6, :cond_2

    .line 87
    return-void

    .line 80
    .end local v6    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v17    # "isKeyguardShowing":Z
    :catch_0
    move-exception v12

    .line 81
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v25, "Action"

    const-string/jumbo v26, "Error getting window manager service"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v17    # "isKeyguardShowing":Z
    .restart local v6    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    invoke-static/range {p0 .. p0}, Lslim/action/SlimActionsManager;->getInstance(Landroid/content/Context;)Lslim/action/SlimActionsManager;

    move-result-object v4

    .line 93
    .local v4, "actionsManager":Lslim/action/SlimActionsManager;
    const-string/jumbo v25, "window"

    invoke-static/range {v25 .. v25}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    .line 92
    invoke-static/range {v25 .. v25}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 94
    .local v24, "windowManagerService":Landroid/view/IWindowManager;
    if-nez v24, :cond_3

    .line 95
    return-void

    .line 98
    :cond_3
    const/16 v16, 0x0

    .line 100
    .local v16, "isKeyguardSecure":Z
    :try_start_1
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    .line 104
    .end local v16    # "isKeyguardSecure":Z
    :goto_1
    const-class v25, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 107
    .local v19, "pm":Landroid/os/PowerManager;
    const-string/jumbo v25, "**home**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 108
    const/16 v25, 0x3

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 109
    return-void

    .line 101
    .end local v19    # "pm":Landroid/os/PowerManager;
    .restart local v16    # "isKeyguardSecure":Z
    :catch_1
    move-exception v12

    .restart local v12    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 110
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v16    # "isKeyguardSecure":Z
    .restart local v19    # "pm":Landroid/os/PowerManager;
    :cond_4
    const-string/jumbo v25, "**back**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 111
    const/16 v25, 0x4

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 112
    return-void

    .line 113
    :cond_5
    const-string/jumbo v25, "**search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 114
    const/16 v25, 0x54

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 115
    return-void

    .line 116
    :cond_6
    const-string/jumbo v25, "**notifications**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 117
    if-eqz v17, :cond_7

    if-eqz v16, :cond_7

    .line 118
    return-void

    .line 121
    :cond_7
    :try_start_2
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    :goto_2
    return-void

    .line 122
    :catch_2
    move-exception v12

    .restart local v12    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 125
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string/jumbo v25, "**settings_panel**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 126
    if-eqz v17, :cond_9

    if-eqz v16, :cond_9

    .line 127
    return-void

    .line 130
    :cond_9
    const/16 v25, 0x0

    :try_start_3
    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 68
    :goto_3
    return-void

    .line 131
    :catch_3
    move-exception v12

    .restart local v12    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 132
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_a
    const-string/jumbo v25, "**nowontap**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 133
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lslim/action/SlimActionsManager;->startAssist(Landroid/os/Bundle;)V

    goto :goto_3

    .line 134
    :cond_b
    const-string/jumbo v25, "**torch**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 137
    :try_start_4
    const-string/jumbo v25, "camera"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 136
    check-cast v8, Landroid/hardware/camera2/CameraManager;

    .line 138
    .local v8, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v27

    const/16 v25, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v26, v25

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget-object v7, v27, v26

    .line 140
    .local v7, "cameraId":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    .line 141
    .local v9, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    .line 142
    .local v14, "f":Ljava/lang/Boolean;
    sget-object v25, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 143
    .local v18, "orient":I
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_f

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 144
    sget-boolean v25, Lslim/action/Action;->sTorchEnabled:Z

    if-eqz v25, :cond_d

    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    invoke-virtual {v8, v7, v0}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 145
    sget-boolean v25, Lslim/action/Action;->sTorchEnabled:Z

    if-eqz v25, :cond_e

    const/16 v25, 0x0

    :goto_6
    sput-boolean v25, Lslim/action/Action;->sTorchEnabled:Z
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_6

    .line 151
    .end local v7    # "cameraId":Ljava/lang/String;
    .end local v8    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v9    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v14    # "f":Ljava/lang/Boolean;
    .end local v18    # "orient":I
    :cond_c
    :goto_7
    return-void

    .line 144
    .restart local v7    # "cameraId":Ljava/lang/String;
    .restart local v8    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .restart local v9    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v14    # "f":Ljava/lang/Boolean;
    .restart local v18    # "orient":I
    :cond_d
    const/16 v25, 0x1

    goto :goto_5

    .line 145
    :cond_e
    const/16 v25, 0x1

    goto :goto_6

    .line 138
    :cond_f
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    goto :goto_4

    .line 152
    .end local v7    # "cameraId":Ljava/lang/String;
    .end local v8    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v9    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v14    # "f":Ljava/lang/Boolean;
    .end local v18    # "orient":I
    :cond_10
    const-string/jumbo v25, "**power_menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 153
    invoke-virtual {v4}, Lslim/action/SlimActionsManager;->toggleGlobalMenu()V

    .line 154
    return-void

    .line 155
    :cond_11
    const-string/jumbo v25, "**menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 156
    const/16 v25, 0x52

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 157
    return-void

    .line 158
    :cond_12
    const-string/jumbo v25, "**ime_nav_left**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 159
    const/16 v25, 0x15

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 160
    return-void

    .line 161
    :cond_13
    const-string/jumbo v25, "**ime_nav_right**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 162
    const/16 v25, 0x16

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 163
    return-void

    .line 164
    :cond_14
    const-string/jumbo v25, "**ime_nav_up**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 165
    const/16 v25, 0x13

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 166
    return-void

    .line 167
    :cond_15
    const-string/jumbo v25, "**ime_nav_down**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 168
    const/16 v25, 0x14

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Lslim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 169
    return-void

    .line 170
    :cond_16
    const-string/jumbo v25, "**power**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 172
    return-void

    .line 173
    :cond_17
    const-string/jumbo v25, "**ime**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 174
    if-eqz v17, :cond_18

    .line 175
    return-void

    .line 178
    :cond_18
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v26, Landroid/os/UserHandle;

    const/16 v27, -0x2

    invoke-direct/range {v26 .. v27}, Landroid/os/UserHandle;-><init>(I)V

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 180
    return-void

    .line 181
    :cond_19
    const-string/jumbo v25, "**kill**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 182
    if-eqz v17, :cond_1a

    .line 183
    return-void

    .line 185
    :cond_1a
    invoke-virtual {v4}, Lslim/action/SlimActionsManager;->toggleKillApp()V

    .line 186
    return-void

    .line 187
    :cond_1b
    const-string/jumbo v25, "**lastapp**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 188
    if-eqz v17, :cond_1c

    .line 189
    return-void

    .line 191
    :cond_1c
    invoke-virtual {v4}, Lslim/action/SlimActionsManager;->toggleLastApp()V

    .line 192
    return-void

    .line 193
    :cond_1d
    const-string/jumbo v25, "**screenshot**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 194
    invoke-virtual {v4}, Lslim/action/SlimActionsManager;->toggleScreenshot()V

    .line 195
    return-void

    .line 196
    :cond_1e
    const-string/jumbo v25, "**split_screen**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 197
    invoke-virtual {v4}, Lslim/action/SlimActionsManager;->toggleSplitScreen()V

    .line 198
    return-void

    .line 199
    :cond_1f
    const-string/jumbo v25, "**recents**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21

    .line 200
    if-eqz v17, :cond_20

    .line 201
    return-void

    .line 203
    :cond_20
    invoke-virtual {v4}, Lslim/action/SlimActionsManager;->toggleRecentApps()V

    .line 204
    return-void

    .line 205
    :cond_21
    const-string/jumbo v25, "**voice_search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23

    .line 207
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.SEARCH_LONG_PRESS"

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 213
    :try_start_5
    const-string/jumbo v25, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/SearchManager;

    .line 214
    .local v21, "searchManager":Landroid/app/SearchManager;
    if-eqz v21, :cond_22

    .line 215
    invoke-virtual/range {v21 .. v21}, Landroid/app/SearchManager;->stopSearch()V

    .line 217
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v15, v4, v1, v2}, Lslim/action/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lslim/action/SlimActionsManager;ZLandroid/os/PowerManager;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 221
    .end local v21    # "searchManager":Landroid/app/SearchManager;
    :goto_8
    return-void

    .line 218
    :catch_4
    move-exception v10

    .line 219
    .local v10, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v25, "Action:"

    const-string/jumbo v26, "No activity to handle assist long press action."

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 222
    .end local v10    # "e":Landroid/content/ActivityNotFoundException;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_23
    const-string/jumbo v25, "**ring_vib**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_26

    .line 223
    const-string/jumbo v25, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 224
    .local v5, "am":Landroid/media/AudioManager;
    if-eqz v5, :cond_24

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v25

    if-eqz v25, :cond_24

    .line 225
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_25

    .line 226
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 227
    const-string/jumbo v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Vibrator;

    .line 228
    .local v23, "vib":Landroid/os/Vibrator;
    if-eqz v23, :cond_24

    .line 229
    const-wide/16 v26, 0x32

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 241
    .end local v23    # "vib":Landroid/os/Vibrator;
    :cond_24
    :goto_9
    return-void

    .line 232
    :cond_25
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 233
    new-instance v22, Landroid/media/ToneGenerator;

    .line 234
    const/16 v25, 0x5

    .line 235
    const/16 v26, 0x55

    .line 233
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 236
    .local v22, "tg":Landroid/media/ToneGenerator;
    if-eqz v22, :cond_24

    .line 237
    const/16 v25, 0x18

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_9

    .line 242
    .end local v5    # "am":Landroid/media/AudioManager;
    .end local v22    # "tg":Landroid/media/ToneGenerator;
    :cond_26
    const-string/jumbo v25, "**ring_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_29

    .line 243
    const-string/jumbo v25, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 244
    .restart local v5    # "am":Landroid/media/AudioManager;
    if-eqz v5, :cond_27

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v25

    if-eqz v25, :cond_27

    .line 245
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v25

    if-eqz v25, :cond_28

    .line 246
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 257
    :cond_27
    :goto_a
    return-void

    .line 248
    :cond_28
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 249
    new-instance v22, Landroid/media/ToneGenerator;

    .line 250
    const/16 v25, 0x5

    .line 251
    const/16 v26, 0x55

    .line 249
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 252
    .restart local v22    # "tg":Landroid/media/ToneGenerator;
    if-eqz v22, :cond_27

    .line 253
    const/16 v25, 0x18

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_a

    .line 258
    .end local v5    # "am":Landroid/media/AudioManager;
    .end local v22    # "tg":Landroid/media/ToneGenerator;
    :cond_29
    const-string/jumbo v25, "**ring_vib_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 259
    const-string/jumbo v25, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 260
    .restart local v5    # "am":Landroid/media/AudioManager;
    if-eqz v5, :cond_2a

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 261
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2b

    .line 262
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 263
    const-string/jumbo v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Vibrator;

    .line 264
    .restart local v23    # "vib":Landroid/os/Vibrator;
    if-eqz v23, :cond_2a

    .line 265
    const-wide/16 v26, 0x32

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 279
    .end local v23    # "vib":Landroid/os/Vibrator;
    :cond_2a
    :goto_b
    return-void

    .line 267
    :cond_2b
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2c

    .line 268
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_b

    .line 270
    :cond_2c
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 271
    new-instance v22, Landroid/media/ToneGenerator;

    .line 272
    const/16 v25, 0x5

    .line 273
    const/16 v26, 0x55

    .line 271
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 274
    .restart local v22    # "tg":Landroid/media/ToneGenerator;
    if-eqz v22, :cond_2a

    .line 275
    const/16 v25, 0x18

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_b

    .line 280
    .end local v5    # "am":Landroid/media/AudioManager;
    .end local v22    # "tg":Landroid/media/ToneGenerator;
    :cond_2d
    const-string/jumbo v25, "**camera**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2f

    .line 284
    if-eqz v16, :cond_2e

    .line 285
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v25, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    .restart local v15    # "intent":Landroid/content/Intent;
    :goto_c
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v15, v4, v1, v2}, Lslim/action/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lslim/action/SlimActionsManager;ZLandroid/os/PowerManager;)V

    .line 290
    return-void

    .line 287
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_2e
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v25, "android.media.action.STILL_IMAGE_CAMERA"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v15    # "intent":Landroid/content/Intent;
    goto :goto_c

    .line 291
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_2f
    const-string/jumbo v25, "**media_previous**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_30

    .line 292
    const/16 v25, 0x58

    move/from16 v0, v25

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lslim/action/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 293
    return-void

    .line 294
    :cond_30
    const-string/jumbo v25, "**media_next**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_31

    .line 295
    const/16 v25, 0x57

    move/from16 v0, v25

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lslim/action/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 296
    return-void

    .line 297
    :cond_31
    const-string/jumbo v25, "**media_play_pause**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_32

    .line 298
    const/16 v25, 0x55

    move/from16 v0, v25

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lslim/action/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 299
    return-void

    .line 300
    :cond_32
    const-string/jumbo v25, "**wake_device**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_34

    .line 302
    const-string/jumbo v25, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    .line 303
    .local v20, "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v25

    if-nez v25, :cond_33

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 306
    :cond_33
    return-void

    .line 307
    .end local v20    # "powerManager":Landroid/os/PowerManager;
    :cond_34
    const-string/jumbo v25, "**doze_pulse**"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_36

    .line 309
    const-string/jumbo v25, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    .line 310
    .restart local v20    # "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v25

    if-nez v25, :cond_35

    .line 311
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "com.android.systemui.doze.pulse"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    :cond_35
    return-void

    .line 316
    .end local v20    # "powerManager":Landroid/os/PowerManager;
    :cond_36
    const/4 v15, 0x0

    .line 318
    .local v15, "intent":Landroid/content/Intent;
    const/16 v25, 0x0

    :try_start_6
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v15

    .line 323
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v15, v4, v1, v2}, Lslim/action/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lslim/action/SlimActionsManager;ZLandroid/os/PowerManager;)V

    .line 324
    return-void

    .line 319
    .local v15, "intent":Landroid/content/Intent;
    :catch_5
    move-exception v13

    .line 320
    .local v13, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v25, "Action:"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "URISyntaxException: ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 149
    .end local v13    # "e":Ljava/net/URISyntaxException;
    .end local v15    # "intent":Landroid/content/Intent;
    :catch_6
    move-exception v11

    .local v11, "e":Landroid/hardware/camera2/CameraAccessException;
    goto/16 :goto_7
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;Lslim/action/SlimActionsManager;ZLandroid/os/PowerManager;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "actionsManager"    # Lslim/action/SlimActionsManager;
    .param p3, "isKeyguardShowing"    # Z
    .param p4, "pm"    # Landroid/os/PowerManager;

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 352
    invoke-virtual {p2, p1}, Lslim/action/SlimActionsManager;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V

    .line 341
    :goto_1
    return-void

    .line 347
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .line 356
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_2
    const/high16 v1, 0x34000000

    .line 360
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 364
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Action"

    const-string/jumbo v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static triggerVirtualKeypress(IZ)V
    .locals 28
    .param p0, "keyCode"    # I
    .param p1, "longpress"    # Z

    .prologue
    .line 380
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 381
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 382
    .local v4, "now":J
    const/4 v14, 0x0

    .line 383
    .local v14, "downflags":I
    const/16 v26, 0x0

    .line 384
    .local v26, "upflags":I
    const/16 v6, 0x15

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 385
    const/16 v6, 0x16

    move/from16 v0, p0

    if-ne v0, v6, :cond_2

    .line 388
    :cond_0
    const/16 v26, 0x6

    const/4 v14, 0x6

    .line 392
    :goto_0
    if-eqz p1, :cond_1

    .line 393
    or-int/lit16 v14, v14, 0x80

    .line 396
    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    .line 397
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 399
    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p0

    .line 396
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 400
    .local v3, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 402
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    .line 403
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    .line 405
    const/16 v27, 0x101

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move/from16 v21, p0

    .line 402
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 406
    .local v15, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v15, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 379
    return-void

    .line 386
    .end local v3    # "downEvent":Landroid/view/KeyEvent;
    .end local v15    # "upEvent":Landroid/view/KeyEvent;
    :cond_2
    const/16 v6, 0x13

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 387
    const/16 v6, 0x14

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 390
    const/16 v26, 0x8

    const/16 v14, 0x8

    goto :goto_0
.end method
