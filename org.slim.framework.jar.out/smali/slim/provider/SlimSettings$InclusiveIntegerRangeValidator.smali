.class final Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;
.super Ljava/lang/Object;
.source "SlimSettings.java"

# interfaces
.implements Lslim/provider/SlimSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lslim/provider/SlimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;->mMin:I

    .line 193
    iput p2, p0, Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;->mMax:I

    .line 191
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 199
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 200
    .local v1, "intValue":I
    iget v3, p0, Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;->mMin:I

    if-lt v1, v3, :cond_0

    iget v3, p0, Lslim/provider/SlimSettings$InclusiveIntegerRangeValidator;->mMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 201
    .end local v1    # "intValue":I
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method
