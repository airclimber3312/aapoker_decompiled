.class final Lcom/google/android/gms/internal/zzbco;
.super Lcom/google/android/gms/internal/zzbcr;


# instance fields
.field private synthetic zzfkt:Lcom/google/android/gms/internal/zzbcl;

.field private synthetic zzfkv:I

.field private synthetic zzfkw:Ljava/lang/String;

.field private synthetic zzfkx:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcl;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbco;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    iput p2, p0, Lcom/google/android/gms/internal/zzbco;->zzfkv:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbco;->zzfkw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbco;->zzfkx:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcr;-><init>(Lcom/google/android/gms/internal/zzbcl;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/zzbco;->zzfkv:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    const/4 v6, 0x4

    if-eq v0, v6, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :cond_4
    :goto_0
    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbct;->zzezb:Lcom/google/android/gms/internal/zzben;

    const/16 v3, 0x7d1

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    invoke-interface {v0, v5, v6, v3, v4}, Lcom/google/android/gms/internal/zzben;->zza(JILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbcl;->zzagj()Lcom/google/android/gms/internal/zzbei;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/zzbco;->zzfkv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "sendPlayerRequest for unsupported playerState: %d"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbei;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbco;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbco;->zzfkw:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbco;->zzfkx:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbct;->zzezb:Lcom/google/android/gms/internal/zzben;

    invoke-static {v0, v1, v3, v2, v4}, Lcom/google/android/gms/internal/zzbcl;->zza(Lcom/google/android/gms/internal/zzbcl;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzben;)V

    return-void
.end method
