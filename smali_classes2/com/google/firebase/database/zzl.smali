.class final Lcom/google/firebase/database/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmwz:Lcom/google/firebase/database/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzl;->zzmwz:Lcom/google/firebase/database/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/zzl;->zzmwz:Lcom/google/firebase/database/zzk;

    iget-object v0, v0, Lcom/google/firebase/database/zzk;->zzmwa:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzl;->zzmwz:Lcom/google/firebase/database/zzk;

    iget-object v0, v0, Lcom/google/firebase/database/zzk;->zzmwa:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzenm;

    new-instance v1, Lcom/google/firebase/database/MutableData;

    iget-object v2, p0, Lcom/google/firebase/database/zzl;->zzmwz:Lcom/google/firebase/database/zzk;

    iget-object v2, v2, Lcom/google/firebase/database/zzk;->zzmwy:Lcom/google/firebase/database/MutableData;

    invoke-static {v2}, Lcom/google/firebase/database/MutableData;->zza(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/zzl;->zzmwz:Lcom/google/firebase/database/zzk;

    iget-object v3, v3, Lcom/google/firebase/database/zzk;->zzmwy:Lcom/google/firebase/database/MutableData;

    invoke-static {v3}, Lcom/google/firebase/database/MutableData;->zzb(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/zzi;)V

    return-object v1
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
