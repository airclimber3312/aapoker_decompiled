.class final Lcom/google/android/gms/internal/zzczj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkvy:Lcom/google/android/gms/internal/zzczg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzczg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzczg;Lcom/google/android/gms/internal/zzczh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzczj;-><init>(Lcom/google/android/gms/internal/zzczg;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzd(Lcom/google/android/gms/internal/zzczg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loading failed."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzi(Lcom/google/android/gms/internal/zzczg;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzczg;->zzi(Lcom/google/android/gms/internal/zzczg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzczu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->zzbir()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzczg;->zzj(Lcom/google/android/gms/internal/zzczg;)Lcom/google/android/gms/tagmanager/zzcn;

    move-result-object v3

    const-string v4, "app"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->zzbio()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->zzbip()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/tagmanager/zzcn;->logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->zzbio()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Logged event "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to Firebase (marked as passthrough)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzczg;->zzk(Lcom/google/android/gms/internal/zzczg;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Error logging event with measurement proxy:"

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzczq;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzczu;->zzbio()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Discarded event "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (marked as non-passthrough)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdal;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzczj;->zzkvy:Lcom/google/android/gms/internal/zzczg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzczg;->zza(Lcom/google/android/gms/internal/zzczg;Ljava/util/List;)Ljava/util/List;

    :cond_2
    return-void
.end method
