.class final Lcom/google/android/gms/internal/zzdkd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/zzdjq<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private zzldd:I

.field private synthetic zzldk:Lcom/google/android/gms/internal/zzdkc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdkc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdkd;->zzldk:Lcom/google/android/gms/internal/zzdkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzdkd;->zzldd:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdkd;->zzldd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdkd;->zzldk:Lcom/google/android/gms/internal/zzdkc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdkc;->zza(Lcom/google/android/gms/internal/zzdkc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzdkd;->zzldd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdkd;->zzldk:Lcom/google/android/gms/internal/zzdkc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdkc;->zza(Lcom/google/android/gms/internal/zzdkc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdju;

    iget v1, p0, Lcom/google/android/gms/internal/zzdkd;->zzldd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzdkd;->zzldd:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdju;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
