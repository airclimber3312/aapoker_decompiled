.class public final Lcom/google/android/gms/internal/zzauj;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzauj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private weight:I

.field private zzefx:Ljava/lang/String;

.field private zzefy:Z

.field private zzefz:Z

.field private zzega:Ljava/lang/String;

.field private zzegb:[Lcom/google/android/gms/internal/zzaue;

.field private zzegc:Ljava/lang/String;

.field private zzegd:Lcom/google/android/gms/internal/zzaum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaul;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaul;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzauj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;Lcom/google/android/gms/internal/zzaum;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauj;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauj;->zzefx:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzauj;->zzefy:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzauj;->weight:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzauj;->zzefz:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzauj;->zzega:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzauj;->zzegb:[Lcom/google/android/gms/internal/zzaue;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzauj;->zzegc:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzauj;->zzegd:Lcom/google/android/gms/internal/zzaum;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauj;->name:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzefx:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzauj;->zzefy:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzauj;->weight:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzauj;->zzefz:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzega:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzegb:[Lcom/google/android/gms/internal/zzaue;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzegc:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauj;->zzegd:Lcom/google/android/gms/internal/zzaum;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
