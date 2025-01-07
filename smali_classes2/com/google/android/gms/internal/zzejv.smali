.class public final Lcom/google/android/gms/internal/zzejv;
.super Lcom/google/android/gms/internal/zzejy;


# instance fields
.field private final zznjm:Z

.field private final zznjn:Lcom/google/android/gms/internal/zzekw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzejz;->zznjt:Lcom/google/android/gms/internal/zzejz;

    sget-object v1, Lcom/google/android/gms/internal/zzeka;->zznjw:Lcom/google/android/gms/internal/zzeka;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzejz;Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejv;->zznjn:Lcom/google/android/gms/internal/zzekw;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzejv;->zznjm:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejy;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzejv;->zznjm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejv;->zznjn:Lcom/google/android/gms/internal/zzekw;

    aput-object v2, v0, v1

    const-string v1, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzp()Lcom/google/android/gms/internal/zzekw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzekw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejv;->zznjn:Lcom/google/android/gms/internal/zzekw;

    return-object v0
.end method

.method public final zzbzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejv;->zznjm:Z

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejy;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejv;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejv;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "operationForChild called for unrelated child."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzejv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejv;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejv;->zznjn:Lcom/google/android/gms/internal/zzekw;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzejv;->zznjm:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzejv;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Z)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejv;->zznjn:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekw;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzejv;->zznjn:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekw;->zzcag()Lcom/google/android/gms/internal/zzedq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedq;->isEmpty()Z

    move-result p1

    const-string v0, "affectedTree should not have overlapping affected paths."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejv;->zznjn:Lcom/google/android/gms/internal/zzekw;

    new-instance v1, Lcom/google/android/gms/internal/zzegu;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzemq;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzekw;->zzah(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzekw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzejv;

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzejv;->zznjm:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzejv;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzekw;Z)V

    return-object v0
.end method
