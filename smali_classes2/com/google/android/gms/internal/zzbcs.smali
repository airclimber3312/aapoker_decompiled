.class final Lcom/google/android/gms/internal/zzbcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzben;


# instance fields
.field private synthetic zzfkz:Lcom/google/android/gms/internal/zzbcl;

.field private synthetic zzfla:Lcom/google/android/gms/internal/zzbcr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcr;Lcom/google/android/gms/internal/zzbcl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcs;->zzfla:Lcom/google/android/gms/internal/zzbcr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcs;->zzfkz:Lcom/google/android/gms/internal/zzbcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    iget-object p4, p0, Lcom/google/android/gms/internal/zzbcs;->zzfla:Lcom/google/android/gms/internal/zzbcr;

    new-instance v7, Lcom/google/android/gms/internal/zzbcx;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p3, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbcx;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p4, v7}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/zzbcz;

    iget-object v3, p4, Lcom/google/android/gms/internal/zzbcz;->zzfld:Ljava/lang/String;

    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcs;->zzfla:Lcom/google/android/gms/internal/zzbcr;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbcr;->zzfkt:Lcom/google/android/gms/internal/zzbcl;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzbcl;->zza(Lcom/google/android/gms/internal/zzbcl;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcs;->zzfla:Lcom/google/android/gms/internal/zzbcr;

    new-instance p2, Lcom/google/android/gms/internal/zzbcx;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p4, Lcom/google/android/gms/internal/zzbcz;->zzflk:Ljava/lang/String;

    invoke-direct {v2, p3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-wide v4, p4, Lcom/google/android/gms/internal/zzbcz;->zzfle:J

    iget-object v6, p4, Lcom/google/android/gms/internal/zzbcz;->zzflf:Lorg/json/JSONObject;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbcx;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcs;->zzfla:Lcom/google/android/gms/internal/zzbcr;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 p3, 0xd

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbcr;->zzl(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzx(J)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcs;->zzfla:Lcom/google/android/gms/internal/zzbcr;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x837

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbcr;->zzl(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
