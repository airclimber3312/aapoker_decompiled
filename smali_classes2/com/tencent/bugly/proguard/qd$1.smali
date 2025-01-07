.class public final Lcom/tencent/bugly/proguard/qd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/qd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic FD:Lcom/tencent/bugly/proguard/qd;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/qd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/qd$1;->FD:Lcom/tencent/bugly/proguard/qd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;II)V
    .locals 2

    sget-object p3, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "RMonitor_MemoryQuantile"

    aput-object v1, p4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportQuantileEvent fail! errorCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errorMsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p4, p2

    invoke-virtual {p3, p4}, Lcom/tencent/bugly/proguard/km;->e([Ljava/lang/String;)V

    return-void
.end method

.method public final al()V
    .locals 0

    return-void
.end method

.method public final b(II)V
    .locals 1

    sget-object p1, Lcom/tencent/bugly/proguard/km;->yz:Lcom/tencent/bugly/proguard/km;

    const-string p2, "RMonitor_MemoryQuantile"

    const-string v0, "reportQuantileEvent success!"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/bugly/proguard/km;->d([Ljava/lang/String;)V

    return-void
.end method
