.class final Lcom/google/android/gms/internal/zzbkb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgnd:Lcom/google/android/gms/awareness/fence/zza;

.field private final zzgne:Lcom/google/android/gms/internal/zzbkj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/internal/zzbkj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/awareness/fence/zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkb;->zzgnd:Lcom/google/android/gms/awareness/fence/zza;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbkj;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkb;->zzgne:Lcom/google/android/gms/internal/zzbkj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkb;->zzgnd:Lcom/google/android/gms/awareness/fence/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->zzgne:Lcom/google/android/gms/internal/zzbkj;

    invoke-interface {v0, v1}, Lcom/google/android/gms/awareness/fence/zza;->zza(Lcom/google/android/gms/awareness/fence/FenceState;)V

    return-void
.end method
