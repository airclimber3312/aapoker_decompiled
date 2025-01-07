.class public final Lcom/google/android/gms/internal/zzenh;
.super Lcom/google/android/gms/internal/zzenf;


# static fields
.field private static final zznow:Lcom/google/android/gms/internal/zzenh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzenh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzenh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzenh;->zznow:Lcom/google/android/gms/internal/zzenh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzenf;-><init>()V

    return-void
.end method

.method public static zzccu()Lcom/google/android/gms/internal/zzenh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzenh;->zznow:Lcom/google/android/gms/internal/zzenh;

    return-object v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzenm;

    check-cast p2, Lcom/google/android/gms/internal/zzenm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzenm;->zzccx()Lcom/google/android/gms/internal/zzemq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzemq;->zzi(Lcom/google/android/gms/internal/zzemq;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzenh;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyIndex"

    return-object v0
.end method

.method public final zzccp()Lcom/google/android/gms/internal/zzenm;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzenm;->zzccw()Lcom/google/android/gms/internal/zzenm;

    move-result-object v0

    return-object v0
.end method

.method public final zzccq()Ljava/lang/String;
    .locals 1

    const-string v0, ".key"

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenm;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/zzenm;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzenn;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzenm;-><init>(Lcom/google/android/gms/internal/zzemq;Lcom/google/android/gms/internal/zzenn;)V

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzenn;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
