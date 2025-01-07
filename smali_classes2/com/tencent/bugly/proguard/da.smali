.class public final Lcom/tencent/bugly/proguard/da;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/bugly/proguard/da;",
        ">;"
    }
.end annotation


# instance fields
.field public fv:J

.field public gn:I

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/tencent/bugly/proguard/da;

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/da;->fv:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/da;->fv:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method
