.class final Lcom/google/android/gms/internal/zzclr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjpy:Lcom/google/android/gms/internal/zzclk;

.field private synthetic zzjqc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclr;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzclr;->zzjqc:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclr;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayq()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcju;->zzjmb:Lcom/google/android/gms/internal/zzcjx;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzclr;->zzjqc:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclr;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzayp()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzbaz()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzclr;->zzjqc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcjl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
