.class public final Lcom/google/android/gms/internal/zzasu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzedc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzedd:Lcom/google/android/gms/internal/zzbfx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbfx<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbfx;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbfx<",
            "TV;>;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasu;->zzedd:Lcom/google/android/gms/internal/zzbfx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzasu;->zzedc:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;FF)Lcom/google/android/gms/internal/zzasu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Lcom/google/android/gms/internal/zzasu<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzasu;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzbfx;->zza(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/internal/zzbfx;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/zzasu;-><init>(Lcom/google/android/gms/internal/zzbfx;Ljava/lang/Object;)V

    return-object p1
.end method

.method static zza(Ljava/lang/String;II)Lcom/google/android/gms/internal/zzasu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/internal/zzasu<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzbfx;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzbfx;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzasu;-><init>(Lcom/google/android/gms/internal/zzbfx;Ljava/lang/Object;)V

    return-object v0
.end method

.method static zza(Ljava/lang/String;JJ)Lcom/google/android/gms/internal/zzasu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/android/gms/internal/zzasu<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/zzbfx;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzbfx;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzasu;-><init>(Lcom/google/android/gms/internal/zzbfx;Ljava/lang/Object;)V

    return-object v0
.end method

.method static zza(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzasu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/google/android/gms/internal/zzasu<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzbfx;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzbfx;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzasu;-><init>(Lcom/google/android/gms/internal/zzbfx;Ljava/lang/Object;)V

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzasu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzasu<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzasu;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/zzbfx;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfx;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzasu;-><init>(Lcom/google/android/gms/internal/zzbfx;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu;->zzedc:Ljava/lang/Object;

    return-object v0
.end method
