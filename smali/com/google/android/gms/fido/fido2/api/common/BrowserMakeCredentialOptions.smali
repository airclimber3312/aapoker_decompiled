.class public Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;
.super Lcom/google/android/gms/fido/fido2/api/common/BrowserRequestOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

.field private final zzheu:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/fido/fido2/api/common/BrowserRequestOptions;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "origin scheme must be non-empty"

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string p1, "origin authority must be non-empty"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzheu:Landroid/net/Uri;

    return-void
.end method

.method public static deserializeFromBytes([B)Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbgq;->zza([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/internal/zzbgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    iget-object v3, p1, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzheu:Landroid/net/Uri;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzheu:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getChallenge()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;->getChallenge()[B

    move-result-object v0

    return-object v0
.end method

.method public getMakeCredentialOptions()Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    return-object v0
.end method

.method public getOrigin()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzheu:Landroid/net/Uri;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;->getRequestId()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutSeconds()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;->getTimeoutSeconds()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getTokenBindingIdValue()Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;->getTokenBindingIdValue()Lcom/google/android/gms/fido/fido2/api/common/TokenBindingIdValue;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzhet:Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->zzheu:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serializeToBytes()[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbgq;->zza(Lcom/google/android/gms/internal/zzbgp;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/BrowserMakeCredentialOptions;->getMakeCredentialOptions()Lcom/google/android/gms/fido/fido2/api/common/MakeCredentialOptions;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/BrowserRequestOptions;->getOrigin()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
