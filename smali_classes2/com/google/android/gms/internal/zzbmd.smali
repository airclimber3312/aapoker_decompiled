.class public final Lcom/google/android/gms/internal/zzbmd;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbmd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgsu:Lcom/google/android/gms/drive/zzc;

.field private zzgsw:I

.field private zzgsy:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbme;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbme;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/zzbmd;-><init>(Lcom/google/android/gms/drive/zzc;Ljava/lang/Boolean;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/zzc;Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmd;->zzgsu:Lcom/google/android/gms/drive/zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmd;->zzgsy:Ljava/lang/Boolean;

    iput p3, p0, Lcom/google/android/gms/internal/zzbmd;->zzgsw:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmd;->zzgsu:Lcom/google/android/gms/drive/zzc;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmd;->zzgsy:Ljava/lang/Boolean;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    const/4 p2, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzbmd;->zzgsw:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
