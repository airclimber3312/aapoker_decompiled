.class public Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;
.super Lcom/google/android/gms/internal/zzbgl;

# interfaces
.implements Lcom/google/android/gms/people/protomodel/zzd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzkfn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/people/protomodel/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzkfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/people/protomodel/zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/protomodel/zze;

    invoke-direct {v0}, Lcom/google/android/gms/people/protomodel/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/people/protomodel/zzc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfn:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/people/protomodel/zzd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/people/protomodel/zzd;

    invoke-interface {p0}, Lcom/google/android/gms/people/protomodel/zzd;->zzbec()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/people/protomodel/zzd;->zzbec()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/people/protomodel/zzd;->zzbec()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzbec()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzbec()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/people/protomodel/zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfo:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfn:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfo:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/people/protomodel/zza;

    iget-object v2, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/protomodel/FetchBackUpDeviceContactInfoResponseEntity;->zzkfo:Ljava/util/List;

    return-object v0
.end method
