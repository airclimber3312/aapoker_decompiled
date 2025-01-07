.class public final Lcom/google/android/gms/internal/zzeik;
.super Ljava/lang/Object;


# instance fields
.field private zznhl:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zznhl:Lcom/google/android/gms/internal/zzenn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeik;->zznhl:Lcom/google/android/gms/internal/zzenn;

    return-void
.end method


# virtual methods
.method public final zzbza()Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zznhl:Lcom/google/android/gms/internal/zzenn;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zznhl:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzenn;->zzl(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeik;->zznhl:Lcom/google/android/gms/internal/zzenn;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zznhl:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    return-object p1
.end method
