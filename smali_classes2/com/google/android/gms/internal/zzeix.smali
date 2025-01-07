.class final Lcom/google/android/gms/internal/zzeix;
.super Lcom/google/android/gms/internal/zzeeb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeeb<",
        "Lcom/google/android/gms/internal/zzemq;",
        "Lcom/google/android/gms/internal/zzekw<",
        "Lcom/google/android/gms/internal/zzeiq;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zznfs:Ljava/util/List;

.field private synthetic zznie:Lcom/google/android/gms/internal/zzeir;

.field private synthetic zznij:Lcom/google/android/gms/internal/zzenn;

.field private synthetic zznik:Lcom/google/android/gms/internal/zzejt;

.field private synthetic zznil:Lcom/google/android/gms/internal/zzejy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;Lcom/google/android/gms/internal/zzejy;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeix;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeix;->zznij:Lcom/google/android/gms/internal/zzenn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeix;->zznik:Lcom/google/android/gms/internal/zzejt;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeix;->zznil:Lcom/google/android/gms/internal/zzejy;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzeix;->zznfs:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeeb;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/zzemq;

    check-cast p2, Lcom/google/android/gms/internal/zzekw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeix;->zznij:Lcom/google/android/gms/internal/zzenn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzenn;->zzm(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeix;->zznik:Lcom/google/android/gms/internal/zzejt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzejt;->zzb(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeix;->zznil:Lcom/google/android/gms/internal/zzejy;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzejy;->zzc(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejy;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeix;->zznfs:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeix;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;Lcom/google/android/gms/internal/zzekw;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejt;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
