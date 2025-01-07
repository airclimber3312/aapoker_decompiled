.class public final Lcom/google/android/gms/fitness/request/zzah;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzhot:Lcom/google/android/gms/internal/zzcbu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcbv;->zzbb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzcbu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzah;->zzhot:Lcom/google/android/gms/internal/zzcbu;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzcbu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzah;->zzhot:Lcom/google/android/gms/internal/zzcbu;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzah;->zzhot:Lcom/google/android/gms/internal/zzcbu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcbu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
