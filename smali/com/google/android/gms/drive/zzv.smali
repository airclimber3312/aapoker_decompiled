.class public final Lcom/google/android/gms/drive/zzv;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzgqy:Ljava/lang/String;

.field private zzgqz:I

.field private zzgra:Ljava/lang/String;

.field private zzgrb:Ljava/lang/String;

.field private zzgrc:I

.field private zzgrd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/zzv;->zzgqy:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/drive/zzv;->zzgqz:I

    iput-object p3, p0, Lcom/google/android/gms/drive/zzv;->zzgra:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/zzv;->zzgrb:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/drive/zzv;->zzgrc:I

    iput-boolean p6, p0, Lcom/google/android/gms/drive/zzv;->zzgrd:Z

    return-void
.end method

.method private static zzcr(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/zzv;

    iget-object v2, p0, Lcom/google/android/gms/drive/zzv;->zzgqy:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/zzv;->zzgqy:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/drive/zzv;->zzgqz:I

    iget v3, p1, Lcom/google/android/gms/drive/zzv;->zzgqz:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/drive/zzv;->zzgrc:I

    iget v3, p1, Lcom/google/android/gms/drive/zzv;->zzgrc:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzv;->zzgrd:Z

    iget-boolean p1, p1, Lcom/google/android/gms/drive/zzv;->zzgrd:Z

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/drive/zzv;->zzgqy:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/drive/zzv;->zzgqz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/zzv;->zzgrc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzv;->zzgrd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/drive/zzv;->zzgqz:I

    invoke-static {v0}, Lcom/google/android/gms/drive/zzv;->zzcr(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/zzv;->zzgqy:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/drive/zzv;->zzgqz:I

    invoke-static {v0}, Lcom/google/android/gms/drive/zzv;->zzcr(I)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/drive/zzv;->zzgqz:I

    :goto_1
    const/4 v4, 0x3

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget-object v5, p0, Lcom/google/android/gms/drive/zzv;->zzgra:Ljava/lang/String;

    invoke-static {p1, v0, v5, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v5, p0, Lcom/google/android/gms/drive/zzv;->zzgrb:Ljava/lang/String;

    invoke-static {p1, v0, v5, v2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/drive/zzv;->zzgrc:I

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    const/4 v0, 0x6

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzv;->zzgrd:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
