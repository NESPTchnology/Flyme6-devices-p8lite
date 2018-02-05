.class Lslim/utils/AttributeHelper$AttributeInfo;
.super Ljava/lang/Object;
.source "AttributeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lslim/utils/AttributeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttributeInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field resId:I

.field final synthetic this$0:Lslim/utils/AttributeHelper;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lslim/utils/AttributeHelper;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lslim/utils/AttributeHelper;
    .param p2, "resId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lslim/utils/AttributeHelper$AttributeInfo;->this$0:Lslim/utils/AttributeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lslim/utils/AttributeHelper$AttributeInfo;->resId:I

    .line 41
    iput-object p3, p0, Lslim/utils/AttributeHelper$AttributeInfo;->name:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lslim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    .line 39
    return-void
.end method
