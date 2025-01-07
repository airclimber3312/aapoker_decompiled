.class final Lcom/google/android/gms/internal/zzeis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/android/gms/internal/zzell;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zzngk:J

.field private synthetic zznia:Z

.field private synthetic zznib:Lcom/google/android/gms/internal/zzenn;

.field private synthetic zznic:Lcom/google/android/gms/internal/zzenn;

.field private synthetic zznid:Z

.field private synthetic zznie:Lcom/google/android/gms/internal/zzeir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeir;ZLcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;JLcom/google/android/gms/internal/zzenn;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeis;->zznie:Lcom/google/android/gms/internal/zzeir;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzeis;->zznia:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeis;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeis;->zznib:Lcom/google/android/gms/internal/zzenn;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzeis;->zzngk:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzeis;->zznic:Lcom/google/android/gms/internal/zzenn;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzeis;->zznid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeis;->zznia:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeis;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeis;->zznib:Lcom/google/android/gms/internal/zzenn;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzeis;->zzngk:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzeki;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznie:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeir;->zzc(Lcom/google/android/gms/internal/zzeir;)Lcom/google/android/gms/internal/zzejq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeis;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeis;->zznic:Lcom/google/android/gms/internal/zzenn;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzeis;->zzngk:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzeis;->zznid:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzejq;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Ljava/lang/Long;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeis;->zznid:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznie:Lcom/google/android/gms/internal/zzeir;

    new-instance v1, Lcom/google/android/gms/internal/zzekc;

    sget-object v2, Lcom/google/android/gms/internal/zzeka;->zznjw:Lcom/google/android/gms/internal/zzeka;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeis;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzeis;->zznic:Lcom/google/android/gms/internal/zzenn;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzeka;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzeir;Lcom/google/android/gms/internal/zzejy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
