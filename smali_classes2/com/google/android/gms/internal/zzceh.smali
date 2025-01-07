.class public final Lcom/google/android/gms/internal/zzceh;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzceh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final splitName:Ljava/lang/String;

.field private final versionCode:I

.field private final zzgog:Ljava/lang/String;

.field private final zzipb:I

.field private final zzipc:Z

.field private final zzipd:Landroid/content/Intent;

.field private final zzipe:Landroid/content/Intent;

.field private final zzipf:Lcom/google/android/gms/internal/zzcdv;

.field private final zzipg:Lcom/google/android/gms/internal/zzcfd;

.field private final zziph:Z

.field private final zzipi:[B

.field private final zzipj:I

.field private final zzipk:[B

.field private final zzipl:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcei;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcei;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzceh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZLandroid/content/Intent;Landroid/content/Intent;Lcom/google/android/gms/internal/zzcdv;Lcom/google/android/gms/internal/zzcfd;Z[BLjava/lang/String;IILjava/lang/String;[BLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzceh;->zzipb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzceh;->zzgog:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzceh;->zzipc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzceh;->zzipd:Landroid/content/Intent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzceh;->zzipe:Landroid/content/Intent;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzceh;->zzipf:Lcom/google/android/gms/internal/zzcdv;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzceh;->zzipg:Lcom/google/android/gms/internal/zzcfd;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzceh;->zziph:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/zzceh;->zzipi:[B

    iput-object p10, p0, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/zzceh;->versionCode:I

    iput-object p13, p0, Lcom/google/android/gms/internal/zzceh;->splitName:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/internal/zzceh;->zzipj:I

    iput-object p14, p0, Lcom/google/android/gms/internal/zzceh;->zzipk:[B

    iput-object p15, p0, Lcom/google/android/gms/internal/zzceh;->zzipl:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzceh;->zzipb:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->zzgog:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzceh;->zzipc:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzceh;->zzipd:Landroid/content/Intent;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzceh;->zzipe:Landroid/content/Intent;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzceh;->zzipf:Lcom/google/android/gms/internal/zzcdv;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzceh;->zzipg:Lcom/google/android/gms/internal/zzcfd;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzceh;->zziph:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->zzipi:[B

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    const/16 p2, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->packageName:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xd

    iget v1, p0, Lcom/google/android/gms/internal/zzceh;->versionCode:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/16 p2, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->splitName:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xf

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->zzipl:Landroid/os/Bundle;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 p2, 0x10

    iget v1, p0, Lcom/google/android/gms/internal/zzceh;->zzipj:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/16 p2, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzceh;->zzipk:[B

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
