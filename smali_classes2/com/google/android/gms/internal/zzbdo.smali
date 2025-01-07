.class public Lcom/google/android/gms/internal/zzbdo;
.super Ljava/lang/Object;


# instance fields
.field private final zzeqz:Ljava/lang/String;

.field protected final zzeui:Lcom/google/android/gms/internal/zzbei;

.field private zzfmb:Lcom/google/android/gms/internal/zzbem;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbdw;->zzfv(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdo;->zzeqz:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/zzbei;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzbei;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdo;->zzeui:Lcom/google/android/gms/internal/zzbei;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzbdo;->setSessionLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdo;->zzeqz:Ljava/lang/String;

    return-object v0
.end method

.method public final setSessionLabel(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdo;->zzeui:Lcom/google/android/gms/internal/zzbei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbei;->zzga(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdo;->zzfmb:Lcom/google/android/gms/internal/zzbem;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbdo;->zzagm()V

    :cond_0
    return-void
.end method

.method protected final zza(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdo;->zzfmb:Lcom/google/android/gms/internal/zzbem;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdo;->zzeqz:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbem;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public zzagm()V
    .locals 0

    return-void
.end method

.method protected final zzagn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdo;->zzfmb:Lcom/google/android/gms/internal/zzbem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbem;->zzadw()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzc(JI)V
    .locals 0

    return-void
.end method

.method public zzfu(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
