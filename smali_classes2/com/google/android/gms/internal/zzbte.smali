.class public final Lcom/google/android/gms/internal/zzbte;
.super Lcom/google/android/gms/internal/zzbgl;

# interfaces
.implements Lcom/google/android/gms/drive/TransferPreferences;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgrf:Z

.field private zzgrg:I

.field private zzgwt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbtf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbtf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbte;->zzgwt:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbte;->zzgrg:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbte;->zzgrf:Z

    return-void
.end method


# virtual methods
.method public final getBatteryUsagePreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbte;->zzgrg:I

    return v0
.end method

.method public final getNetworkPreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbte;->zzgwt:I

    return v0
.end method

.method public final isRoamingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbte;->zzgrf:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzbte;->zzgwt:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zzbte;->zzgrg:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbte;->zzgrf:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
