.class final Lcom/tencent/bugly/proguard/mz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/mz;->g(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tencent/bugly/proguard/ml;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/bugly/proguard/ml;

    check-cast p2, Lcom/tencent/bugly/proguard/ml;

    iget p2, p2, Lcom/tencent/bugly/proguard/ml;->count:I

    iget p1, p1, Lcom/tencent/bugly/proguard/ml;->count:I

    sub-int/2addr p2, p1

    return p2
.end method
