.class final Lcom/google/android/gms/internal/zzdik;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdii;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzac([B)Lcom/google/android/gms/internal/zzdin;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzdib;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdic;->zzmy(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdjc;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "The container was successfully parsed from the resource"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/zzdib; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzdij;->zzlbj:Lcom/google/android/gms/internal/zzdii;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzdii;->zzac([B)Lcom/google/android/gms/internal/zzdin;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzdin;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzftq:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/internal/zzdio;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzdio;-><init>(Lcom/google/android/gms/internal/zzdjc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdin;->zzbjv()Lcom/google/android/gms/internal/zzdjk;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/google/android/gms/internal/zzdin;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/zzdio;Lcom/google/android/gms/internal/zzdjk;)V

    return-object v1

    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/zzdib;

    const-string v0, "The resource data is invalid. The container cannot be extracted from the JSON data"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzdib;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/zzdib;

    const-string v0, "The resource data is corrupted. The container cannot be extracted from the JSON data"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzdib;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/zzdib;

    const-string v0, "Cannot parse a 0 length byte[]"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzdib;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzdib;

    const-string v0, "Cannot parse a null byte[]"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzdib;-><init>(Ljava/lang/String;)V

    throw p1
.end method
