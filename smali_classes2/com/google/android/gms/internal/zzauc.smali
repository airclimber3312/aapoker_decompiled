.class public final Lcom/google/android/gms/internal/zzauc;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzauc;",
            ">;"
        }
    .end annotation
.end field

.field private static zzefl:I

.field private static final zzefm:Lcom/google/android/gms/internal/zzauj;


# instance fields
.field private zzefn:Ljava/lang/String;

.field private zzefo:Lcom/google/android/gms/internal/zzauj;

.field public final zzefp:I

.field private zzefq:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzauc;->zzefl:I

    new-instance v0, Lcom/google/android/gms/internal/zzaud;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaud;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzauc;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/internal/zzauk;

    const-string v1, "SsbContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzauk;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzauk;->zzaq(Z)Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzauk;->zzeu(Ljava/lang/String;)Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzauk;->zzabq()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzauc;->zzefm:Lcom/google/android/gms/internal/zzauj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzauj;)V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zzauc;->zzefl:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzauc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzauj;I[B)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzauj;I[B)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    sget v0, Lcom/google/android/gms/internal/zzauc;->zzefl:I

    if-eq p3, v0, :cond_1

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaui;->zzaw(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid section type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzauc;->zzefn:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauc;->zzefo:Lcom/google/android/gms/internal/zzauj;

    iput p3, p0, Lcom/google/android/gms/internal/zzauc;->zzefp:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzauc;->zzefq:[B

    sget p1, Lcom/google/android/gms/internal/zzauc;->zzefl:I

    if-eq p3, p1, :cond_2

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaui;->zzaw(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzauc;->zzefn:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzauc;->zzefq:[B

    if-eqz p1, :cond_3

    const-string p1, "Both content and blobContent set"

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzauj;Ljava/lang/String;)V
    .locals 1

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaui;->zzet(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzauc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzauj;I[B)V

    return-void
.end method

.method public constructor <init>([BLcom/google/android/gms/internal/zzauj;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/google/android/gms/internal/zzauc;->zzefl:I

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/gms/internal/zzauc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzauj;I[B)V

    return-void
.end method

.method public static zzg([B)Lcom/google/android/gms/internal/zzauc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzauc;

    sget-object v1, Lcom/google/android/gms/internal/zzauc;->zzefm:Lcom/google/android/gms/internal/zzauj;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzauc;-><init>([BLcom/google/android/gms/internal/zzauj;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauc;->zzefn:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauc;->zzefo:Lcom/google/android/gms/internal/zzauj;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzauc;->zzefp:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzauc;->zzefq:[B

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
