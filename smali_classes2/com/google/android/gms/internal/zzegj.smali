.class final Lcom/google/android/gms/internal/zzegj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzekz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzekz<",
        "Lcom/google/android/gms/internal/zzenn;",
        "Lcom/google/android/gms/internal/zzegi;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegi;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegj;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/zzenn;

    check-cast p3, Lcom/google/android/gms/internal/zzegi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegj;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/zzegi;->zze(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzegi;

    move-result-object p1

    return-object p1
.end method
