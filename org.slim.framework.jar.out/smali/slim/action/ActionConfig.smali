.class public Lslim/action/ActionConfig;
.super Ljava/lang/Object;
.source "ActionConfig.java"


# instance fields
.field private mClickAction:Ljava/lang/String;

.field private mClickActionDescription:Ljava/lang/String;

.field private mDoubleTapAction:Ljava/lang/String;

.field private mDoubleTapActionDescription:Ljava/lang/String;

.field private mIconUri:Ljava/lang/String;

.field private mLongpressAction:Ljava/lang/String;

.field private mLongpressActionDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "clickActionDescription"    # Ljava/lang/String;
    .param p3, "longpressAction"    # Ljava/lang/String;
    .param p4, "longpressActionDescription"    # Ljava/lang/String;
    .param p5, "doubleTapAction"    # Ljava/lang/String;
    .param p6, "doubleTapActionDescription"    # Ljava/lang/String;
    .param p7, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lslim/action/ActionConfig;->mClickAction:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lslim/action/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lslim/action/ActionConfig;->mLongpressAction:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lslim/action/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lslim/action/ActionConfig;->mDoubleTapAction:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lslim/action/ActionConfig;->mDoubleTapActionDescription:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lslim/action/ActionConfig;->mIconUri:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getClickAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lslim/action/ActionConfig;->mClickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lslim/action/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDoubleTapAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lslim/action/ActionConfig;->mDoubleTapAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDoubleTapActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lslim/action/ActionConfig;->mDoubleTapActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lslim/action/ActionConfig;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lslim/action/ActionConfig;->mLongpressAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lslim/action/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setClickAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lslim/action/ActionConfig;->mClickAction:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setClickActionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lslim/action/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setDoubleTapAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lslim/action/ActionConfig;->mDoubleTapAction:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setDoubleTapActionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lslim/action/ActionConfig;->mDoubleTapActionDescription:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lslim/action/ActionConfig;->mIconUri:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setLongpressAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lslim/action/ActionConfig;->mLongpressAction:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setLongpressActionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lslim/action/ActionConfig;->mLongpressActionDescription:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lslim/action/ActionConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method
