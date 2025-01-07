.class final Lcom/google/android/gms/internal/zzefw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzncm:Lcom/google/android/gms/internal/zzefu;

.field private synthetic zzncn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefw;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefw;->zzncn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefw;->zzncm:Lcom/google/android/gms/internal/zzefu;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzefu;->zznck:Lcom/google/android/gms/internal/zzefp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefw;->zzncn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefp;->zza(Lcom/google/android/gms/internal/zzefp;Ljava/lang/String;)V

    return-void
.end method
