.class final Lcom/google/android/gms/internal/zzcep;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/zzd;


# instance fields
.field private synthetic zzetp:Lcom/google/android/gms/common/api/Status;

.field private synthetic zzipo:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzceo;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcep;->zzipo:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcep;->zzetp:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcep;->zzipo:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcep;->zzetp:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
