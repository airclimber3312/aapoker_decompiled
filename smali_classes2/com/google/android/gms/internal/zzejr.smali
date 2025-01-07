.class final Lcom/google/android/gms/internal/zzejr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzela;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzela<",
        "Lcom/google/android/gms/internal/zzejn;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zznjf:Z

.field private synthetic zznjg:Ljava/util/List;

.field private synthetic zznjh:Lcom/google/android/gms/internal/zzegu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzejq;ZLjava/util/List;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzejr;->zznjf:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejr;->zznjg:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzejr;->zznjh:Lcom/google/android/gms/internal/zzegu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzbw(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejn;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzejr;->zznjf:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejr;->zznjg:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejr;->zznjh:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejr;->zznjh:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegu;->zzi(Lcom/google/android/gms/internal/zzegu;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
