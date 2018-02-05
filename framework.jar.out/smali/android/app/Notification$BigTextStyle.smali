.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# static fields
.field private static final LINES_CONSUMED_BY_ACTIONS:I = 0x4

.field private static final MAX_LINES:I = 0xd


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4535
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4542
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4543
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4542
    return-void
.end method

.method static applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "bigTextText"    # Ljava/lang/CharSequence;

    .prologue
    const v2, 0x10203bc

    .line 4617
    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4619
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 4618
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4620
    const-string/jumbo v0, "setMaxLines"

    invoke-static {p0}, Landroid/app/Notification$BigTextStyle;->calculateMaxLines(Landroid/app/Notification$Builder;)I

    move-result v1

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4621
    const-string/jumbo v0, "setHasImage"

    invoke-static {p0}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    move-result v1

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4616
    return-void

    .line 4619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static calculateMaxLines(Landroid/app/Notification$Builder;)I
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v0, 0x0

    .line 4625
    const/16 v1, 0xd

    .line 4626
    .local v1, "lineCount":I
    invoke-static {p0}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 4627
    .local v0, "hasActions":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 4628
    const/16 v1, 0x9

    .line 4630
    :cond_1
    return v1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4576
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4578
    const-string/jumbo v0, "android.bigText"

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4575
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4568
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4569
    return-object p0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    .line 4597
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4598
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.text"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4600
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap9(Landroid/app/Notification$Builder;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 4602
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.text"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4604
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->-wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4605
    .local v0, "bigTextText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4608
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v2}, Landroid/app/Notification$Builder;->-wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4610
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v1, v0}, Landroid/app/Notification$BigTextStyle;->applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 4612
    return-object v1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4586
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4588
    const-string/jumbo v0, "android.bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4585
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4551
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4552
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4559
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4560
    return-object p0
.end method
