.class final Lcom/google/android/gms/internal/zzbbd;
.super Lcom/google/android/gms/internal/zzbbh;


# instance fields
.field private synthetic zzfgy:Lcom/google/android/gms/internal/zzbaz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbd;->zzfgy:Lcom/google/android/gms/internal/zzbaz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbbh;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbba;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbbd;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method


# virtual methods
.method public final zzadx()I
    .locals 1

    const v0, 0xba544e

    return v0
.end method

.method public final zzb(JJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbd;->zzfgy:Lcom/google/android/gms/internal/zzbaz;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbaz;->zza(Lcom/google/android/gms/internal/zzbaz;[Ljava/lang/Object;)V

    return-void
.end method
