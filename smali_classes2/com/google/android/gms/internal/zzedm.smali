.class final Lcom/google/android/gms/internal/zzedm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzekz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzekz<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmyc:Lcom/google/android/gms/internal/zzekw;

.field private synthetic zzmyd:Ljava/util/List;

.field private synthetic zzmye:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zzmyf:Lcom/google/android/gms/internal/zzenn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekw;Ljava/util/List;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedm;->zzmyc:Lcom/google/android/gms/internal/zzekw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzedm;->zzmyd:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzedm;->zzmye:Lcom/google/android/gms/internal/zzegu;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzedm;->zzmyf:Lcom/google/android/gms/internal/zzenn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedm;->zzmyc:Lcom/google/android/gms/internal/zzekw;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzekw;->zzaj(Lcom/google/android/gms/internal/zzegu;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedm;->zzmyd:Ljava/util/List;

    new-instance p3, Lcom/google/android/gms/internal/zzepa;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedm;->zzmye:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedm;->zzmyf:Lcom/google/android/gms/internal/zzenn;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzenn;->zzan(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/google/android/gms/internal/zzepa;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
