.class public final Lcom/google/android/gms/internal/zzcdx;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcdx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzios:Ljava/lang/String;

.field private final zziot:Ljava/lang/String;

.field private final zziou:[Ljava/lang/String;

.field private final zziov:[I

.field private final zziow:I

.field private final zziox:[B

.field private final zzioy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcdy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcdy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcdx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[II[BZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdx;->zzios:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdx;->zziot:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcdx;->zziou:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcdx;->zziov:[I

    iput p5, p0, Lcom/google/android/gms/internal/zzcdx;->zziow:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcdx;->zziox:[B

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcdx;->zzioy:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdx;->zzios:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdx;->zziot:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdx;->zziou:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/zzcdx;->zziow:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdx;->zziox:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdx;->zziov:[I

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[IZ)V

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcdx;->zzioy:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
