.class final Lcom/google/android/gms/internal/zzblk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzazy;


# instance fields
.field private synthetic zzetp:Lcom/google/android/gms/common/api/Status;

.field private synthetic zzgov:Lcom/google/android/gms/internal/zzazd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblj;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzazd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzblk;->zzetp:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzblk;->zzgov:Lcom/google/android/gms/internal/zzazd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblk;->zzetp:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zzadl()Lcom/google/android/gms/internal/zzazd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblk;->zzgov:Lcom/google/android/gms/internal/zzazd;

    return-object v0
.end method
