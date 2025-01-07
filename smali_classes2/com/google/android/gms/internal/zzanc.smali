.class final Lcom/google/android/gms/internal/zzanc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdlw:Lcom/google/android/gms/internal/zzanb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzanb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanc;->zzdlw:Lcom/google/android/gms/internal/zzanb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanc;->zzdlw:Lcom/google/android/gms/internal/zzanb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/zzanb;->zza(Lcom/google/android/gms/internal/zzanb;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
