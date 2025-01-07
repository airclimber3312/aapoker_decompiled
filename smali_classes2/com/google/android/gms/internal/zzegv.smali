.class final Lcom/google/android/gms/internal/zzegv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/zzemq;",
        ">;"
    }
.end annotation


# instance fields
.field private offset:I

.field private synthetic zznew:Lcom/google/android/gms/internal/zzegu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegv;->zznew:Lcom/google/android/gms/internal/zzegu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegv;->zznew:Lcom/google/android/gms/internal/zzegu;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzegu;->zzk(Lcom/google/android/gms/internal/zzegu;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzegv;->offset:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzegv;->offset:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegv;->zznew:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegu;->zzl(Lcom/google/android/gms/internal/zzegu;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzegv;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegv;->zznew:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegu;->zzm(Lcom/google/android/gms/internal/zzegu;)[Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzegv;->offset:I

    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzegv;->offset:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove component from immutable Path!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
