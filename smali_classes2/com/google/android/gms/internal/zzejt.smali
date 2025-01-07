.class public final Lcom/google/android/gms/internal/zzejt;
.super Ljava/lang/Object;


# instance fields
.field private final zznji:Lcom/google/android/gms/internal/zzegu;

.field private final zznjj:Lcom/google/android/gms/internal/zzejq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzejq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenm;ZLcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzenm;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzejq;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenm;ZLcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzenm;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzejq;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelh;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzejq;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzelh;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzejt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzejt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzejt;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzejq;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/zzejq;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzejq;->zzj(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method

.method public final zzu(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejt;->zznjj:Lcom/google/android/gms/internal/zzejq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejt;->zznji:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzejq;->zzu(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method
