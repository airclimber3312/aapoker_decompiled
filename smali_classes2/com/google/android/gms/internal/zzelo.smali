.class final Lcom/google/android/gms/internal/zzelo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/zzelj;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zznmf:Lcom/google/android/gms/internal/zzeln;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeln;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelo;->zznmf:Lcom/google/android/gms/internal/zzeln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzelj;

    check-cast p2, Lcom/google/android/gms/internal/zzelj;

    new-instance v0, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcam()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    new-instance p1, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelj;->zzcam()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeng;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzelo;->zznmf:Lcom/google/android/gms/internal/zzeln;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeln;->zza(Lcom/google/android/gms/internal/zzeln;)Lcom/google/android/gms/internal/zzenf;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzenf;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
