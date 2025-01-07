.class final Lcom/google/android/gms/internal/zzdis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzlbr:Ljava/lang/String;

.field private synthetic zzlbs:Lcom/google/android/gms/internal/zzdid;

.field private synthetic zzlbt:Lcom/google/android/gms/internal/zzdip;

.field private synthetic zzlbu:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdip;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdid;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdis;->zzlbt:Lcom/google/android/gms/internal/zzdip;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdis;->zzlbr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdis;->zzlbu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdis;->zzlbs:Lcom/google/android/gms/internal/zzdid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdis;->zzlbt:Lcom/google/android/gms/internal/zzdip;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdis;->zzlbr:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdis;->zzlbu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdis;->zzlbs:Lcom/google/android/gms/internal/zzdid;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzdip;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzdid;)V

    return-void
.end method
