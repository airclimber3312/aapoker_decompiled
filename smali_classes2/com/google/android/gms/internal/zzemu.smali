.class final Lcom/google/android/gms/internal/zzemu;
.super Lcom/google/android/gms/internal/zzeeb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzeeb<",
        "Lcom/google/android/gms/internal/zzemq;",
        "Lcom/google/android/gms/internal/zzenn;",
        ">;"
    }
.end annotation


# instance fields
.field private zznod:Z

.field private synthetic zznoe:Lcom/google/android/gms/internal/zzemv;

.field private synthetic zznof:Lcom/google/android/gms/internal/zzems;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzems;Lcom/google/android/gms/internal/zzemv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzemu;->zznof:Lcom/google/android/gms/internal/zzems;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzemu;->zznoe:Lcom/google/android/gms/internal/zzemv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeeb;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzemu;->zznod:Z

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/zzemq;

    check-cast p2, Lcom/google/android/gms/internal/zzenn;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzemu;->zznod:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcby()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzemq;->zzi(Lcom/google/android/gms/internal/zzemq;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzemu;->zznod:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzemu;->zznoe:Lcom/google/android/gms/internal/zzemv;

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcby()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzemu;->zznof:Lcom/google/android/gms/internal/zzems;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzems;->zzcce()Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzemv;->zzb(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzemu;->zznoe:Lcom/google/android/gms/internal/zzemv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzemv;->zzb(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-void
.end method
