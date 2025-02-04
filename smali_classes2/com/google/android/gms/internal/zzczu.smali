.class public final Lcom/google/android/gms/internal/zzczu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/zze;


# instance fields
.field private final zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzkwi:Landroid/os/Bundle;

.field private final zzkwj:Ljava/lang/String;

.field private final zzkwk:Ljava/util/Date;

.field private final zzkwl:Ljava/lang/String;

.field private zzkwm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzkwn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzcn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczu;->zzkwj:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzczu;->zzkwi:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzczu;->zzkwk:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzczu;->zzkwl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzczu;->zzkwn:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzczu;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwk:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final elapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbgl()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwm:Ljava/util/Map;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkvt:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcn;->zzbgl()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwm:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Error calling measurement proxy:"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwm:Ljava/util/Map;

    return-object v0
.end method

.method public final zzbio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbip()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwi:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzbiq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbir()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzczu;->zzkwn:Z

    return v0
.end method

.method public final zzcb(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzczu;->zzkwn:Z

    return-void
.end method
