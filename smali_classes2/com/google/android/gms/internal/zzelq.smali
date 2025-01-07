.class final Lcom/google/android/gms/internal/zzelq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznmg:Ljava/util/ArrayList;

.field private synthetic zznmh:Lcom/google/android/gms/internal/zzelp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzelp;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzelq;->zznmh:Lcom/google/android/gms/internal/zzelp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzelq;->zznmg:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzelq;->zznmg:Ljava/util/ArrayList;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/internal/zzell;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzelq;->zznmh:Lcom/google/android/gms/internal/zzelp;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzelp;->zza(Lcom/google/android/gms/internal/zzelp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzelq;->zznmh:Lcom/google/android/gms/internal/zzelp;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzelp;->zza(Lcom/google/android/gms/internal/zzelp;)Lcom/google/android/gms/internal/zzemm;

    move-result-object v5

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzell;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "Raising "

    if-eqz v7, :cond_0

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v4}, Lcom/google/android/gms/internal/zzell;->zzcal()V

    goto :goto_0

    :cond_2
    return-void
.end method
