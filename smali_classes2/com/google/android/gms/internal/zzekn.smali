.class final Lcom/google/android/gms/internal/zzekn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzekz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzekz<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zznkq:Lcom/google/android/gms/internal/zzekz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzekk;Lcom/google/android/gms/internal/zzekz;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzekn;->zznkq:Lcom/google/android/gms/internal/zzekz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzekn;->zznkq:Lcom/google/android/gms/internal/zzekz;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/zzekz;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method
