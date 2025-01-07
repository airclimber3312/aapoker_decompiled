.class public final Lcom/google/android/gms/internal/zzdge;
.super Lcom/google/android/gms/internal/zzdcr;


# instance fields
.field private final zzkxv:Lcom/google/android/gms/internal/zzdaz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdaz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdcr;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdge;->zzkxv:Lcom/google/android/gms/internal/zzdaz;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzdbb;[Lcom/google/android/gms/internal/zzdjq;)Lcom/google/android/gms/internal/zzdjq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdbb;",
            "[",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;)",
            "Lcom/google/android/gms/internal/zzdjq<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    array-length p2, p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdge;->zzkxv:Lcom/google/android/gms/internal/zzdaz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzdaz;->zzbjc()Lcom/google/android/gms/internal/zzczu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzczu;->zzcb(Z)V

    sget-object p1, Lcom/google/android/gms/internal/zzdjw;->zzlcz:Lcom/google/android/gms/internal/zzdjw;

    return-object p1
.end method
