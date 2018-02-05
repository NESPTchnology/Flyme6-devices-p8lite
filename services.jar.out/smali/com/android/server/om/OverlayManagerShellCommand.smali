.class final Lcom/android/server/om/OverlayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "OverlayManagerShellCommand.java"


# instance fields
.field private final mInterface:Landroid/content/om/IOverlayManager;


# direct methods
.method constructor <init>(Landroid/content/om/IOverlayManager;)V
    .locals 0
    .param p1, "iom"    # Landroid/content/om/IOverlayManager;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    .line 43
    return-void
.end method

.method private runDisableAll()I
    .locals 21

    .prologue
    .line 185
    const/4 v15, 0x0

    .line 187
    .local v15, "userId":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    .local v8, "opt":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 188
    const-string/jumbo v17, "--user"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v15

    goto :goto_0

    .line 193
    :cond_0
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Error: Unknown option: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    const/16 v17, 0x1

    return v17

    .line 199
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v14

    .line 200
    .local v14, "targetsAndOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    const/4 v4, 0x0

    .line 201
    .local v4, "iterator":I
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v9

    .line 202
    .local v9, "overlaySize":I
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "targetEntry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 203
    .local v11, "targetEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    const/4 v5, 0x0

    .line 204
    .local v5, "iterator_nested":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    .line 205
    .local v13, "targetSize_nested":I
    add-int/lit8 v4, v4, 0x1

    .line 206
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "oi$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/om/OverlayInfo;

    .line 207
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-ge v5, v13, :cond_4

    .line 208
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZIZ)Z

    move-result v16

    .line 210
    .local v16, "worked":Z
    if-nez v16, :cond_3

    .line 211
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to disable "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    .end local v16    # "worked":Z
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 215
    :cond_4
    if-ne v4, v9, :cond_5

    .line 216
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZIZ)Z

    move-result v16

    .line 218
    .restart local v16    # "worked":Z
    if-nez v16, :cond_3

    .line 219
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to disable "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 235
    .end local v4    # "iterator":I
    .end local v5    # "iterator_nested":I
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    .end local v7    # "oi$iterator":Ljava/util/Iterator;
    .end local v9    # "overlaySize":I
    .end local v11    # "targetEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v12    # "targetEntry$iterator":Ljava/util/Iterator;
    .end local v13    # "targetSize_nested":I
    .end local v14    # "targetsAndOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v16    # "worked":Z
    :catch_0
    move-exception v10

    .line 236
    .local v10, "re":Landroid/os/RemoteException;
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v18, "Error: A fatal exception has occurred."

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_3
    const/16 v17, 0x0

    return v17

    .line 223
    .restart local v4    # "iterator":I
    .restart local v5    # "iterator_nested":I
    .restart local v6    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v7    # "oi$iterator":Ljava/util/Iterator;
    .restart local v9    # "overlaySize":I
    .restart local v11    # "targetEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v12    # "targetEntry$iterator":Ljava/util/Iterator;
    .restart local v13    # "targetSize_nested":I
    .restart local v14    # "targetsAndOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v15, v3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZIZ)Z

    move-result v16

    .line 225
    .restart local v16    # "worked":Z
    if-nez v16, :cond_3

    .line 226
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to disable "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 234
    .end local v5    # "iterator_nested":I
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    .end local v7    # "oi$iterator":Ljava/util/Iterator;
    .end local v11    # "targetEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v13    # "targetSize_nested":I
    .end local v16    # "worked":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/content/om/IOverlayManager;->refresh(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private runEnableDisable(Z)I
    .locals 13
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 141
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 143
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v8, 0x0

    .line 145
    .local v8, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 146
    const-string/jumbo v9, "--user"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 151
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error: Unknown option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    return v11

    .line 156
    :cond_1
    const/4 v0, 0x0

    .line 157
    .local v0, "argc":I
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v4, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 160
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v10, "Error: no packages specified"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    return v11

    .line 163
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 164
    add-int/lit8 v0, v0, 0x1

    .line 165
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 168
    :cond_3
    if-le v0, v11, :cond_7

    .line 169
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    .local v5, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v9, v5, p1, v8, v10}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZIZ)Z

    move-result v7

    .line 171
    .local v7, "ret":Z
    if-nez v7, :cond_4

    .line 172
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error: Failed to "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz p1, :cond_5

    const-string/jumbo v9, "enable "

    :goto_3
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v9, "disable "

    goto :goto_3

    .line 175
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "ret":Z
    :cond_6
    return v10

    .line 176
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :cond_7
    if-ne v0, v11, :cond_9

    .line 177
    iget-object v12, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v12, v9, p1, v8, v10}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZIZ)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v10

    :goto_4
    return v9

    :cond_8
    move v9, v11

    goto :goto_4

    .line 179
    :cond_9
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v10, "Error: A fatal exception has occurred."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    return v11
.end method

.method private runList()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 107
    .local v5, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 109
    .local v1, "err":Ljava/io/PrintWriter;
    const/4 v9, 0x0

    .line 111
    .local v9, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 112
    const-string/jumbo v10, "--user"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 117
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error: Unknown option: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    return v14

    .line 122
    :cond_1
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v10, v9}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v0

    .line 123
    .local v0, "allOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "targetPackageName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 124
    .local v7, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "oi$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 126
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    const-string/jumbo v6, "---"

    .line 127
    .local v6, "status":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isApproved()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 128
    const-string/jumbo v6, "[ ]"

    .line 130
    :cond_2
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 131
    const-string/jumbo v6, "[x]"

    .line 133
    :cond_3
    const-string/jumbo v10, "%s %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v13

    iget-object v12, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 135
    .end local v2    # "oi":Landroid/content/om/OverlayInfo;
    .end local v6    # "status":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 137
    .end local v3    # "oi$iterator":Ljava/util/Iterator;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    :cond_5
    return v13
.end method

.method private runSetPriority()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 243
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 245
    .local v0, "err":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    .line 247
    .local v4, "userId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 248
    const-string/jumbo v7, "--user"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 253
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error: Unknown option: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    return v6

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "newParentPackageName":Ljava/lang/String;
    const-string/jumbo v7, "highest"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v7, v3, v4}, Landroid/content/om/IOverlayManager;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    return v5

    :cond_2
    move v5, v6

    goto :goto_1

    .line 263
    :cond_3
    const-string/jumbo v7, "lowest"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 264
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v7, v3, v4}, Landroid/content/om/IOverlayManager;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    return v5

    :cond_4
    move v5, v6

    goto :goto_2

    .line 266
    :cond_5
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerShellCommand;->mInterface:Landroid/content/om/IOverlayManager;

    invoke-interface {v7, v3, v1, v4}, Landroid/content/om/IOverlayManager;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    return v5

    :cond_6
    move v5, v6

    goto :goto_3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 49
    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 51
    .local v3, "out":Ljava/io/PrintWriter;
    const-string/jumbo v4, "The overlay manager has already been initialized."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    return v6

    .line 54
    .end local v3    # "out":Ljava/io/PrintWriter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 56
    .local v2, "err":Ljava/io/PrintWriter;
    :try_start_0
    const-string/jumbo v4, "list"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runList()I

    move-result v4

    return v4

    .line 56
    :cond_1
    const-string/jumbo v4, "enable"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v4

    return v4

    .line 56
    :cond_2
    const-string/jumbo v4, "disable"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerShellCommand;->runEnableDisable(Z)I

    move-result v4

    return v4

    .line 56
    :cond_3
    const-string/jumbo v4, "disable-all"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runDisableAll()I

    move-result v4

    return v4

    .line 56
    :cond_4
    const-string/jumbo v4, "set-priority"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->runSetPriority()I

    move-result v4

    return v4

    .line 68
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v6

    .line 70
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHelp()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 81
    .local v0, "out":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Overlay manager (overlay) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "  dump [--verbose] [--user USER_ID] [PACKAGE [PACKAGE [...]]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "    Print debugging information about the overlay manager."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v1, "  list [--user USER_ID] [PACKAGE [PACKAGE [...]]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "    Print information about target and overlay packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "    Overlay packages are printed in priority order. With optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "    parameters PACKAGEs, limit output to the specified packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "    but include more information about each package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "  enable [--user USER_ID] [PACKAGE [PACKAGE [...]]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "    Enable overlay package PACKAGE or subsequent counts of PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "  disable [--user USER_ID] [PACKAGE [PACKAGE [...]]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "    Disable overlay package PACKAGE or subsequent counts of PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "  disable-all [--user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "    Disable all overlay packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "  set-priority [--user USER_ID] PACKAGE PARENT|lowest|highest"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "    Change the priority of the overlay PACKAGE to be just higher than"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "    the priority of PACKAGE_PARENT If PARENT is the special keyword"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "    \'lowest\', change priority of PACKAGE to the lowest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "    If PARENT is the special keyword \'highest\', change priority of"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "    PACKAGE to the highest priority."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    return-void
.end method
