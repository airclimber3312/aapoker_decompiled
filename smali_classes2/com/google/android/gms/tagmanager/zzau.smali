.class final Lcom/google/android/gms/tagmanager/zzau;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzkox:Ljava/util/List;

.field private synthetic zzkoy:J

.field private synthetic zzkoz:Lcom/google/android/gms/tagmanager/zzat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzat;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzau;->zzkoz:Lcom/google/android/gms/tagmanager/zzat;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzau;->zzkox:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzau;->zzkoy:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau;->zzkoz:Lcom/google/android/gms/tagmanager/zzat;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzau;->zzkox:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzau;->zzkoy:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzat;->zza(Lcom/google/android/gms/tagmanager/zzat;Ljava/util/List;J)V

    return-void
.end method
