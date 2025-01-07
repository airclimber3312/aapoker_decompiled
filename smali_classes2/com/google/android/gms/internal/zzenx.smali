.class public final Lcom/google/android/gms/internal/zzenx;
.super Lcom/google/android/gms/internal/zzenf;


# static fields
.field private static final zznpo:Lcom/google/android/gms/internal/zzenx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzenx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzenx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzenx;->zznpo:Lcom/google/android/gms/internal/zzenx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzenf;-><init>()V

    return-void
.end method

.method public static zzccz()Lcom/google/android/gms/internal/zzenx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenx;->zznpo:Lcom/google/android/gms/internal/zzenx;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzenm;

    check-cast p2, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzenn;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzemq;->zzi(Lcom/google/android/gms/internal/zzemq;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzenx;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueIndex"

    return-object v0
.end method

.method public final zzccp()Lcom/google/android/gms/internal/zzenm;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzenm;

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzenn;->zznpf:Lcom/google/android/gms/internal/zzems;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0
.end method

.method public final zzccq()Ljava/lang/String;
    .locals 1

    const-string v0, ".value"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzenm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzenn;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
