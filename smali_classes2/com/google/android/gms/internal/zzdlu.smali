.class public final Lcom/google/android/gms/internal/zzdlu;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzdlu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzlib:Ljava/lang/String;

.field public final zzlih:Lcom/google/android/gms/internal/zzdlf;

.field private zzlii:Lcom/google/android/gms/internal/zzdlf;

.field public final zzlik:Ljava/lang/String;

.field private zzlil:F

.field private zzlir:[Lcom/google/android/gms/internal/zzdlp;

.field private zzlis:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdlv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdlv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdlu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/zzdlp;Lcom/google/android/gms/internal/zzdlf;Lcom/google/android/gms/internal/zzdlf;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdlu;->zzlir:[Lcom/google/android/gms/internal/zzdlp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdlu;->zzlih:Lcom/google/android/gms/internal/zzdlf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdlu;->zzlii:Lcom/google/android/gms/internal/zzdlf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdlu;->zzlik:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzdlu;->zzlil:F

    iput-object p6, p0, Lcom/google/android/gms/internal/zzdlu;->zzlib:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzdlu;->zzlis:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdlu;->zzlir:[Lcom/google/android/gms/internal/zzdlp;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdlu;->zzlih:Lcom/google/android/gms/internal/zzdlf;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdlu;->zzlii:Lcom/google/android/gms/internal/zzdlf;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdlu;->zzlik:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/zzdlu;->zzlil:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IF)V

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdlu;->zzlib:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdlu;->zzlis:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
