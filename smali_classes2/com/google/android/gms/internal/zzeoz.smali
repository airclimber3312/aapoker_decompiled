.class public final Lcom/google/android/gms/internal/zzeoz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeos;


# instance fields
.field private final zznrf:Lcom/google/android/gms/internal/zzeos;

.field private zznrg:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeos;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeoz;->zznrf:Lcom/google/android/gms/internal/zzeos;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzeoz;->zznrg:J

    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeoz;->zznrf:Lcom/google/android/gms/internal/zzeos;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeos;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzeoz;->zznrg:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzbz(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzeoz;->zznrg:J

    return-void
.end method
