.class public final Lcom/google/android/gms/internal/zzdjm;
.super Ljava/lang/Object;


# instance fields
.field private zzfli:Ljava/lang/String;

.field private zzlck:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdco;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdjm;->zzlck:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzdco;)Lcom/google/android/gms/internal/zzdjm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdjm;->zzlck:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzbkl()Lcom/google/android/gms/internal/zzdjk;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzdjk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdjm;->zzfli:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdjm;->zzlck:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdjk;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/zzdjl;)V

    return-object v0
.end method

.method public final zznh(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdjm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdjm;->zzfli:Ljava/lang/String;

    return-object p0
.end method
