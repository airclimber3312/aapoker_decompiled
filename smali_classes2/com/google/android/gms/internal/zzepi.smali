.class public final Lcom/google/android/gms/internal/zzepi;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzepi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zznsb:Ljava/lang/String;

.field private zznsc:Ljava/lang/String;

.field private zznsd:I

.field private zznse:J

.field private zznsf:Landroid/os/Bundle;

.field private zznsg:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzepj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzepj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzepi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzepi;->zznsb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzepi;->zznsc:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzepi;->zznsd:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzepi;->zznse:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzepi;->zznsf:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzepi;->zznsg:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getClickTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzepi;->zznse:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzepi;->zznsb:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzepi;->zznsc:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzepi;->zznsd:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzepi;->zznse:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzepi;->zzcdw()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzepi;->zznsg:Landroid/net/Uri;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzcb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzepi;->zznse:J

    return-void
.end method

.method public final zzcdt()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzepi;->zznsg:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzcdu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzepi;->zznsc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzcdv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzepi;->zznsd:I

    return v0
.end method

.method public final zzcdw()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzepi;->zznsf:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    return-object v0
.end method
